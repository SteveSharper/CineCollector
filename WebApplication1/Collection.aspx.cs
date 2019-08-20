using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace WebApplication1
{
    public partial class Collection : System.Web.UI.Page
    {
        String ID;
        String firstname;
        String IsAdmin;
        MySqlConnection conn = new MySqlConnection(@"Data Source=localhost;port=3306;Initial Catalog=collectionapp;User ID=root;password=password;");
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            firstname = (String)(Session["FirstName"]);
            userLabel.Text = firstname;
            ID = (String)(Session["ID"]);
            atID.Text = ID;
            IsAdmin = (String)(Session["Admin"]);
            if (IsAdmin == "True")
            {
                Panel2.Visible = true;
            }
            DisplayCollection();
        }

        protected void DisplayCollection()
        {
            conn.Open();
            MySqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM Collections WHERE User_ID="+ Convert.ToInt32(ID);
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MySqlConnection conn = new MySqlConnection(@"Data Source=localhost;port=3306;Initial Catalog=collectionapp;User ID=root;password=password;");
            conn.Open();
            MySqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "DELETE FROM Collections WHERE User_ID="+Convert.ToInt32(ID);
            cmd.ExecuteNonQuery();

            conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection conn = new MySqlConnection(@"Data Source=localhost;port=3306;Initial Catalog=collectionapp;User ID=root;password=password;");
                conn.Open();
                MySqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "DELETE FROM Collections WHERE User_ID=" + Convert.ToInt32(ID) + " AND Film_Title='" + TextBox1.Text + "'";
                cmd.ExecuteNonQuery();

                conn.Close();
            }
            catch (Exception ex)
            {
                Label1.Visible = true;
            }

            
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx", false);
        }
    }
}