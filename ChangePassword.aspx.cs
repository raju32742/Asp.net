using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Drawing;
using System.Web.Security;
using System.Text;

public partial class ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!IsPasswordResetLinkValid())
            {

                ScriptManager.RegisterClientScriptBlock(this, GetType(), "mykey", "f2()", true);
            }
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (ChangeUserPassword())
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "mykey", "f1()", true);

        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "mykey", "f2()", true);
        }
    }


    private bool ExecuteSP(string SPName, List<SqlParameter> SPParameters)
    {
        string CS = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand(SPName, con);
            cmd.CommandType = CommandType.StoredProcedure;

            foreach (SqlParameter parameter in SPParameters)
            {
                cmd.Parameters.Add(parameter);
            }

            con.Open();
            return Convert.ToBoolean(cmd.ExecuteScalar());
        }
    }

    private bool IsPasswordResetLinkValid()
    {
        List<SqlParameter> paramList = new List<SqlParameter>()
    {
        new SqlParameter()
        {
            ParameterName = "@GUID",
            Value = Request.QueryString["uid"]
        }
    };

        return ExecuteSP("spIsPasswordResetLinkValid", paramList);
    }

    private bool ChangeUserPassword()
    {
        List<SqlParameter> paramList = new List<SqlParameter>()
    {
        new SqlParameter()
        {
            ParameterName = "@GUID",
            Value = Request.QueryString["uid"]
        },
        new SqlParameter()
        {
            ParameterName = "@Password",
            Value = txtNewPassword.Text
        }
    };

        return ExecuteSP("spChangePassword", paramList);
    }

    protected void txtNewPassword_TextChanged(object sender, EventArgs e)
    {

    }
}