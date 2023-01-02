using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static WebApp.Admin.groups;
using WebApp.Models;
using System.Text.RegularExpressions;

namespace WebApp.Admin
{
    public partial class blog_details : System.Web.UI.Page
    {
        int bid;
        public List<string> tags = new List<string>();
        protected void Page_Load(object sender, EventArgs e)
        {
            getquerystring();
            getblogdetails();
            getotherblog();


        }

        public void getquerystring() => bid = Convert.ToInt32(!string.IsNullOrEmpty(Request.QueryString["bid"]) ? Request.QueryString["bid"] : 0.ToString());

        public void getblogdetails()
        {
            try
            {
                string fetch = $" select a.*, sum(case when e.Deleted='false' then 1 else 0 end) as NoOfComment, c.FirstName + ' '+ c.LastName as authorname,c.PictureURL from BlogPosts a left join BlogComments e on a.BlogId=e.BlogId left join Users c on a.AuthorId = c.MemberId where a.BlogId ={bid} group by a.BlogId,a.AuthorId,a.PostDate,a.PostTitle,a.PostContent,a.Tags,a.ThumbnailURL,a.Deleted,a.DateDeleted,c.FirstName,c.LastName,c.PictureURL";
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

        public void getotherblog()
        {
            try
            {
                string get = $"select a.*, sum(case when e.Deleted='false' then 1 else 0 end) as NoOfComment from BlogPosts a left join BlogComments e on a.BlogId=e.BlogId where a.Deleted = 'false' and a.BlogId not in ('{bid}') group by a.BlogId,a.AuthorId,a.PostDate,a.PostTitle,a.PostContent,a.Tags,a.ThumbnailURL,a.Deleted,a.DateDeleted";
                DataTable dt = BLL.GetRequest(get);
                Repeater2.DataSource = dt;
                Repeater2.DataBind();
            }
            catch (Exception ex)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = ex.Message;
            }
        }
        protected void Repeater2_ItemCreated(object sender, RepeaterItemEventArgs e)
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
        protected void PostComment(object sender, EventArgs e)
        {
            try
            {
                if (Session["UserId"] == null)
                {
                    exceptiondiv.Visible = true;
                    exceptiontxt.InnerHtml = "Only logged in members can comment on Blog Posts";
                }

                else
                {
                    RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
                    int BlogId = int.Parse((item.FindControl("entrytxt") as Label).Text);
                    string fullname = (item.FindControl("nametxt") as TextBox).Text;
                    string comment = (item.FindControl("messagetxt") as TextBox).Text;
                    string insertis = $"insert into BlogComments (BlogId,CommenterId,CommentDate,Deleted,CommentContent) values('{BlogId}','{Session["UserId"].ToString()}','{DateTime.Now}','false','{comment}')";
                    string resp = BLL.NonQeryRequest(insertis);
                    switch (resp)
                    {
                        case "200":
                            getblogdetails();
                            exceptiondiv.Visible = true;
                            exceptiondiv.Attributes.Add("class", "alert alert-success");
                            exceptiontxt.InnerText = "Comment added successfully";
                            break;
                        case "400":
                            getblogdetails();
                            exceptiondiv.Visible = true;
                            exceptiontxt.InnerText = "Comment could not be added: no changes made";
                            break;
                        default:
                            getblogdetails();
                            break;
                    }
                }
        
            }
            catch (Exception ex)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = ex.Message;
            }
        }

        protected void like(object sender, EventArgs e)
        {

        }
        protected void surprise(object sender, EventArgs e)
        {

        }
        protected void love(object sender, EventArgs e)
        {

        }
        protected void cry(object sender, EventArgs e)
        {

        }
        protected void laugh(object sender, EventArgs e)
        {

        }
        protected void angry(object sender, EventArgs e)
        {

        }
    }
}