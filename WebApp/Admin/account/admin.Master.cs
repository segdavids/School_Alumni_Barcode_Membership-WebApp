using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.Models;

namespace WebApp.Admin.account
{
    public partial class admin : System.Web.UI.MasterPage
    {
        SqlConnection sc = new SqlConnection(ConfigurationManager.ConnectionStrings["BarcodeAppDB"].ConnectionString);
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

            if (Session["Email"] == null || Session["UserId"] == null)
            {
                Response.Redirect("~/admin/account/login?url=" + Server.UrlEncode(Request.Url.AbsoluteUri));
            }
            else
            {
                featuredmemeber();
            }
        }

      

      

        public void featuredmemeber()
        {
            Repeater1.DataSource = BLL.GetRequest("select top 5 * from Users order by NEWID()");
            Repeater1.DataBind();
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

        protected void Repeater1_ItemCreated(object sender, RepeaterItemEventArgs e)
        {
            bool status;
            if ((e.Item.ItemType == ListItemType.Item) || (e.Item.ItemType == ListItemType.AlternatingItem))
            {
                RepeaterItem item = e.Item;

                //  DataRow dr = (item.DataItem as DataRowView).Row;
                DataRowView drView = e.Item.DataItem as DataRowView;
                //if (drView != null)
                //{
                //    status = Convert.ToBoolean(drView["Active"].ToString());
                //    switch (status)
                //    {
                //        case true:
                //            (item.FindControl("activelabel") as Label).Visible = true;
                //            break;
                //        case false:
                //            (item.FindControl("inactivelabel") as Label).Visible = true;
                //            break;
                //        default:
                //            break;
                //    }
                //}
            }

        }
    }
}