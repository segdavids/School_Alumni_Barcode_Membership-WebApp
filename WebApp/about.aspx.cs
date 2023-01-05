using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.Models;

namespace WebApp
{
    public partial class about : System.Web.UI.Page
    {
        public List<groupmemberdt> all6 = new List<groupmemberdt>();
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
        protected void Page_Load(object sender, EventArgs e)
        {
            getmembers();
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
               
            }
            catch (Exception ex)
            {

            }

        }
    }
}