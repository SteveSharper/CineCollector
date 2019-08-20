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
    public partial class Movies : System.Web.UI.Page
    {
        String ID;
        MySqlConnection conn = new MySqlConnection(@"Data Source=localhost;port=3306;Initial Catalog=collectionapp;User ID=root;password=password;");
        protected void Page_Load(object sender, EventArgs e)
        {
            DisplayMovies();
        }

        protected void DisplayMovies()
        {
            conn.Open();
            MySqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT Film_ID, Title, Distributor, Director, ReleaseDate, Franchise, Poster FROM Movies";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            conn.Close();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            conn.Open();
            MySqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            if (RadioButton1.Checked)
            {
                cmd.CommandText = "SELECT * FROM Movies WHERE Distributor LIKE '%" + TextBox1.Text + "%'";
            }
            if (RadioButton2.Checked)
            {
                cmd.CommandText = "SELECT * FROM Movies WHERE ReleaseDate =" + Convert.ToInt32(TextBox1.Text);
            }
            if (RadioButton3.Checked)
            {
                cmd.CommandText = "SELECT * FROM Movies WHERE Franchise LIKE '%" + TextBox1.Text + "%' ORDER BY Entry";
            }
            if (RadioButton4.Checked)
            {
                cmd.CommandText = "SELECT * FROM Movies WHERE Director LIKE '%" + TextBox1.Text + "%' ORDER BY ReleaseDate";
            }
            if (RadioButton1.Checked == false && RadioButton2.Checked == false && RadioButton3.Checked == false && RadioButton4.Checked==false)
            {
                cmd.CommandText = "SELECT * FROM Movies WHERE Title LIKE '%" + TextBox1.Text + "%'";
            }
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            conn.Close();
            RadioButton1.Checked= false;
            RadioButton2.Checked= false;
            RadioButton3.Checked= false;
            RadioButton4.Checked = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ID = (String)(Session["ID"]);
            MySqlConnection conn = new MySqlConnection(@"Data Source=localhost;port=3306;Initial Catalog=collectionapp;User ID=root;password=password;");
            MySql.Data.MySqlClient.MySqlDataReader reader;
            string title;
            string poster;
            conn.Open();
            MySqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT Title, Poster FROM Movies WHERE Film_ID=" + Convert.ToInt32(TextBox1.Text);
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                title = reader.GetString(reader.GetOrdinal("Title"));
                poster = reader.GetString(reader.GetOrdinal("Poster"));
                conn.Close();
                conn.Open();
                MySqlCommand cmd2 = conn.CreateCommand();
                cmd2.CommandType = CommandType.Text;
                cmd2.CommandText = "INSERT INTO Collections(User_ID, Film_Title, Poster) VALUES(" + ID + ", '" + title + "', '" + poster + "')";
                cmd2.ExecuteNonQuery();
                conn.Close();
            }
            Response.BufferOutput = true;
            Response.Redirect("Collection.aspx", false);
        }
    }
}