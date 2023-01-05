using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.Models;

namespace WebApp.Admin
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
                Repeater3.DataSource=dt;
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
    }
}