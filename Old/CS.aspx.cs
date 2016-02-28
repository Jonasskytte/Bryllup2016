using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class CS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public static string ValidateUser(Users user)
    {
        int userId = 0;
        string constr = ConfigurationManager.ConnectionStrings["Bryllup2016ConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("Validate_User"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Username", user.Username);
                cmd.Parameters.AddWithValue("@Password", user.Password);
                cmd.Connection = con;
                con.Open();
                userId = Convert.ToInt32(cmd.ExecuteScalar());
                con.Close();
            }
        }
        string IsValidate = string.Empty;
        switch (userId)
        {
            case -1:
                IsValidate = "Username and/or password is incorrect.";
                break;
            case -2:
                IsValidate = "Account has not been activated.";
                break;
            case -3:
                IsValidate = "Login Successfully.";
                break;
        }

        return IsValidate;

    }

    public class Users
    {
        public string Username { get; set; }
        public string Password { get; set; }
    }
}

