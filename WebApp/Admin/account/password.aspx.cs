﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.Models;

namespace WebApp.Admin.account
{
    public partial class password : System.Web.UI.Page
    {
        public List<string> profileurllist = new List<string>();
        protected void Page_Load(object sender, EventArgs e)
        {
            string profileurlstr = "flat-user-icon-11.png";
            profileurllist.Add(profileurlstr);
        }

        protected void Reset_Password(object sender, EventArgs e)
        {
            try
            {
                string oldpw = currentpwtxt.Value.ToString().Trim();
                string newpw = newpasswordtxt.Value.ToString().Trim();
                string confirmpw = confirmpasswordtxt.Value.ToString().Trim();
               
                if (confirmpw != newpw)
                {
                    exceptiondiv.Visible = true;
                    exceptiontxt.InnerHtml = "New paswords do not match";
                }
                else
                {
                    string returnvalue = BLL.ChangePassword(newpw, oldpw, Session["UserId"].ToString());
                    switch (returnvalue)
                    {
                        case "200":
                            exceptiondiv.Visible = true;
                            exceptiondiv.Attributes.Add("class", "alert alert-success");
                            exceptiontxt.InnerHtml = "Password successfully changed";
                            //ClientScript.RegisterStartupScript(GetType(), "JavaScript", "javascript:successchangedpw();", true);
                            break;
                        case "404":
                            exceptiondiv.Visible = true;
                            exceptiontxt.InnerHtml = "Wrong 'old password' supplied";
                            break;
                        default:
                            exceptiondiv.Visible = true;
                            exceptiontxt.InnerHtml = returnvalue.ToString();
                            break;
                    }
                }
            }
            catch (Exception ex)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = ex.ToString();
            }
        }
    }
}