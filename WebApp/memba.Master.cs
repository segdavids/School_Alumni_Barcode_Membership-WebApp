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
    public partial class memba : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] == null || Session["UserId"] == null)
            {
                Response.Redirect("~/admin/account/login?url=" + Server.UrlEncode(Request.Url.AbsoluteUri));
            }
            else
            {
                featuredmemeber();
                getuserid();
            }
        }

        public void featuredmemeber()
        {
            Repeater1.DataSource = BLL.GetRequest("select top 5 * from Users order by NEWID()");
            Repeater1.DataBind();
        }
        public void getuserid()
        {
            DataTable dt = BLL.GetRequest($"select FirstName from Users where MemberId={Session["UserId"]}");
            userfullnamespan.InnerHtml = dt.Rows[0]["FirstName"].ToString();
        }



    }
}