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
    public partial class members : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            fetchusers();
            GetGroupAdmin();getgroups();
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

        public void GetGroupAdmin()
        {
            try
            {
                string fetch = $"select top 5 a.*,b.FirstName+ ' '+b.LastName as fullname,b.Email,b.PictureURL from GroupEntry a left join Users b on a.UserId=b.MemberId where a.RoleId=3 and b.Deleted in ('False') order by NEWID()";
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
    }
}