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


public partial class AboutMe : System.Web.UI.Page
{
     String ss,name,sss;

     protected void Page_Load(object sender, EventArgs e)
     {
      

         if (Request.Cookies["Login"] != null)
         {

             ss = Request.Cookies["Login"].Values["UserName"];
             string cs = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
             using (SqlConnection con = new SqlConnection(cs))
             {
                 con.Open();
                 SqlCommand cmd = new SqlCommand("Select * from UserInfm where UserName = '" + Request.Cookies["Login"]["UserName"].ToString() + "' ", con);


                 using (SqlDataReader rd = cmd.ExecuteReader())
                 {
                     while (rd.Read())
                     {

                         // LabelFN.Text = rd["FirstName"].ToString() + " " + rd["LastName"].ToString();


                         byte[] imgByte4 = null;
                         imgByte4 = (byte[])(rd["User_image"]);
                         string str = Convert.ToBase64String(imgByte4);
                         User_image.Src = "data:Image/png;base64," + str;

                        name = rd["FirstName"].ToString() + " " + rd["LastName"].ToString();
                     
                     }


                 }
                 con.Close();
             }
         }
         else
         {
             User_image.Src = "../uploads/default_user.png";
         }
         CommentsBind();

     }
    
     protected void btnCommentPublish_Click(object sender, EventArgs e)
     {


         if (Request.Cookies["Login"] != null)
         {
             string cs = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
             SqlConnection con = new SqlConnection(cs);


             SqlCommand cmd = new SqlCommand("spAboutComment", con);
             cmd.CommandType = CommandType.StoredProcedure;
             cmd.Parameters.AddWithValue("@UserName", ss);
             cmd.Parameters.AddWithValue("@CommentMessage", txtComment.Text);
             con.Open();
             cmd.ExecuteNonQuery();
             con.Close();
         }
         else
         {
             ScriptManager.RegisterClientScriptBlock(this, GetType(), "mykey", "f2()", true);
         }
         //call CommentsBind Method
         CommentsBind();
     }


     protected void LinkButton1_Click(object sender, EventArgs e)
     {
         sss = (sender as LinkButton).Text;
       
       


          if (ss == null)
          {
              ScriptManager.RegisterClientScriptBlock(this, GetType(), "mykey", "f2()", true);

          }

          if (ss != null)
          {
             

            
            
                  string cs = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
                  using (SqlConnection con = new SqlConnection(cs))
                  {
                      con.Open();
                      SqlCommand cmd = new SqlCommand("Delete from AboutComment where UserName = '" + sss.ToString() + "' ", con);
                      cmd.ExecuteNonQuery();
                      con.Close();
                  
                  }
              }


            

            
          }
         








     private void CommentsBind()
     {
         string cs = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
         SqlConnection con = new SqlConnection(cs);
         SqlCommand cmd = new SqlCommand("spGetAboutCommentssss", con);
         cmd.CommandType = CommandType.StoredProcedure;
         cmd.Connection = con;


         try
         {
             con.Open();
             GridViewComment.DataSource = cmd.ExecuteReader();
             GridViewComment.DataBind();
         }
         catch (Exception ex)
         {
             throw ex;
         }
         finally
         {
             con.Close();

         }
     }

     protected void Button1_Click(object sender, EventArgs e)
     {
         if (Request.Cookies["Login"] != null)
         {
             Response.Redirect("success.aspx");
         }
         else
         {

             Response.Redirect("index.aspx");
         }
     }
    
}