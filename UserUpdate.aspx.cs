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

public partial class UserUpdate : System.Web.UI.Page
{
    String NFn, NLn, opr, NBd, NEm, NMn, NPa;
    protected void Page_Load(object sender, EventArgs e)
    {
       
         
            string css = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
            

                 using(SqlConnection conn = new SqlConnection(css)){

                     conn.Open(); 
                     SqlCommand cmd1 = new SqlCommand("Select * from UserInfm where UserName = '" + Request.Cookies["Login"]["UserName"].ToString() + "' ", conn);

            

                   opr = Request.QueryString["opr"].ToString();
                 
                  if(opr=="update"){
                     NFn = Request.QueryString["NFn"].ToString();
                    NLn = Request.QueryString["NLn"].ToString();
                    NBd = Request.QueryString["NBd"].ToString();
                    NEm = Request.QueryString["NEm"].ToString();                  
                    NMn = Request.QueryString["NMn"].ToString();
                    NPa = Request.QueryString["NPa"].ToString();

                    using (SqlDataReader rd = cmd1.ExecuteReader())
                    {
                        while (rd.Read())
                        {
                            if (NEm == "")
                            {
                                NEm = rd["Email"].ToString();
                            }
                            if(NMn==""){
 
                              NMn = rd["MobileNo"].ToString();
                            }
                          if(NBd==""){
                            NBd = rd["BirthDay"].ToString();
                          }
                       if(NFn==""){
                            NFn= rd["FirstName"].ToString();
                       }
                       if (NLn == "")
                       {

                         NLn=rd["LastName"].ToString();
                       }

                       
                        if (NPa == "")
                        {
                            NPa = rd["Password"].ToString();
                        }
                        break;
                    }
                 } 







                    
                    SqlCommand cmd = conn.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                  
                    cmd.CommandText = "Update UserInfm set LastName='" + NLn.ToString() + "',BirthDay='" + NBd.ToString() + "',Email='" + NEm.ToString() + "',MobileNo='" + NMn.ToString() + "',Password='" + NPa.ToString() + "',FirstName='"+NFn.ToString()+"'  where UserName = '" + Request.Cookies["Login"]["UserName"].ToString() + "'";
                     cmd.ExecuteNonQuery();                   
               }     
                 
                
                    conn.Close();
                
            }
    
        
    }
}