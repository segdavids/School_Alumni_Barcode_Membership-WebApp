using Antlr.Runtime.Misc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static QRCoder.PayloadGenerator;
using WebApp.Models;

namespace WebApp.Admin
{
    public partial class add_group : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            string title = firstnametxt.Value;
            string desc = abouttxt.Value;
            string status = "true";
            try
            {
                string update = $"if EXISTS (Select * from Groups where GroupName='{title}') BEGIN Update Groups set GroupName='{title}',Description='{desc}',DateModified='{DateTime.Now}' where GroupName='{title}' END ELSE BEGIN Insert into Groups (GroupName,DateCreated,Description,Active) values('{title}','{DateTime.Now}','{desc}','{status}') END";
                string resp = BLL.NonQeryRequest(update);
                switch (resp)
                {
                    case "200":
                        exceptiondiv.Visible = true;
                        exceptiondiv.Attributes.Add("class", "alert alert-success");
                        exceptiontxt.InnerText = "Group created successfully";
                        break;
                    case "400":
                        exceptiondiv.Visible = true;
                        exceptiontxt.InnerText = "Group could not be added: no changes made";
                        break;
                    default:
                        break;
                }
            }
            catch(Exception ex)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = e.ToString();
            }
        }
    }
}