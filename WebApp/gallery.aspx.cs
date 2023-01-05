using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.Models;

namespace WebApp
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



       
    }
}