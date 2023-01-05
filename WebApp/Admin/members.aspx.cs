using LumenWorks.Framework.IO.Csv;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.Models;

namespace WebApp.Admin
{
    public partial class members : System.Web.UI.Page
    {
        public class uploadparams
        {
            public string FirstName { get; set; }
            public string LastName { get; set; }
            public string MemberUniqueId { get; set; }
            public string DOB { get; set; }
            public string Email { get; set; }
            public string NickName { get; set; }
            public string Phone { get; set; }
            public string About { get; set; }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fetchusers();
            }

        }

        protected void Download_profile(object sender, EventArgs e)
        {
            try
            {

            }
            catch (Exception ex)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = ex.Message;
            }
        }

        public void fetchusers()
        {
            try
            {
                string fetch = $"select a.*,c.LocationName CountryName from Users a left join Country c on a.CountryId=c.LocationId where a.Deleted not in ('True')";
                DataTable dt = BLL.GetRequest(fetch);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
            catch (Exception e)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = e.ToString();
            }
        }

        protected void activate_user(object sender, EventArgs e)
        {
            try
            {
                RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
                int MemberId = int.Parse((item.FindControl("entrytxt") as Label).Text);
                string activate = $"update Users set Active='true' where MemberId={MemberId}";
                string resp = BLL.NonQeryRequest(activate);
                switch (resp)
                {
                    case "200":
                        fetchusers();
                        exceptiondiv.Visible = true;
                        exceptiondiv.Attributes.Add("class", "alert alert-success");
                        exceptiontxt.InnerText = "Member Activated successfully";
                        break;
                    case "400":
                        fetchusers();
                        exceptiondiv.Visible = true;
                        exceptiontxt.InnerText = "Member account could not be activated: no changes made";
                        break;
                    default:
                        fetchusers();
                        break;
                }
            }
            catch (Exception ex)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = ex.Message;
            }
        }

        protected void deactivate_user(object sender, EventArgs e)
        {
            try
            {
                RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
                int MemberId = int.Parse((item.FindControl("entrytxt") as Label).Text);
                string activate = $"update Users set Active='false' where MemberId={MemberId}";
                string resp = BLL.NonQeryRequest(activate);
                switch (resp)
                {
                    case "200":
                        fetchusers();
                        exceptiondiv.Visible = true;
                        exceptiondiv.Attributes.Add("class", "alert alert-success");
                        exceptiontxt.InnerText = "Member deactivated successfully";
                        break;
                    case "400":
                        fetchusers();
                        exceptiondiv.Visible = true;
                        exceptiontxt.InnerText = "Member account could not be deactivated: no changes made";
                        break;
                    default:
                        fetchusers();
                        break;
                }
            }
            catch (Exception ex)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = ex.Message;
            }
        }

        protected void Repeater1_ItemCreated(object sender, RepeaterItemEventArgs e)
        {

            bool status;
            if ((e.Item.ItemType == ListItemType.Item) || (e.Item.ItemType == ListItemType.AlternatingItem))
            {
                RepeaterItem item = e.Item;

                //  DataRow dr = (item.DataItem as DataRowView).Row;
                DataRowView drView = e.Item.DataItem as DataRowView;
                if (drView != null)
                {
                    status = Convert.ToBoolean(drView["Active"]);
                    switch (status)
                    {
                        case true:
                            item.FindControl("deactivtaeuser").Visible = true;
                            break;
                        case false:
                            item.FindControl("activateuser").Visible = true;
                            break;
                        default:
                            break;

                    }

                }
            }
        }

        protected void add_member_clk(object sender, EventArgs e)
        {

        }

        protected void download_temp(object sender, EventArgs e)
        {
            string doctype = "Upload_Template.csv";
            string filePath = Server.MapPath(string.Format("~/Template/{0}", doctype));
            Response.ContentType = "text/csv";
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + doctype);
            Response.WriteFile(filePath);
            Response.End();
        }

        protected void upload_member_clk(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[8] {
                        new DataColumn("MemberUniqueId", typeof(string)),
                        new DataColumn("FirstName", typeof(string)),
                        new DataColumn("LastName", typeof(string)),
                        new DataColumn("DOB", typeof(string)),
                        new DataColumn("Email", typeof(string)),
                        new DataColumn("NickName", typeof(string)),
                        new DataColumn("Phone", typeof(string)),
                        new DataColumn("About", typeof(string)),
                        //new DataColumn("State", typeof(string)),

                });
            string memberuniqueId = string.Empty;
            try
            {
                int count = 0;
                int failcount = 0;
                if (!FileUpload2.HasFile)
                {
                    Response.Write("<script>alert('No file attached! ');</script>");
                }
                else if (FileUpload2.HasFile)
                {
                    string excelPath = Server.MapPath("~/uploads/") + Path.GetFileName(FileUpload2.PostedFile.FileName);
                    FileUpload2.SaveAs(excelPath);

                    string conString = string.Empty;
                    string extension = Path.GetExtension(FileUpload2.PostedFile.FileName);
                    if (extension != ".csv")
                    {
                        Response.Write("<script>alert('Only .csv files are allowed ');</script>");
                    }
                    else
                    {
                        var csvTable = new DataTable();
                        using (var csvReader = new CsvReader(new StreamReader(System.IO.File.OpenRead(excelPath)), true))
                        {
                            csvTable.Load(csvReader);
                            List<uploadparams> searchParameters = new List<uploadparams>();
                            for (int i = 0; i < csvTable.Rows.Count; i++)
                            {
                                memberuniqueId = new Guid().ToString();

                                searchParameters.Add(new uploadparams { MemberUniqueId = memberuniqueId, FirstName = csvTable.Rows[i][0].ToString(), LastName = csvTable.Rows[i][1].ToString(), DOB = (csvTable.Rows[i][2].ToString()), Email = csvTable.Rows[i][3].ToString(), NickName = csvTable.Rows[i][4].ToString(), Phone = csvTable.Rows[i][5].ToString(), About = csvTable.Rows[i][6].ToString() });
                            }
                            foreach (DataRow row in csvTable.Rows) // FOR EACH ROW IN CSV
                            {

                                string firstname = row["FirstName"].ToString(); //FOR EACH COORDINATE
                                string lastname = row["LastName"].ToString(); //FOR EACH COORDINATE
                                string password = new Guid().ToString();
                                string email = row["Email"].ToString();
                                string dob = row["DOB"].ToString();
                                string about = row["About"].ToString();
                                string nickname = row["NickName"].ToString();
                                string phone = row["Phone"].ToString();
                                DateTime created = DateTime.Now;
                                int activated = 1;
                                string update = $"Insert into Users (MemberUniqueId,FirstName,LastName,Email,Password,Phone,NickName,DOB,Active,About, DateCreated) values('{memberuniqueId}','{firstname}','{lastname}','{email}','{password}','{phone}','{nickname}','{dob}','{activated}','{about}','{created}')";
                                string resp = BLL.NonQeryRequest(update);
                                switch (resp)
                                {
                                    case "200":
                                        count = count + 1;
                                        break;
                                    case "400":
                                        failcount = failcount + 1;
                                        break;
                                    default:
                                        break;
                                }
                            }
                            exceptiondiv.Visible = true;
                            exceptiondiv.Attributes.Add("class", "alert alert-success");
                            exceptiontxt.InnerHtml = $"Upload complete: <br> {count} Members uploaded successfully. <br>{failcount} failed to upload";

                        }
                    }

                }
            }
            catch (Exception ex)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = ex.Message.ToString();
            }
        }

        //protected void filteractive(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        switch (activechkbx.Checked)
        //        {
        //            case true:

        //                break;
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        exceptiondiv.Visible = true;
        //        exceptiontxt.InnerHtml = ex.Message;
        //    }
        //}

        //protected void filterinactive(object sender, EventArgs e)
        //{
        //    string query;
        //    try
        //    {
        //        // int conditioncount = 0;
        //        query = $"select * from Users where Email is not null";

        //        string condition1 = string.Empty;
        //        string condition2 = string.Empty;
        //        condition1 += activechkbx.Checked == true ? string.Format("'{0}',", "true") : string.Format("'{0}',", "false");
        //        condition2 += inactivechkbx.Checked == true ? string.Format("'{0}',", "false") : string.Format("'{0}',", "true");
        //        if (!string.IsNullOrEmpty(condition1))
        //        {
        //            condition1 = string.Format(" AND Active IN ({0})", condition1.Substring(0, condition1.Length - 1));
        //        }
        //        if (!string.IsNullOrEmpty(condition2))
        //        {
        //            condition2 = string.Format(" OR Active IN ({0})", condition2.Substring(0, condition2.Length - 1));
        //        }
        //        string finalquery = query + condition1 + condition2;
        //        Repeater1.DataSource = BLL.GetRequest(finalquery);
        //        Repeater1.DataBind();
        //    }
        //    catch (Exception ex)
        //    {
        //        exceptiondiv.Visible = true;
        //        exceptiontxt.InnerHtml = ex.Message;
        //    }
        //}

    }
}