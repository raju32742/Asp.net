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

public partial class product_des : System.Web.UI.Page
{
    int ss;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

           

            string productId = Request.QueryString["ID"];

            

            if (productId == null)
            {
                Response.Redirect("Product.aspx");
            }
            string cs = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                byte[] imgByte = null;
                byte[] imgByte2 = null;
                byte[] imgByte3 = null;
               
                SqlCommand cmd = new SqlCommand("spGetProductDeta", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter parameter = new SqlParameter("@ID", productId);
                cmd.Parameters.Add(parameter);
                con.Open();
                using (SqlDataReader rdr = cmd.ExecuteReader())
                {
                    while (rdr.Read())
                    {

                        ss = Convert.ToInt32(rdr["Id"]);

                        lblID.Text = rdr["Id"].ToString();                 
                        lblCatagory.Text = rdr["Catagory"].ToString();
                        lblPrice.Text = rdr["Price"].ToString();
                        lblCondition.Text = rdr["Condition"].ToString();
                        lblBrand.Text = rdr["Brand"].ToString();
                        lblDescription.Text = rdr["Description"].ToString();
                        lblModel.Text = rdr["Model"].ToString();
                        lblAuthenticity.Text = rdr["Authenticity"].ToString();
                        lblFullName.Text = rdr["FirstName"].ToString() + " " + rdr["LastName"].ToString();
                        lblEmail.Text = rdr["Email"].ToString();
                        lblMoN.Text = rdr["MobileNo"].ToString();
                        lblLocation.Text = rdr["Location"].ToString();
                        lblTitle.Text = rdr["Title"].ToString();

                        
                        //----------------------------- for image1-----------------------//
                      
                         imgByte = (byte[])(rdr["ImageData"]);
                         string str = Convert.ToBase64String(imgByte);
                         ImgTest.Src = "data:Image/png;base64," + str;



                        //----------------------------- for image2-----------------------//
                       
                        imgByte2 = (byte[])(rdr["ImageData2"]);
                        string str2 = Convert.ToBase64String(imgByte2);
                        imageTest2.Src = "data:Image/png;base64," + str2;


                        //----------------------------- for image3-----------------------//

                        imgByte3 = (byte[])(rdr["ImageData3"]);
                        string str3 = Convert.ToBase64String(imgByte3);
                        imageTest3.Src = "data:Image/png;base64," + str3;

                     
                        //------------------------for image1--------------------------//       

                      
                   
                    }
                }


                SqlCommand cmd1 = new SqlCommand("Select * from UserInfm where UserName = '" + Request.Cookies["Login"]["UserName"].ToString() + "' ", con);

            
                    using (SqlDataReader rd = cmd1.ExecuteReader())
                    {
                        while (rd.Read())
                        {

                            // LabelFN.Text = rd["FirstName"].ToString() + " " + rd["LastName"].ToString();


                            byte[] imgByte4 = null;
                            imgByte4 = (byte[])(rd["User_image"]);
                            string str = Convert.ToBase64String(imgByte4);
                            User_image.Src = "data:Image/png;base64," + str;

                        }


                    }



            }

            CommentsBind(); 
        }
    }




    private void CommentsBind()
    {
        string cs = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        SqlCommand cmd = new SqlCommand("spGetParentCommentssss", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@Pa_id", SqlDbType.Int).Value = lblID.Text.Trim();
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

    protected void btnCommentPublish_Click(object sender, EventArgs e)
    {

         String username;
         username = Request.Cookies["Login"].Values["UserName"];
         string cs = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
         SqlConnection con = new SqlConnection(cs);

      
        SqlCommand cmd = new SqlCommand("spCommentInserte", con);
        cmd.CommandType = CommandType.StoredProcedure;


        cmd.Parameters.AddWithValue("@UserName", username);
        cmd.Parameters.AddWithValue("@CommentMessage", txtComment.Text);
        cmd.Parameters.AddWithValue("@Pa_id",lblID.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        //call CommentsBind Method
        CommentsBind();
    }

   protected void btnReplyParent_Click(object sender, EventArgs e)
    {
      String username;
         username = Request.Cookies["Login"].Values["UserName"];

         GridViewRow row = (sender as Button).NamingContainer as GridViewRow;
         Label lblChildCommentID = (Label)row.FindControl("lblCommentID");
         TextBox txtCommentParent = (TextBox)row.FindControl("txtCommentReplyParent");
        
       string cs = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
       SqlConnection con = new SqlConnection(cs);
       SqlCommand cmd = new SqlCommand("spCommentReplyInsertss", con);
       cmd.CommandType = CommandType.StoredProcedure;
       cmd.Parameters.AddWithValue("@UserName", username);
       cmd.Parameters.AddWithValue("@CommentMessage", txtCommentParent.Text);
       cmd.Parameters.AddWithValue("@ParentCommentID", lblChildCommentID.Text);
       cmd.Parameters.AddWithValue("@C_id", lblID.Text);
       con.Open();
       cmd.ExecuteNonQuery();
       con.Close();
       //call CommentsBind Method
       CommentsBind();

   
    }



   protected void btnReplyChild_Click(object sender, EventArgs e)
   {
        String username;
         username = Request.Cookies["Login"].Values["UserName"];

       string cs = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
       SqlConnection con = new SqlConnection(cs);

       GridViewRow row = (sender as Button).NamingContainer as GridViewRow;
       Label lblParentCommentID = (Label)row.FindControl("lblParentCommentID");
       Label lblChildCommentID = (Label)row.FindControl("lblChildCommentID");
       TextBox txtCommentChild = (TextBox)row.FindControl("txtCommentReplyChild");
       SqlCommand cmd = new SqlCommand("spCommentReplyInsertss", con);
       cmd.CommandType = CommandType.StoredProcedure;
       cmd.Parameters.AddWithValue("@UserName",username);
       cmd.Parameters.AddWithValue("@CommentMessage", txtCommentChild.Text);
       cmd.Parameters.AddWithValue("@ParentCommentID", lblParentCommentID.Text);
       cmd.Parameters.AddWithValue("@C_id", lblID.Text);
       con.Open();
       cmd.ExecuteNonQuery();
       con.Close();
       CommentsBind();
   }




   protected void GridViewComment_RowDataBound(object sender, GridViewRowEventArgs e)
   {
       foreach (GridViewRow row in GridViewComment.Rows)
       {
           Label lblParentCommentID = (Label)row.FindControl("lblCommentID");
           GridView GridChild = (GridView)row.FindControl("GridViewChild");

           string cs = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
           SqlConnection con = new SqlConnection(cs);
           SqlCommand cmd = new SqlCommand("spGetParentCommentByParentCommentIDs", con);
           cmd.CommandType = CommandType.StoredProcedure;
           cmd.Parameters.AddWithValue("@ParentCommentID", lblParentCommentID.Text);
           SqlDataAdapter da = new SqlDataAdapter(cmd);
           DataSet dschild = new DataSet();
           da.Fill(dschild);
           if (dschild.Tables[0].Rows.Count > 0)
           {
               GridChild.DataSource = dschild;
               GridChild.DataBind();
           }
           else
           {
               GridChild.DataSource = null;
               GridChild.DataBind();
           }
       }
   }


   
}