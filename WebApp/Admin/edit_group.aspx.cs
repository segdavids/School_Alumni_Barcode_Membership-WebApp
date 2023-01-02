using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.Models;

namespace WebApp.Admin
{
    public partial class edit_group : System.Web.UI.Page
    {
        int gid = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            getquerystring();
            if (!IsPostBack)
            {
                getuser();
               
            }
        }

        public void getquerystring() => gid = Convert.ToInt32(!string.IsNullOrEmpty(Request.QueryString["gid"]) ? Request.QueryString["gid"] : 0.ToString());

        public void getuser()
        {
            try
            {
                string getuser = $"select * from Groups where GroupId={gid}";
                DataTable dt = BLL.GetRequest(getuser);
                if (dt != null)
                {
                    string groupname = string.IsNullOrEmpty(dt.Rows[0]["GroupName"].ToString()) ? "" : dt.Rows[0]["GroupName"].ToString();
                    string aboutgroup = string.IsNullOrEmpty(dt.Rows[0]["Description"].ToString()) ? "" : dt.Rows[0]["Description"].ToString();
                     activedll.SelectedValue = dt.Rows[0]["Active"].ToString().ToLower() == "true" ? "1" : "0";
                    firstnametxt.Value = groupname;
                    abouttxt.Value = aboutgroup;
                    
                }
            }
            catch (Exception ex)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = ex.Message;
            }

        }

        protected void Update(object sender, EventArgs e)
        {
            try
            {
                string groupname = firstnametxt.Value;
                string aboutgroup = abouttxt.Value;
                string active = activedll.SelectedValue;

                string update = $"Update Groups set GroupName='{groupname}',Description='{aboutgroup}',Active='{active}' where GroupId = {gid}";
                string resp = BLL.NonQeryRequest(update);
                switch (resp)
                {
                    case "200":
                        exceptiondiv.Visible = true;
                        exceptiondiv.Attributes.Add("class", "alert alert-success");
                        exceptiontxt.InnerText = "Group info updated successfully";
                        break;
                    case "400":
                        exceptiondiv.Visible = true;
                        exceptiontxt.InnerText = "Group info could not be updated: no changes made";
                        break;
                    default:
                        break;
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