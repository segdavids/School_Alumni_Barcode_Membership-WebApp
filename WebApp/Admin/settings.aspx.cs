using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.Models;

namespace WebApp.Admin
{
    public partial class settings : System.Web.UI.Page
    {
        int mid;
        public List<string> profileurllist = new List<string>();
        protected void Page_Load(object sender, EventArgs e)
        {
           // SessionCheck();
           // getquerystring();
            if (!IsPostBack)
            {
                getuser();
                //GetState();
                //GetCountry();
            }
        }

        public void SessionCheck()
        {

            if (Session["Email"] == null || Session["AdminId"] == null)
            {
                Response.Redirect("~/admin/account/login?url=" + Server.UrlEncode(Request.Url.AbsoluteUri));
            }

        }
        public void getquerystring() => mid = Convert.ToInt32(Session["AdminId"].ToString());

        public void getuser()
        {
            try
            {
                string getuser = $"select a.* from AdminUser a where AdminId={mid}";
                DataTable dt = BLL.GetRequest(getuser);
                if (dt != null)
                {
                    string firstname = string.IsNullOrEmpty(dt.Rows[0]["FirstName"].ToString()) ? "" : dt.Rows[0]["FirstName"].ToString();
                    string lastname = string.IsNullOrEmpty(dt.Rows[0]["LastName"].ToString()) ? "" : dt.Rows[0]["LastName"].ToString();
                    string email = string.IsNullOrEmpty(dt.Rows[0]["Email"].ToString()) ? "" : dt.Rows[0]["Email"].ToString();
                    firstnametxt.Value = firstname;
                    lastnametxt.Value = lastname;
                    fullnametxt.InnerHtml = firstname + " " + lastname;
                    emailadd.InnerHtml = email;
                    emailtxt.Value = email;
                    phonetxt.Value = string.IsNullOrEmpty(dt.Rows[0]["MobileNo"].ToString()) ? "" : dt.Rows[0]["MobileNo"].ToString();
                    creatextxt.Value = string.IsNullOrEmpty(dt.Rows[0]["DateCreated"].ToString()) ? "" : Convert.ToDateTime(dt.Rows[0]["DateCreated"].ToString()).ToString("yyyy-MM-dd");
                    Date1.Value = string.IsNullOrEmpty(dt.Rows[0]["LastLoginDate"].ToString()) ? "" : Convert.ToDateTime(dt.Rows[0]["LastLoginDate"].ToString()).ToString("dd-MMM-yyyy HH:mm");
                    activedll.SelectedValue = dt.Rows[0]["Active"].ToString().ToLower() == "true" ? "1" : "0";
                    string profileurlstr = string.IsNullOrEmpty(dt.Rows[0]["PictureURL"].ToString()) ? "" : dt.Rows[0]["PictureURL"].ToString();
                    profileurllist.Add(profileurlstr);
                    //.Value = ConfigurationManager.AppSettings["domainurl"] + "account/profile";
                }
            }
            catch (Exception ex)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = ex.Message;
            }

        }
        protected void Update(object sender, EventArgs e)
        {
            try
            {
                string firstname = firstnametxt.Value;
                string lastname = lastnametxt.Value;
                string phone = phonetxt.Value;
                string active = activedll.SelectedValue;

                string update = $"Update AdminUser set FirstName='{firstname}',LastName='{lastname}',MobileNo='{phone}',Active='{active}' where AdminId = {mid}";
                string resp = BLL.NonQeryRequest(update);
                switch (resp)
                {
                    case "200":
                        exceptiondiv.Visible = true;
                        exceptiondiv.Attributes.Add("class", "alert alert-success");
                        exceptiontxt.InnerText = "Admin profile updated successfully";
                        break;
                    case "400":
                        exceptiondiv.Visible = true;
                        exceptiontxt.InnerText = "Admin profile could not be updated: no changes made";
                        break;
                    default:
                        break;
                }

            }
            catch (Exception ex)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = ex.Message;
            }
        }
    }
}