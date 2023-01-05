using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.Models;

namespace WebApp.home
{
    public partial class _default : System.Web.UI.Page
    {
        int mid;
       
        public List<groupmemberdt> all6 = new List<groupmemberdt>();
        public List<groupmemberdt> all5 = new List<groupmemberdt>();
        public class groupmemberdt
        {
            public int UserId { get; set; }
            public string Fullname { get; set; }
            public string Nickname { get; set; }
            public string PictureURL { get; set; }
            public string Instagram { get; set; }
            public string Facebook { get; set; }
            public string Twitter { get; set; }
            public int Team { get; set; }
        }
        public List<string> tags = new List<string>();
        protected void Page_Load(object sender, EventArgs e)
        {
            getmembers();
            getgroups();
            getblogs();
        }

        public void getmembers()
        {
            try
            {
                string get = $"select top 6 *,ROW_NUMBER() OVER( ORDER BY MemberId ) AS 'rownumber' from Users order by NEWID()";
                DataTable dt = BLL.GetRequest(get);
                all6 = (from DataRow dr in dt.Rows
                        select new groupmemberdt()
                        {
                            UserId = Convert.ToInt32(dr["MemberId"]),
                            Fullname = dr["FirstName"].ToString() + " " + dr["LastName"].ToString(),
                            Nickname = dr["Nickname"].ToString(),
                            PictureURL = dr["PictureURL"].ToString(),
                            Instagram = dr["Instagram"].ToString(),
                            Facebook = dr["Facebook"].ToString(),
                            Twitter = dr["Twitter"].ToString(),
                            Team = Convert.ToInt32(dr["rownumber"].ToString()),
                        }).ToList();
                if (all6.Count < 6)
                {
                    groupmemberdt addup = new groupmemberdt();
                    for (int i = all6.Count; i >= 6; i++)
                    {
                        
                        addup.UserId = 0;
                        addup.Fullname = $"Member {i}";
                        addup.Nickname = "";
                        addup.Facebook = "";
                        addup.Instagram = "";
                        addup.Twitter = "";
                        addup.PictureURL = "flat-user-icon-11.png";
                        addup.Team = i;
                        all6.Add(addup);
                    }
                   
                }
                for (int i = 1; i >= all6.Count; i++)
                {
                    all5.Add(all6[i]);
                }
            }
            catch (Exception ex)
            {

            }

        }
        public void getgroups()
        {
            try
            {
              
                    //RENDER USER DETAILS
                    string gtusr = $"select a.GroupId,a.GroupName, sum(case when e.Removed='false' then 1 else 0 end) as NumberofUsers from Groups a left join GroupEntry e on a.GroupId=e.GroupId left join GroupPost c on a.GroupId=c.GroupId group by a.GroupId,a.GroupName";
                    DataTable dt = BLL.GetRequest(gtusr);
                    if (dt.Rows.Count > 0)
                        Repeater1.DataSource = dt;
                        Repeater1.DataBind();

            }
            catch (Exception e)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = e.Message.ToString();
            }
        }

        public void getblogs()
        {
            try
            {

                //RENDER USER DETAILS
                string fetch = $" select a.*, sum(case when e.Deleted='false' then 1 else 0 end) as NoOfComment, c.FirstName + ' '+ c.LastName as authorname,c.PictureURL from BlogPosts a left join BlogComments e on a.BlogId=e.BlogId left join Users c on a.AuthorId = c.MemberId group by a.BlogId,a.AuthorId,a.PostDate,a.PostTitle,a.PostContent,a.Tags,a.ThumbnailURL,a.Deleted,a.DateDeleted,c.FirstName,c.LastName,c.PictureURL";
                DataTable dt = BLL.GetRequest(fetch);
                if (dt.Rows.Count > 0)
                    Repeater2.DataSource = dt;
                Repeater2.DataBind();

            }
            catch (Exception e)
            {
                exceptiondiv.Visible = true;
                exceptiontxt.InnerHtml = e.Message.ToString();
            }
            
        }
        protected void Repeater2_ItemCreated(object sender, RepeaterItemEventArgs e)
        {
            if ((e.Item.ItemType == ListItemType.Item) || (e.Item.ItemType == ListItemType.AlternatingItem))
            {
                RepeaterItem item = e.Item;

                //  DataRow dr = (item.DataItem as DataRowView).Row;
                DataRowView drView = e.Item.DataItem as DataRowView;
                if (drView != null)
                {
                    string tagstr = (drView["Tags"].ToString());
                    tags = tagstr.Split(',').ToList();
                }
            }

        }
    }
}