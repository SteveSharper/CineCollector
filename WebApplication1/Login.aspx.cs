using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Account
{
    public partial class Login : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        MySql.Data.MySqlClient.MySqlDataReader reader;
        String query = "";
        String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConString"].ToString();
        String id = "";
        String firstname = "";
        String lastname = "";
        String email = "";
        String username = "";
        String password = "";
        String IsAdmin = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            LogIn();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            RegisterUser();
        }

        protected void RegisterUser()
        {
            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            query = "INSERT INTO collectionapp.users (`FirstName`, `LastName`, `Email`, `Username`, `PWord`) VALUES ('"+TextBox3.Text+"', '"+TextBox4.Text+"', '"+ TextBox5.Text +"', '"+ TextBox6.Text+"', '"+ TextBox7.Text+"')";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(query, conn);
            cmd.ExecuteReader();
            conn.Close();
        }

        protected void LogIn()
        {
            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            query = "SELECT * FROM collectionapp.users WHERE Username='" + TextBox1.Text + "' AND PWord='" + TextBox2.Text + "'";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(query, conn);

            reader= cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                id=reader.GetString(reader.GetOrdinal("ID"));
                firstname = reader.GetString(reader.GetOrdinal("FirstName"));
                IsAdmin = reader.GetString(reader.GetOrdinal("IsAdmin"));
                
            }
            if (reader.HasRows)
            {
                Session["Firstname"] = firstname;
                Session["ID"] = id;
                Session["Admin"] = IsAdmin;
                Response.BufferOutput = true;
                Response.Redirect("Collection.aspx", false);
            }
            else
            {
                Label1.Visible = true;
            }
            reader.Close();
            conn.Close();
        }
    }
}