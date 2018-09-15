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

public partial class User: System.Web.UI.Page
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
                            LabelEM.Text = rd["Email"].ToString();
                            LabelDV.Text = rd["Division"].ToString();
                            LabelMB.Text = rd["MobileNo"].ToString();
                            LabelPA.Text = rd["Password"].ToString();
                           
                            LabelBD.Text = rd["BirthDay"].ToString();  
                         LabelFN.Text = rd["FirstName"].ToString() + " " + rd["LastName"].ToString();

                            if (rd["User_image"].ToString().Length > 1)
                            {
                                byte[] imgByte = null;
                                imgByte = (byte[])(rd["User_image"]);
                                string str = Convert.ToBase64String(imgByte);
                                Image1.Src = "data:Image/png;base64," + str;
                                Image2.Src = "data:Image/png;base64," + str;


                            }
                            else
                            {
                                Image1.Src = "uploads/default_user.png";

                            }

                        }
                    }

                }

            }
        

    }
  
  
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Product_upload.aspx");
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        Response.Redirect("success.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserPersonalProdt.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Ajax.aspx");
    }
}