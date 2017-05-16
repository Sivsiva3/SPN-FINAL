using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SPN
{
    public partial class Forum : System.Web.UI.Page
    {
        private string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security = True";
        public string firstname = "";
        public string forumpost = "";
        public string username = "";
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
                username += reader["Username"].ToString();
            }
            connection.Close();

            connection.Open();

            command.CommandText = "SELECT * FROM Messages;";
            reader = command.ExecuteReader();

            while (reader.Read())
            {
                forumpost += "<tr>";
                forumpost += "<td><center>" + reader["Id"] + "</center></td>";
                forumpost += "<td><center>" + reader["Username"] + "</center></td>";
                forumpost += "<td><center>" + Level(int.Parse(reader["Years Active"].ToString())) + "</center></td>";
                forumpost += "<td><center>" + reader["Title"] + "</center></td>";
                forumpost += "<td><center>" + reader["Content"] + "</center></td>";
                forumpost += "</tr>";
            }

            connection.Close();
            if (Request.HttpMethod == "POST")
            {
                connection.Open();
                string id = Request.Form["id"];
                string user = Request.Form["username"];

                command.CommandText = "SELECT [Years Active] FROM Messages WHERE [Username] = '" + Session["current user"] + "'";

                reader = command.ExecuteReader();
                if (reader.Read())
                {
                    if (user == username || Level(reader.GetInt32(0)) == "Expert")
                    {
                        connection.Close();
                        connection.Open();
                        command.CommandText = "DELETE FROM Messages WHERE Id = '" + id + "';";
                        command.ExecuteNonQuery();
                        Response.Redirect("Forum.aspx");

                        reader.Close();
                    }
                }
                connection.Close();
            }
        }

        public static string Level(int ya)
        {
            if (ya <= 5)
                return "Beginner";
            if (ya > 5 && ya <= 10)
                return "Skilled";
            if (ya > 10 && ya <= 20)
                return "Expert";
            if (ya > 20)
                return "Fucking Sam and Dean";
            return "";
        }
    }
}