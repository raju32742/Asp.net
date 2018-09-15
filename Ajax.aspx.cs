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

public partial class Ajax: System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         if (!IsPostBack)
            {

                string css = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(css))
                {

                    SqlCommand cmd1 = new SqlCommand("Select * from UserInfm where UserName = '" + Request.Cookies["Login"]["UserName"].ToString() + "' ", conn);

                    conn.Open();
                    using (SqlDataReader rd = cmd1.ExecuteReader())
                    {
                        while (rd.Read())
                        {
                            LabelUN.Text = rd["UserName"].ToString();                      
                            LabelDV.Text = rd["Division"].ToString();
                            if (rd["User_image"].ToString().Length > 1)
                            {
                                byte[] imgByte = null;
                                imgByte = (byte[])(rd["User_image"]);
                                string str = Convert.ToBase64String(imgByte);
                                Image1.Src = "data:Image/png;base64," + str;
                               


                            }
                            else
                            {
                                Image1.Src = "uploads/default_user.png";

                            }

                        }
                    }
                    conn.Close();

                }

            } 
                  
    }

    
    protected void Button1_Click(object sender, EventArgs e)
    {
        //nothing
    }
}