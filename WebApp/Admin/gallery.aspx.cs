using System;
using System.Collections.Generic;
using System.ComponentModel.Design;
using System.Configuration;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.Models;
using static WebApp.Admin.groups;

namespace WebApp.Admin
{
    public partial class gallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getgalleryitems();
            getcounts();
        }

        public void getcounts()
        {
            try
            {
                string getuser = $"select sum(case when deleted = 'false' and TypeId=1 then 1 else 0 end) as photocount, sum(case when deleted = 'false' and TypeId=2 then 1 else 0 end) as videocount from Gallery";
                DataTable dt = BLL.GetRequest(getuser);
                string noofimg = string.IsNullOrEmpty(dt.Rows[0]["photocount"].ToString()) ? "0" : dt.Rows[0]["photocount"].ToString();
                string noofvid = string.IsNullOrEmpty(dt.Rows[0]["videocount"].ToString()) ? "0" : dt.Rows[0]["videocount"].ToString();
                imahgescount.InnerHtml = noofimg;
                videocount.InnerHtml = noofvid;

            }
            catch (Exception ex)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = ex.Message;
            }

        }

        protected void DeleteItem(object sender, EventArgs e)
        {
            try
            {
                RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
                int GalleryId = int.Parse((item.FindControl("entrytxt") as Label).Text);
                string activate = $"update Gallery set Deleted='true' where ItemId={GalleryId}";
                string resp = BLL.NonQeryRequest(activate);
                switch (resp)
                {
                    case "200":
                        getgalleryitems();
                        exceptiondiv.Visible = true;
                        exceptiondiv.Attributes.Add("class", "alert alert-success");
                        exceptiontxt.InnerText = "Item deleted successfully";
                        break;
                    case "400":
                        getgalleryitems();
                        exceptiondiv.Visible = true;
                        exceptiontxt.InnerText = "Item could not be deleted: no changes made";
                        break;
                    default:
                        getgalleryitems();
                        break;
                }
            }
            catch (Exception ex)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = ex.Message;
            }
        }
        public void getgalleryitems()
        {
            try
            {
                string getuser = $"select* from Gallery where TypeId in ('2' , '1') and Deleted='false'";
                DataTable dt = BLL.GetRequest(getuser);
                Repeater3.DataSource = dt;
                Repeater3.DataBind();
            }
            catch (Exception ex)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = ex.Message;
            }

        }



        protected void AddItem(object sender, EventArgs e)
        {
            try
            {
                string AdrelativePath = Server.MapPath("~/media/gallery/");
                string uploaderid = Session["UserId"] ==null? "0": Session["UserId"].ToString();
                string typeid = typedll.SelectedValue; ;
                //string AdcombinedPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, AdrelativePath);
                //string Adname = adnametxt.Value.ToString();

                BLL.FileUpload1 fs = new BLL.FileUpload1();
                fs.filetypes = new List<string>() { "jpg", "png", "mp4", "avi", "mkv","jpeg" };
                fs.filesize = 10000;//Convert.ToInt32(dt.Rows[0]["MaxSizeKb"].ToString());
                string us = fs.UploadUserFile(FileUpload1.PostedFile);
                if (us == "200")
                {
                    string OriginalFileName = FileUpload1.PostedFile.FileName.ToString();
                    string extension = Path.GetExtension(FileUpload1.PostedFile.FileName).Substring(1).ToLower();
                    string absolutedirectory = AdrelativePath + OriginalFileName;
                    string get = $"insert into Gallery(ItemLocation,UploaderId,TypeId,DateUploaded) values('{OriginalFileName}','{uploaderid}','{typeid}','{DateTime.Now}')";
                    string StatCode = BLL.NonQeryRequest(get);


                    switch (StatCode)
                    {
                        case "200":
                            FileUpload1.PostedFile.SaveAs(AdrelativePath + OriginalFileName);
                            exceptiondiv.Visible = true;
                            exceptiondiv.Attributes.Add("class", "alert alert-success");
                            exceptiontxt.InnerText = "Gallery photo added successfully";
                            FileUpload1.Attributes.Clear();
                            getgalleryitems();
                            break;
                        case "400":
                            exceptiondiv.Visible = true;
                            exceptiondiv.Attributes.Add("class", "alert alert-success"); 
                            exceptiondiv.InnerHtml = "No change was made";
                            FileUpload1.Attributes.Clear();
                            getgalleryitems();
                            break;
                        default:
                            exceptiondiv.Visible = true;
                            exceptiontxt.InnerHtml = StatCode.ToString();
                            FileUpload1.Attributes.Clear();
                            break;
                    }

                }
                else
                {
                    exceptiondiv.Visible = true;
                    exceptiontxt.InnerHtml = us.ToString();
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