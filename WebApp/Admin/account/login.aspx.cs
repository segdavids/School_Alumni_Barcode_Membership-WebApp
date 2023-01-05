using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.Models;

namespace WebApp.Admin
{
    public partial class login : System.Web.UI.Page
    {
        string ReturnUrl;
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["BarcodeAppDB"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Email"] = null;
            ReturnUrl = Convert.ToString(Request.QueryString["url"]);

            if (ReturnUrl == null)
            {
                if (Session["URLRedirect"] == null)
                {
                    ReturnUrl = "/admin/account/profile";
                }
                else
                {
                    ReturnUrl = Session["URLRedirect"].ToString();
                    Session["URLRedirect"] = null;
                }
            }      
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                //int userId = 0;
                string emailid = emailtxt.Value.Trim();
                string passkey = passwordtxt.Value.Trim();

                DateTime timeofreg = DateTime.Now;

                //CHECK TO CONFIRM THAT USER DOES NOT ALREADY EXIST
                conn.Open();

                SqlCommand authcheck = new SqlCommand("select * from AdminUser where Email=@Email and Password=@password", conn);
                SqlDataReader rd;
                authcheck.Parameters.AddWithValue("@Email", emailid);
                authcheck.Parameters.AddWithValue("@password", passkey);
                rd = authcheck.ExecuteReader();
                int count = 0;
                while (rd.Read())
                {
                    count += 1;
                }
                rd.Close();
                if (count == 0)
                {
                    exceptiondiv.Visible = true;
                    exceptiontxt.InnerHtml = "Login failed: invalid email or password";
                }

                else if (count == 1)
                {
                    string firstname ="";
                    string lastname ="";
                    int activationtatus = 0;
                    int userId = 0;
                    string fullname = "";
                    DateTime date = DateTime.Now; 
                    DateTime lastlogin=date;    

                    rd = authcheck.ExecuteReader();
                    while (rd.Read())
                    {
                         firstname = rd["FirstName"] == DBNull.Value ? "" : rd["FirstName"].ToString();
                         lastname = rd["LastName"] == DBNull.Value ? "" : rd["LastName"].ToString();
                         activationtatus = Convert.ToInt32(rd["Active"]);
                         userId = Convert.ToInt32(rd["AdminId"]);
                         fullname = firstname + " " + lastname;
                         lastlogin = rd["LastLoginDate"] == DBNull.Value ? Convert.ToDateTime("00:00:00") : Convert.ToDateTime(rd["LastLoginDate"]);
                         date = DateTime.Now; // 
                    }
                    rd.Close();
                        if (activationtatus == 1)
                        {
                            string get = $"Update AdminUser set LastLoginDate='{date}' WHERE email='{emailid}'";
                        BLL.NonQeryRequest(get);

                            //Candidate.AuditTrail(activityType, emailid, DateTime.Now);
                            Session["UserId"] = userId;
                            Session["Email"] = emailid;
                            Session["LastName"] = lastname;
                            Session["LastLogin"] = lastlogin.ToString("dd/MM/yyyy HH:mm");
                            // Session["lastlogin"] = lastlogs;
                            // Task another =  SendMail.Execute(emailid, firstname,"New Login","You just logged in to your NYSC Portal");
                            // ReturnUrl = Convert.ToString(Request.QueryString["url"]);

                            ClientScript.RegisterStartupScript(GetType(), "JavaScript", " setTimeout(function ref() { location.href = '" + ReturnUrl + "'; }, 200);", true);
                            Response.AddHeader("REFRESH", "0;URL=" + ReturnUrl + "");
                            //   Response.Redirect("~/account/Overview/");
                        }
                        else
                        {
                            exceptiondiv.Visible = true;
                            exceptiontxt.InnerHtml = "Login failed: Admin account is inactive";
                            // alert.InnerHtml = "Failed!" + exception.ToString() + "";
                        }
                    }

            }
            catch (Exception exception)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = "Login failed:" + exception.ToString() + "";
            }
        }

    }
}