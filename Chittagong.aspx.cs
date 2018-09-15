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

public partial class Chittagong: System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (TextBoxSearch.Text != "")
            {
                // nothing
            }
            else
            {
                LoadImages();
            }
        }
    }
    private void LoadImages()
    {
        string cs = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("Select * from Products Join Product_details On Products.Id=Product_details.P_id  where Product_details.Location='Chittagong' order by Id desc", con);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            productList.DataSource = rdr;
            productList.DataBind();
            con.Close();
        }
    }

    private void LoadImagesByHiPrice()
    {
        string cs = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("Select * from Products Join Product_details On Products.Id=Product_details.P_id  where Product_details.Location='Chittagong' order by Price desc", con);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            productList.DataSource = rdr;
            productList.DataBind();
            con.Close();
        }

    }
    private void LoadImagesByLoPrice()
    {
        string cs = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("Select * from Products Join Product_details On Products.Id=Product_details.P_id  where Product_details.Location='Chittagong' order by Price ", con);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            productList.DataSource = rdr;
            productList.DataBind();
            con.Close();
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Product_des.aspx?" + "ID=" + ((LinkButton)sender).Text);
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        if (product.SelectedValue == "2")
        {
            LoadImagesByLoPrice();
        }
        else if (product.SelectedValue == "3")
        {
            LoadImagesByHiPrice();
        }
        else
        {
            LoadImages();
        }
    }






    /*------for SearchOption section -------------------------*/
    protected void ButtonSearch_Click(object sender, EventArgs e)
    {
        if (TextBoxSearch.Text != "")
        {
            string search = TextBoxSearch.Text;
            string cs = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {


                SqlCommand cmd = new SqlCommand("select * from Products Join Product_details On Products.Id=Product_details.P_id  where Title like '" + search + "%' OR UserName like '" + search + "%' AND Product_details.Location='Chittagong'", con);

                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                productList.DataSource = rdr;
                productList.DataBind();
                con.Close();
            }

        }
    }
}