using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.Models;

namespace WebApp.Admin
{
    public partial class add_member : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetState();
                GetCountry();
                GetRanking();
                GetSpecialization();
                GetTitle();
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
        public void GetTitle()
        {
            if (!IsPostBack)
            {
                string query = "select * from Titles";
                BLL.BindDropDownList(titltedll, query, "TitleName", "TitleId"/*, "Select Status"*/);
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
        protected void AddMemmber(object sender, EventArgs e)
        {
            try
            {
                string url = Guid.NewGuid().ToString();
                string password = Guid.NewGuid().ToString();
                string title = titltedll.SelectedValue;
                string firstname = firstnametxt.Value;
                string lastname = lastnametxt.Value;
                string phone = phonetxt.Value;
                string nickname = nicknametxt.Value;
                string country = countrydll.SelectedValue;
                string state = statedll.SelectedValue;
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
                string email = emailtxt.Value;             
                string active = "1";

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
                    }
                }

                string update = $"if EXISTS (Select * from Users where Email='{email}') BEGIN Update Users set TitleId='{title}',FirstName='{firstname}',LastName='{lastname}',Phone='{phone}',NickName='{nickname}',CountryId='{country}',StateId='{state}',DOB='{dob}',Active='{active}',About='{about}',NextOfKin='{nok}',NOKPhone='{nokphone}',RankId='{ranking}',SpecializationId='{specialization}',Movies='{movies}',Books='{books}',Hobby='{hobby}',Facebook='{fb}',Twitter='{twite}',Instagram='{ig}',PictureURL='{OriginalFileName}' where Email = '{email}' END ELSE BEGIN Insert into Users (MemberUniqueId,TitleId,FirstName,LastName,Email,Password,Phone,NickName,CountryId,StateId,DOB,Active,About,NextOfKin,NOKPhone,RankId,SpecializationId,Movies,Books,Hobby,Facebook,Twitter,Instagram,PictureURL) values('{url}','{title}','{firstname}','{lastname}','{email}','{password}','{phone}','{nickname}','{country}','{state}','{dob}','{active}','{about}','{nok}','{nokphone}','{ranking}','{specialization}','{movies}','{books}','{hobby}','{fb}','{twite}','{ig}','{OriginalFileName}') END";
                string resp = BLL.NonQeryRequest(update);
                switch (resp)
                {
                    case "200":
                        FileUpload1.PostedFile.SaveAs(AdrelativePath + OriginalFileName);
                        exceptiondiv.Visible = true;
                        exceptiondiv.Attributes.Add("class", "alert alert-success");
                        exceptiontxt.InnerText = "Member profile added successfully";
                        break;
                    case "400":
                        exceptiondiv.Visible = true;
                        exceptiontxt.InnerText = "Member profile could not be added: no changes made";
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