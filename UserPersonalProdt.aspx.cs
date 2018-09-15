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

public partial class UserPersonalProdt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {

            string cs = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("Select * from Products where UserName = '" + Request.Cookies["Login"]["UserName"].ToString() + "' order by Id ", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                productList.DataSource = rdr;
                productList.DataBind();

            }
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Product_des.aspx?" + "ID=" + ((LinkButton)sender).Text);
    }
}