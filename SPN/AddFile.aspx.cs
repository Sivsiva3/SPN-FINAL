using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SPN
{
    public partial class AddFile : System.Web.UI.Page
    {
        private string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security = True";
        public string firstname = "";
        public string active = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();

            SqlCommand command = connection.CreateCommand();
            command.CommandText = "SELECT * FROM Users WHERE username = '" + Session["current user"] + "'";
            SqlDataReader reader = command.ExecuteReader();

            if (reader.Read())
            {
                firstname += reader["First Name"].ToString();
                active += reader["Active Years"].ToString();
            }
            connection.Close();
            string username = Session["current user"].ToString();

            if (Request.HttpMethod == "POST")
            {
                string title = Request.Form["title"];
                string content = Request.Form["content"];
                
                string yearsactive = active;

                connection.Open();

                command.CommandText = String.Format("INSERT INTO Messages VALUES ('{0}', '{1}', '{2}', '{3}');", title, content, username, yearsactive);
                command.ExecuteNonQuery();
                Response.Redirect("Forum.aspx");

                connection.Close();
            }
        }
    }
}