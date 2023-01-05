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
    public partial class newsfeed : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getmembers();
            getgroups();
            getcount();
            getgrouppost();
        }

        public void getmembers()
        {
            try
            {
                string fetch = $"select top 4 b.MemberId,b.FirstName+ ' '+b.LastName as fullname,b.Email,b.PictureURL from Users b where b.Deleted in ('False') order by NEWID()";
                DataTable dt = BLL.GetRequest(fetch);
                Repeater2.DataSource = dt;
                Repeater2.DataBind();
            }
            catch (Exception e)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = e.ToString();
            }
        }

        public void getgroups()
        {
            try
            {
                string fetch = $"select TOP 3 a.GroupId,a.GroupName, sum(case when e.Removed='false' then 1 else 0 end) as NumberofUsers from Groups a left join GroupEntry e on a.GroupId=e.GroupId left join GroupPost c on a.GroupId=c.GroupId group by a.GroupId,a.GroupName order by NEWID()";
                DataTable dt = BLL.GetRequest(fetch);
                Repeater3.DataSource = dt;
                Repeater3.DataBind();
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
                string fetch = $"select count(*) as counter from Users where Deleted in ('False')";
                DataTable dt = BLL.GetRequest(fetch);
                totalmembers.InnerHtml = dt.Rows[0]["counter"].ToString();
            }
            catch (Exception e)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = e.ToString();
            }
        }

        public void getgrouppost()
        {
            try
            {
                string getuser = $"select a.*,b.FirstName + ' '+ b.LastName as Fullname, b.PictureURL,g.GroupName from GroupPost a left join Users b on a.PosterId=b.MemberId left join Groups g on a.GroupId=g.GroupId where a.Deleted='false'";
                DataTable dt = BLL.GetRequest(getuser);
                Repeater4.DataSource = dt;
                Repeater4.DataBind();
            }
            catch (Exception ex)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = ex.Message;
            }

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            if (Session["UserId"] == null)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = "Only logged in members can comment on Blog Posts";
            }
        }

        protected void PostComment(object sender, EventArgs e)
        {
            try
            {
                if (Session["UserId"] == null)
                {
                    exceptiondiv.Visible = true;
                    exceptiontxt.InnerHtml = "Only logged in members can comment on Posts";
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
                            getgrouppost();
                            exceptiondiv.Visible = true;
                            exceptiondiv.Attributes.Add("class", "alert alert-success");
                            exceptiontxt.InnerText = "Comment added successfully";
                            break;
                        case "400":
                            getgrouppost();
                            exceptiondiv.Visible = true;
                            exceptiontxt.InnerText = "Comment could not be added: no changes made";
                            break;
                        default:
                            getgrouppost();
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
            if (Session["UserId"] == null)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = "Only logged in members can comment on Blog Posts";
            }
        }
        protected void surprise(object sender, EventArgs e)
        {
            if (Session["UserId"] == null)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = "Only logged in members can comment on Blog Posts";
            }
        }
        protected void love(object sender, EventArgs e)
        {
            if (Session["UserId"] == null)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = "Only logged in members can comment on Blog Posts";
            }
        }
        protected void cry(object sender, EventArgs e)
        {
            if (Session["UserId"] == null)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = "Only logged in members can comment on Blog Posts";
            }
        }
        protected void laugh(object sender, EventArgs e)
        {
            if (Session["UserId"] == null)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = "Only logged in members can comment on Blog Posts";
            }
        }
        protected void angry(object sender, EventArgs e)
        {
            if (Session["UserId"] == null)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = "Only logged in members can comment on Blog Posts";
            }
        }
    }
}