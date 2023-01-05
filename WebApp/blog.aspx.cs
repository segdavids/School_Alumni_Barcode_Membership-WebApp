using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.Models;

namespace WebApp
{
    public partial class blog : System.Web.UI.Page
    {
        public List<string> tags = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            getcount();
            
                getblogdetails();
        }


        public void getblogdetails()
        {
            try
            {
                string fetch = $"select a.*, sum(case when e.Deleted='false' then 1 else 0 end) as NoOfComment from BlogPosts a left join BlogComments e on a.BlogId=e.BlogId where a.Deleted = 'false' group by a.BlogId,a.AuthorId,a.PostDate,a.PostTitle,a.PostContent,a.Tags,a.ThumbnailURL,a.Deleted,a.DateDeleted";
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

        public void getcount()
        {
            try
            {
                string fetch = $"select count(*) as counter from BlogPosts where Deleted in ('False')";
                DataTable dt = BLL.GetRequest(fetch);
                noofpost.InnerHtml = dt.Rows[0]["counter"].ToString();
            }
            catch (Exception e)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = e.ToString();
            }
        }


        protected void Repeater1_ItemCreated(object sender, RepeaterItemEventArgs e)
        {
            if ((e.Item.ItemType == ListItemType.Item) || (e.Item.ItemType == ListItemType.AlternatingItem))
            {
                RepeaterItem item = e.Item;

                //  DataRow dr = (item.DataItem as DataRowView).Row;
                DataRowView drView = e.Item.DataItem as DataRowView;
                if (drView != null)
                {
                    string tagstr = (drView["Tags"].ToString());
                    tags = tagstr.Split(',').ToList();
                }
            }

        }

        protected void Delete_Blog(object sender, EventArgs e)
        {
            try
            {
                RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
                int BlogId = int.Parse((item.FindControl("entrytxt") as System.Web.UI.WebControls.Label).Text);
                string activate = $"update BlogPosts set Deleted='true' where BlogId={BlogId}";
                string resp = BLL.NonQeryRequest(activate);
                switch (resp)
                {
                    case "200":
                        getblogdetails();
                        exceptiondiv.Visible = true;
                        exceptiondiv.Attributes.Add("class", "alert alert-success");
                        exceptiontxt.InnerText = "BlogPost deleted successfully";
                        break;
                    case "400":
                        getblogdetails();
                        exceptiondiv.Visible = true;
                        exceptiontxt.InnerText = "BlogPost could not be deleted: no changes made";
                        break;
                    default:
                        getblogdetails();
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