using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SPN
{
    public partial class SignIn : System.Web.UI.Page
    {
        private string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security = True";

        public string massege = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.HttpMethod == "POST")
            {
                string username = Request.Form["username"];
                string password = Request.Form["password"];

                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();

                SqlCommand command = connection.CreateCommand();
                command.CommandText = "SELECT * FROM Users where username = '" + username + "'";
                SqlDataReader reader = command.ExecuteReader();
                
                if(reader.Read())
                {
                    if(reader.GetString(2) == password)
                    {
                        Session["current user"] = username;
                        Response.Redirect("SPN.aspx");
                    }
                    else
                    {
                        massege = "username or password are invalid";
                    }
                }
                else
                {
                    massege = "username or password are invalid";
                }

                connection.Close();
                reader.Close();
                
            }
        }
    }
}