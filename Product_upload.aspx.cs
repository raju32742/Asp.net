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

public partial class _Default : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           //nothing
          
        }

    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {


         

            string Co = string.Empty;
            string Au = string.Empty;

            if (condition.SelectedItem.Value == "0")
            {

                Co = "Used";
            }
            else
            {
                Co = "New";
            }


            if (Authenticity.SelectedItem.Value == "0")
            {

                Au = "Original";
            }
            else
            {
                Au = "Replica / Clone";
            }





          // ------------------------for image1---------------------------------//
            HttpPostedFile postedFile = FileUpload1.PostedFile;
            string filename = Path.GetFileName(postedFile.FileName);
            string fileExtension = Path.GetExtension(filename);
            int fileSize = postedFile.ContentLength; 


        //--------------------------for image2------------------------------------//
            HttpPostedFile postedFile2 = FileUpload2.PostedFile;
            string filename2 = Path.GetFileName(postedFile2.FileName);
            string fileExtension2 = Path.GetExtension(filename2);
            int fileSize2 = postedFile2.ContentLength;

         //--------------------for image3----------------------------------------// 

            HttpPostedFile postedFile3 = FileUpload3.PostedFile;
            string filename3 = Path.GetFileName(postedFile3.FileName);
            string fileExtension3 = Path.GetExtension(filename3);
            int fileSize3 = postedFile3.ContentLength;


            if ((fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".gif"
                || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".bmp" || fileExtension.ToLower() == ".jpeg")
                && (fileExtension2.ToLower() == ".jpg" || fileExtension2.ToLower() == ".gif"
                || fileExtension2.ToLower() == ".png" || fileExtension2.ToLower() == ".bmp" || fileExtension2.ToLower() == ".jpeg")
                && (fileExtension3.ToLower() == ".jpg" || fileExtension3.ToLower() == ".gif"
                || fileExtension3.ToLower() == ".png" || fileExtension3.ToLower() == ".bmp" || fileExtension3.ToLower() == ".jpeg") 
                )
            {
                //----------------------for image1-------------------------//
                Stream stream = postedFile.InputStream;
                BinaryReader binaryReader = new BinaryReader(stream);
                Byte[] bytes = binaryReader.ReadBytes((int)stream.Length); 


                //----------------------for image2-------------------------//
                Stream stream2 = postedFile2.InputStream;
                BinaryReader binaryReader2 = new BinaryReader(stream2);
                Byte[] bytes2 = binaryReader2.ReadBytes((int)stream2.Length);


                //----------------------for image3-------------------------//
                Stream stream3 = postedFile3.InputStream;
                BinaryReader binaryReader3 = new BinaryReader(stream3);
                Byte[] bytes3 = binaryReader3.ReadBytes((int)stream3.Length);

                String username;
                username = Request.Cookies["Login"].Values["UserName"];
              


                string cs = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                   FileUpload1.SaveAs(Server.MapPath("image//" + FileUpload1.FileName));
                    FileUpload2.SaveAs(Server.MapPath("image//" + FileUpload2.FileName));
                    FileUpload3.SaveAs(Server.MapPath("image//" + FileUpload3.FileName));

                    SqlCommand cmd = new SqlCommand("spProductss", con);

                   

                    cmd.CommandType = CommandType.StoredProcedure;

                   

                    // for Product table  //
                    cmd.Parameters.AddWithValue("@Catagory", TextBoxCa.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@Title", TextBoxTitle.Text);
                    cmd.Parameters.AddWithValue("@Price", TextBoxPri.Text);
                    cmd.Parameters.AddWithValue("@UserName", username);   
                
                 
                   

                   SqlParameter paramImageData = new SqlParameter()
                    {
                        ParameterName = "@ImageData",
                        Value = bytes
                    };
                    cmd.Parameters.Add(paramImageData);

                    SqlParameter paramNewId = new SqlParameter()
                    {
                        ParameterName = "@NewId",
                        Value = -1,
                        Direction = ParameterDirection.Output
                    };
                    cmd.Parameters.Add(paramNewId);
                    con.Open();
                    cmd.ExecuteNonQuery();



                    // for Product_desciption table  //
                    SqlCommand cmd1 = new SqlCommand("spProduct_detail", con);
                    cmd1.CommandType = CommandType.StoredProcedure;



                    cmd1.Parameters.AddWithValue("@Location", TextBoxLo.SelectedItem.ToString());
                    cmd1.Parameters.AddWithValue("@Condition", Co);
                    cmd1.Parameters.AddWithValue("@Description", TextBoxDes.Text);
                    cmd1.Parameters.AddWithValue("@Brand", TextBoxBrand.Text);
                    cmd1.Parameters.AddWithValue("@Model", TextBoxMo.Text);
                    cmd1.Parameters.AddWithValue("@Authenticity", Au);
                    SqlParameter paramImageData2 = new SqlParameter()
                    {
                        ParameterName = "@ImageData2",
                        Value = bytes2
                    };
                    cmd1.Parameters.Add(paramImageData2);


                    SqlParameter paramImageData3 = new SqlParameter()
                    {
                        ParameterName = "@ImageData3",
                        Value = bytes3
                    };
                    cmd1.Parameters.Add(paramImageData3);                
                    cmd1.ExecuteNonQuery();
                    ScriptManager.RegisterClientScriptBlock(this, GetType(), "mykey", "f2()", true);
                    con.Close();
                 
                
                }
            }
            else
            {

                ScriptManager.RegisterClientScriptBlock(this, GetType(), "mykey", "f1()", true);
             
            }
        }

    }
   