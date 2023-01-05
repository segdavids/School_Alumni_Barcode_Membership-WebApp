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
    public partial class group_details : System.Web.UI.Page
    {
        int gid;
        string gname;
        protected void Page_Load(object sender, EventArgs e)
        {
            getquerystring();
            getgname();
            getgroupdetails();
            photogallery();
            getgroupadmin();
            getgrouppost();
        }

        public void getquerystring() => gid = Convert.ToInt32(!string.IsNullOrEmpty(Request.QueryString["gid"]) ? Request.QueryString["gid"] : 0.ToString());
        public void getgname() => gname = !string.IsNullOrEmpty(Request.QueryString["gnm"]) ? Request.QueryString["gnm"] : "";
        public void getgroupdetails()
        {
            try
            {
                groupname.InnerHtml = gname;
                string getuser = $"select a.*,d.LocationName, sum(case when e.Removed='false' then 1 else 0 end) as NumberofUsers,sum(case when c.Deleted='false' then 1 else 0 end) as NoOfPost from Groups a left join GroupEntry e on a.GroupId=e.GroupId left join GroupPost c on a.GroupId=c.GroupId left join Country d on a.CountryId=d.LocationId where a.GroupId={gid} group by a.GroupId,a.GroupName,a.Description,a.GroupEmail,a.GroupPhone,a.Active, a.DateCreated,a.DateModified,a.CountryId,d.LocationName";
                DataTable dt = BLL.GetRequest(getuser);
                if (dt != null)
                {
                    string numberofusers = string.IsNullOrEmpty(dt.Rows[0]["NumberofUsers"].ToString()) ? "0" : dt.Rows[0]["NumberofUsers"].ToString();
                    string posts = string.IsNullOrEmpty(dt.Rows[0]["NoOfPost"].ToString()) ? "0" : dt.Rows[0]["NoOfPost"].ToString();
                    grouppostnumber.InnerHtml = posts;
                    groupmembers.InnerHtml = numberofusers;
                    Repeater1.DataSource = dt;
                    Repeater1.DataBind();
                }
            }
            catch (Exception ex)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = ex.Message;
            }

        }
        public void getgroupadmin()
        {
            try
            {
                groupname.InnerHtml = gname;
                string getuser = $"select a.*,b.FirstName+ ' '+b.LastName as fullname,b.Email,b.PictureURL from GroupEntry a left join Users b on a.UserId=b.MemberId where a.GroupId={gid} and a.RoleId=3";
                DataTable dt = BLL.GetRequest(getuser);
                Repeater2.DataSource = dt;
                Repeater2.DataBind();
            }
            catch (Exception ex)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = ex.Message;
            }

        }
        public void photogallery()
        {
            try
            {
                groupname.InnerHtml = gname;
                string getuser = $"select a.*, b.TypeName from GroupPost a left join GalleryType b on a.PostTypeId=b.TypeId where a.GroupId={gid} and PostTypeId=1";
                DataTable dt = BLL.GetRequest(getuser);
                Repeater3.DataSource = dt;
                Repeater3.DataBind();
            }
            catch (Exception ex)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = ex.Message;
            }

        }
        public void getgrouppost()
        {
            try
            {
                groupname.InnerHtml = gname;
                string getuser = $"select a.*,b.FirstName + ' '+ b.LastName as Fullname, b.PictureURL from GroupPost a join Users b on a.PosterId=b.MemberId where a.GroupId={gid} and a.Deleted='false'";
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
    }
}