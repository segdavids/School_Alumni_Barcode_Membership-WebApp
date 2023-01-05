using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.Models;

namespace WebApp.member
{
    public partial class password : System.Web.UI.Page
    {
        int memberId;
        public List<string> profileurllist = new List<string>();
        protected void Page_Load(object sender, EventArgs e)
        {
            string profileurlstr = "flat-user-icon-11.png";
            profileurllist.Add(profileurlstr);
            getsuqetrstring();
        }

        public void getsuqetrstring()
        {
            try
            {
                memberId = Convert.ToInt32(Session["UserId"].ToString());

                if (memberId != 0)
                {
                    //RENDER USER DETAILS
                    string gtusr = $"select a.*, st.StateName,ct.LocationName,rk.RankName,sp.SpecializationName from Users a left join State st on a.StateId = st.StateId left join Country ct on a.CountryId=ct.LocationId left join MemberRanking rk on a.RankId=rk.RankId left join Specialization sp on a.SpecializationId=sp.SpecializationId where MemberId={memberId}";
                    DataTable dt = BLL.GetRequest(gtusr);
                    if (dt.Rows.Count > 0)
                        Repeater1.DataSource = dt;
                        Repeater1.DataBind();

                    //Button1.Visible = false;
                    //candidateprofilediv.Visible = false;
                }
            }
            catch (Exception e)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = e.Message.ToString();
            }
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
                    string returnvalue = BLL.ChangePasswordMmber(newpw, oldpw, Session["UserId"].ToString());
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