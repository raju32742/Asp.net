using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;
using System.Configuration;
using System.Web.Security;
public partial class success : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        
        if (!IsPostBack)
        {
            
            if( Session["UserName"] == null && Request.Cookies["Login"]==null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
               // LabelUN.Text = Request.Cookies["Login"]["UserName"].ToString();
                String ss;
                ss = Request.Cookies["Login"].Values["UserName"];
                string cs = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {

                  
                
                    SqlCommand cmd = new SqlCommand("Select * from UserInfm where UserName = '" + Request.Cookies["Login"]["UserName"].ToString() + "' ", con);

                  
                      

                      con.Open();
                      using (SqlDataReader rdr = cmd.ExecuteReader())
                     {
                            while (rdr.Read())
                         {
                           LabelUN.Text = rdr["UserName"].ToString();
                           LabelEM.Text = rdr["Email"].ToString();
                           if(rdr["User_image"].ToString().Length > 1)
                           {
                               byte[] imgByte = null;
                               imgByte = (byte[])(rdr["User_image"]);
                               string str = Convert.ToBase64String(imgByte);
                               Image1.Src = "data:Image/png;base64," + str;
                               Image2.Src = "data:Image/png;base64," + str;
                             

                           }
                           else
                           {
                               Image1.Src = "uploads/default_user.png";
                               Image2.Src= "uploads/default_user.png";
                           }

                         }
                     }
                     con.Close();
                }

                
                Response.ClearHeaders();
                Response.AddHeader("Cache-Control", "no-cache,no-store,max-age=0,must-revalidate");
                Response.AddHeader("Pragma", "no-cache");

            }
        }

    }




    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        HttpCookie myCookie = new HttpCookie("Login");
        myCookie.Expires = DateTime.Now.AddMinutes(-1);
        Response.Cookies.Add(myCookie);
        Response.Redirect("Login.aspx");
    }
    protected void Profile1_Click(object sender, EventArgs e)
    {
        Response.Redirect("User.aspx");
    }
}