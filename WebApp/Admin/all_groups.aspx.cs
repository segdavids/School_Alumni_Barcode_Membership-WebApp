using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using WebApp.Models;

namespace WebApp.Admin
{
    public partial class groups : System.Web.UI.Page
    {
         DataTable grpdt;
        public List<groupmemberdt> studentList = new List<groupmemberdt>();
        public class groupmemberdt
        {
            public int UserId { get; set; }
            public string Fullname { get; set; }
            public string PictureURL { get; set; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getgroups();
            }
        }
        public void getgroups()
        {
            try
            {
                string fetch = $"select a.GroupName,a.GroupId,a.Description, sum(case when e.Removed='false' then 1 else 0 end) as NumberofUsers from Groups a left join GroupEntry e on a.GroupId=e.GroupId group by a.GroupId,a.GroupName,a.Description";
                DataTable dt = BLL.GetRequest(fetch);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
            catch (Exception e)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = e.ToString();
            }
        }
        protected void Repeater1_ItemCreated(object sender, RepeaterItemEventArgs e)
        {
            bool status;
            if ((e.Item.ItemType == ListItemType.Item) || (e.Item.ItemType == ListItemType.AlternatingItem))
            {
                RepeaterItem item = e.Item;

                //  DataRow dr = (item.DataItem as DataRowView).Row;
                DataRowView drView = e.Item.DataItem as DataRowView;
                if (drView != null)
                {
                    string groupid = (drView["GroupId"].ToString());
                    string get = $"select a.UserId, b.FirstName + ' '+ b.LastName as Fullname, b.PictureURL from GroupEntry a join Users b on a.UserId=b.MemberId where a.GroupId={groupid}";
                    grpdt = BLL.GetRequest(get);
                    
                    studentList = (from DataRow dr in grpdt.Rows
                                   select new groupmemberdt()
                                   {
                                       UserId = Convert.ToInt32(dr["UserId"]),
                                       Fullname = dr["Fullname"].ToString(),
                                       PictureURL = dr["PictureURL"].ToString(),

                                   }).ToList();
                }
            }

        }
    }
}