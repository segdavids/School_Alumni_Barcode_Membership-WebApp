using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.Models;

namespace WebApp.Admin
{
    public partial class manage_state : System.Web.UI.Page
    {
        public List<string> profileurllist = new List<string>();
        protected void Page_Load(object sender, EventArgs e)
        {
            string profileurlstr = "flat-user-icon-11.png";
            profileurllist.Add(profileurlstr);
            if (!IsPostBack)
            {
                gettitle();
            }
        }

        public void gettitle()
        {
            try
            {
                string get = $"select * from State";
                Repeater1.DataSource = BLL.GetRequest(get);
                Repeater1.DataBind();
            }
            catch (Exception ex)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = ex.Message;
            }
        }

        protected void Update(object sender, EventArgs e)
        {
            //Find the reference of the Repeater Item.
            RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
            int TitleId = int.Parse((item.FindControl("entrytxt") as Label).Text);
            string TitleName = (item.FindControl("TextBox1") as TextBox).Text;
            string query = "update State set StateName='" + TitleName + "' where StateId = " + TitleId + "";
            string StatusCode = BLL.NonQeryRequest(query);
            switch (StatusCode)
            {
                case "200":
                    gettitle();
                    exceptiondiv.Visible = true;
                    exceptiondiv.Attributes.Add("class", "alert alert-success");
                    exceptiontxt.InnerHtml = "State updated successfully";

                    break;
                default:
                    gettitle();
                    exceptiondiv.Visible = true;
                    exceptiontxt.InnerHtml = StatusCode.ToString();
                    break;
            }
        }
        protected void add_member(object sender, EventArgs e)
        {
            try
            {
                string RankName = ranknametxt.Value;

                string query = $"IF EXISTS (select * from State where StateName='{RankName}') BEGIN update State set StateName='{RankName}' where StateName='{RankName}' END ELSE BEGIN insert into State values('{RankName}') END";
                string StatusCode = BLL.NonQeryRequest(query);
                switch (StatusCode)
                {
                    case "200":
                        gettitle();
                        exceptiondiv.Visible = true;
                        exceptiondiv.Attributes.Add("class", "alert alert-success");
                        exceptiontxt.InnerHtml = "State added successfully";
                        break;
                    default:
                        gettitle();
                        exceptiondiv.Visible = true;
                        exceptiontxt.InnerHtml = StatusCode.ToString();
                        break;
                }

            }
            catch (Exception ex)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = ex.ToString();
            }
        }
        protected void Edit(object sender, EventArgs e)
        {
            //Find the reference of the Repeater Item.
            RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
            (item.FindControl("editbutton") as LinkButton).Visible = false;
            (item.FindControl("titleidlbl") as Label).Visible = false;
            (item.FindControl("TextBox1") as TextBox).Visible = true;
            (item.FindControl("updatebtn") as LinkButton).Visible = true;

        }

    }
}