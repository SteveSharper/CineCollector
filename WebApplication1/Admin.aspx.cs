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
    public partial class Admin : System.Web.UI.Page
    {
        MySqlConnection conn = new MySqlConnection(@"Data Source=localhost;port=3306;Initial Catalog=collectionapp;User ID=root;password=password;");
        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i=2019; i>=1900;i--)
            {
                DropDownList1.Items.Add(i.ToString());
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();
            try
            {
                MySqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                if (TextBox7.Text.Length > 0)
                {
                    cmd.CommandText = "INSERT INTO Movies(Title, Distributor, Director, ReleaseDate, Franchise, Entry, Poster) VALUES('" + TextBox3.Text + "', '" + TextBox4.Text + "', '" + TextBox5.Text + "', " + Convert.ToInt32(DropDownList1.SelectedItem.Value) + ", '" + TextBox7.Text + "', " + Convert.ToInt32(TextBox8.Text) + ", 'Images/Movies/" + FileUpload1.FileName + "')";
                }
                else
                {
                    cmd.CommandText = "INSERT INTO Movies(Title, Distributor, Director, ReleaseDate, Poster) VALUES('" + TextBox3.Text + "', '" + TextBox4.Text + "', '" + TextBox5.Text + "', " + Convert.ToInt32(DropDownList1.SelectedItem.Value) + ", 'Images/Movies/" + FileUpload1.FileName + "')";
                }
                cmd.ExecuteNonQuery();

                FileUpload1.SaveAs(Server.MapPath("Images/Movies/" + FileUpload1.FileName));
                Label1.Visible = true;
                Label1.Text = "New Film Successfully Added!";
            }
            catch (Exception ex)
            {
                Label1.Visible = true;
                Label1.Text="Error! A Problem has Occured Which Prevented the Film from being Added.";
            }
            conn.Close();
        }

        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {
            TextBox8.ReadOnly = false;
        }
    }
}