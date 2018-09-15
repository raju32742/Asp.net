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
public partial class registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            // nothing
        }
    }

  public void TextBoxPASS_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int temp = 0;
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from UserInfm where UserName='" + TextBoxUN.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            temp = Convert.ToInt32(com.ExecuteScalar().ToString());

            if (temp > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "mykey", "f1()", true);
               
            }

            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error" + ex.ToString());
        }


        if (temp == 0)
        {
            try
            {
                HttpPostedFile postedFile = FileUpload1.PostedFile;
                string filename = Path.GetFileName(postedFile.FileName);
                string fileExtension = Path.GetExtension(filename);
                int fileSize = postedFile.ContentLength;
                if(fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".gif"
                || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".bmp"|| fileExtension.ToLower() =="jpeg")
               
                {

                    Stream stream = postedFile.InputStream;
                    BinaryReader binaryReader = new BinaryReader(stream);
                    Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);

                    string cs = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(cs))
                    {
                        FileUpload1.SaveAs(Server.MapPath("uploads//" + FileUpload1.FileName));

                        SqlCommand cmd = new SqlCommand("spUserInfms", con);
                        cmd.CommandType = CommandType.StoredProcedure;


                        cmd.Parameters.AddWithValue("@FN", TextBoxFN.Text);
                        cmd.Parameters.AddWithValue("@LN", TextBoxLN.Text);
                        cmd.Parameters.AddWithValue("@UN", TextBoxUN.Text);
                        cmd.Parameters.AddWithValue("@EM", TextBoxEM.Text);
                        cmd.Parameters.AddWithValue("@DV", TextBoxDV.SelectedItem.ToString());
                        cmd.Parameters.AddWithValue("@BD", TextBoxBirth.Text);
                        
                        cmd.Parameters.AddWithValue("@MN", TextBoxPhon.Text);
                        cmd.Parameters.AddWithValue("@PA", TextBoxPASS.Text);

                        SqlParameter paramImageData = new SqlParameter()
                       {
                           ParameterName = "@User_image",
                           Value = bytes
                       };
                        cmd.Parameters.Add(paramImageData);

                        con.Open();
                        cmd.ExecuteNonQuery();
                        ScriptManager.RegisterClientScriptBlock(this, GetType(), "mykey", "f2()", true);
                        con.Close();


                    }
                }
           

            }
            catch (Exception ex)
            {
                Response.Write("Error" + ex.ToString());
            }
        }
    }

}
