using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.Models;

namespace WebApp.member
{
    public partial class profile : System.Web.UI.Page
    {
        string mid ;
        public List<string> profileurllist = new List<string>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] == null || Session["UserId"] == null)
            {
                Response.Redirect("~/member/login?url=" + Server.UrlEncode(Request.Url.AbsoluteUri));
            }
            else
            {
                getquerystring();
                getsuqetrstring();
            }

           
            if (!IsPostBack)
            {
                getuser();
                GetState();
                GetCountry();
                GetRanking();
                GetSpecialization();
            }
        }

        
        public void getquerystring() => mid = Session["UserId"].ToString();

        public void getsuqetrstring()
        {
            try
            {
               

                if (mid != "0")
                {
                    //RENDER USER DETAILS
                    string gtusr = $"select a.*, st.StateName,ct.LocationName,rk.RankName,sp.SpecializationName from Users a left join State st on a.StateId = st.StateId left join Country ct on a.CountryId=ct.LocationId left join MemberRanking rk on a.RankId=rk.RankId left join Specialization sp on a.SpecializationId=sp.SpecializationId where MemberId={mid}";
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
        public void getuser()
        {
            try
            {
                string getuser = $"select a.*, st.StateName,ct.LocationName from Users a left join State st on a.StateId = st.StateId left join Country ct on a.CountryId=ct.LocationId where MemberId={mid}";
                DataTable dt = BLL.GetRequest(getuser);
                if (dt != null)
                {
                    string firstname = string.IsNullOrEmpty(dt.Rows[0]["FirstName"].ToString()) ? "" : dt.Rows[0]["FirstName"].ToString();
                    string lastname = string.IsNullOrEmpty(dt.Rows[0]["LastName"].ToString()) ? "" : dt.Rows[0]["LastName"].ToString();
                    string email = string.IsNullOrEmpty(dt.Rows[0]["Email"].ToString()) ? "" : dt.Rows[0]["Email"].ToString();
                    string profileurlstr = string.IsNullOrEmpty(dt.Rows[0]["PictureURL"].ToString()) ? "" : dt.Rows[0]["PictureURL"].ToString();
                    profileurllist.Add(profileurlstr);
                    firstnametxt.Value = firstname;
                    lastnametxt.Value = lastname;
                   
                    emailtxt.Value = email;
                    phonetxt.Value = string.IsNullOrEmpty(dt.Rows[0]["Phone"].ToString()) ? "" : dt.Rows[0]["Phone"].ToString();
                    dobtxt.Value = string.IsNullOrEmpty(dt.Rows[0]["DOB"].ToString()) ? "" : Convert.ToDateTime(dt.Rows[0]["DOB"].ToString()).ToString("yyyy-MM-dd");
                    nicknametxt.Value = string.IsNullOrEmpty(dt.Rows[0]["NickName"].ToString()) ? "" : dt.Rows[0]["NickName"].ToString();
                    statedll.SelectedValue = string.IsNullOrEmpty(dt.Rows[0]["StateId"].ToString()) ? "1" : dt.Rows[0]["StateId"].ToString();
                    countrydll.SelectedValue = string.IsNullOrEmpty(dt.Rows[0]["CountryId"].ToString()) ? "1" : dt.Rows[0]["CountryId"].ToString();
                    noktxt.Value = string.IsNullOrEmpty(dt.Rows[0]["NextOfKin"].ToString()) ? "" : dt.Rows[0]["NextOfKin"].ToString();
                    nokphonetxt.Value = string.IsNullOrEmpty(dt.Rows[0]["NOKPhone"].ToString()) ? "" : dt.Rows[0]["NOKPhone"].ToString();
                    activedll.SelectedValue = dt.Rows[0]["Active"].ToString().ToLower() == "true" ? "1" : "0";
                    rankdll.SelectedValue = string.IsNullOrEmpty(dt.Rows[0]["RankId"].ToString()) ? "1" : dt.Rows[0]["RankId"].ToString();
                    specializationdll.SelectedValue = string.IsNullOrEmpty(dt.Rows[0]["SpecializationId"].ToString()) ? "1" : dt.Rows[0]["SpecializationId"].ToString();
                    moviestxt.Value = string.IsNullOrEmpty(dt.Rows[0]["Movies"].ToString()) ? "" : dt.Rows[0]["Movies"].ToString();
                    bookstxt.Value = string.IsNullOrEmpty(dt.Rows[0]["Books"].ToString()) ? "" : dt.Rows[0]["Books"].ToString();
                    hobbytxt.Value = string.IsNullOrEmpty(dt.Rows[0]["Hobby"].ToString()) ? "" : dt.Rows[0]["Hobby"].ToString();
                    facebooktxt.Value = string.IsNullOrEmpty(dt.Rows[0]["Facebook"].ToString()) ? "" : dt.Rows[0]["Facebook"].ToString();
                    twittertxt.Value = string.IsNullOrEmpty(dt.Rows[0]["Twitter"].ToString()) ? "" : dt.Rows[0]["Twitter"].ToString();
                    igtxt.Value = string.IsNullOrEmpty(dt.Rows[0]["Instagram"].ToString()) ? "" : dt.Rows[0]["Instagram"].ToString();
                    abouttxt.Value = string.IsNullOrEmpty(dt.Rows[0]["About"].ToString()) ? "" : dt.Rows[0]["About"].ToString();


                }
            }
            catch (Exception ex)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = ex.Message;
            }

        }

        public void GetState()
        {
            if (!IsPostBack)
            {
                string query = "select * from State";
                BLL.BindDropDownList(statedll, query, "StateName", "StateId"/*, "Select Status"*/);
            }
        }
        public void GetRanking()
        {
            if (!IsPostBack)
            {
                string query = "select * from MemberRanking";
                BLL.BindDropDownList(rankdll, query, "RankName", "RankId"/*, "Select Status"*/);
            }
        }
        public void GetSpecialization()
        {
            if (!IsPostBack)
            {
                string query = "select * from Specialization";
                BLL.BindDropDownList(specializationdll, query, "SpecializationName", "SpecializationId"/*, "Select Status"*/);
            }
        }

        public void GetCountry()
        {
            if (!IsPostBack)
            {
                string query = "select * from Country";
                BLL.BindDropDownList(countrydll, query, "LocationName", "LocationId"/*, "Select Status"*/);
            }
        }

        protected void Update(object sender, EventArgs e)
        {
            try
            {
                string update = String.Empty;
                string firstname = firstnametxt.Value;
                string lastname = lastnametxt.Value;
                string phone = phonetxt.Value;
                string nickname = nicknametxt.Value;
                string country = countrydll.SelectedValue;
                string state = statedll.SelectedValue;
                string active = activedll.SelectedValue;
                string dob = dobtxt.Value;
                string about = abouttxt.Value;
                string nok = noktxt.Value;
                string nokphone = nokphonetxt.Value;
                string ranking = rankdll.SelectedValue;
                string specialization = specializationdll.SelectedValue;
                string movies = moviestxt.Value;
                string books = bookstxt.Value;
                string hobby = hobbytxt.Value;
                string fb = facebooktxt.Value;
                string twite = twittertxt.Value;
                string ig = igtxt.Value;
                string OriginalFileName = "";
                string extension = "";
                string absolutedirectory = "";
                string AdrelativePath = Server.MapPath("~/media/userimages/");
                if (FileUpload1.HasFile)
                {
                    BLL.FileUpload1 fs = new BLL.FileUpload1();
                    fs.filetypes = new List<string>() { "jpg", "png", "jpeg" };
                    fs.filesize = 5000;
                    string us = fs.UploadUserFile(FileUpload1.PostedFile);
                    if (us == "200")
                    {
                        OriginalFileName = FileUpload1.PostedFile.FileName.ToString();
                        extension = Path.GetExtension(FileUpload1.PostedFile.FileName).Substring(1).ToLower();
                        absolutedirectory = AdrelativePath + OriginalFileName;
                        FileUpload1.PostedFile.SaveAs(AdrelativePath + OriginalFileName);
                    }
                
                 update = $"Update Users set FirstName='{firstname}',LastName='{lastname}',Phone='{phone}',NickName='{nickname}',CountryId='{country}',StateId='{state}',DOB='{dob}',Active='{active}',About='{about}',NextOfKin='{nok}',NOKPhone='{nokphone}',RankId='{ranking}',SpecializationId='{specialization}',Movies='{movies}',Books='{books}',Hobby='{hobby}',Facebook='{fb}',Twitter='{twite}',Instagram='{ig}',PictureURL='{OriginalFileName}' where MemberId = {mid}";
                }
                else
                {
                    update = $"Update Users set FirstName='{firstname}',LastName='{lastname}',Phone='{phone}',NickName='{nickname}',CountryId='{country}',StateId='{state}',DOB='{dob}',Active='{active}',About='{about}',NextOfKin='{nok}',NOKPhone='{nokphone}',RankId='{ranking}',SpecializationId='{specialization}',Movies='{movies}',Books='{books}',Hobby='{hobby}',Facebook='{fb}',Twitter='{twite}',Instagram='{ig}' where MemberId = {mid}";

                }
                string resp = BLL.NonQeryRequest(update);
                switch (resp)
                {
                    case "200":
                        
                        exceptiondiv.Visible = true;
                        exceptiondiv.Attributes.Add("class", "alert alert-success");
                        exceptiontxt.InnerText = "Member profile updated successfully";
                        break;
                    case "400":
                        exceptiondiv.Visible = true;
                        exceptiontxt.InnerText = "Member profile could not be updated: no changes made";
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