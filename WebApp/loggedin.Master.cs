using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.Models;

namespace WebApp
{
    public partial class loggedin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            featuredmemeber();
        }

        public void featuredmemeber()
        {
            Repeater1.DataSource = BLL.GetRequest("select top 5 * from Users order by NEWID()");
            Repeater1.DataBind();
        }
    }
}