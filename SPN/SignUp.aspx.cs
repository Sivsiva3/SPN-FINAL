using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SPN
{
    public partial class SignUp : System.Web.UI.Page
    {
        private string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";

        public string message = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.HttpMethod == "POST")
            {
                string fname = Request.Form["fname"];
                string lname = Request.Form["lname"];
                string nname = Request.Form["nname"];
                string email = Request.Form["email"];
                string pass = Request.Form["pass"];
                string active = Request.Form["active"];
                string phone = Request.Form["phone"];

                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();

                SqlCommand command = connection.CreateCommand();
                command.CommandText = String.Format("SELECT * FROM Users WHERE [Username] = '" + nname + "'");

                SqlDataReader reader = command.ExecuteReader();

                if (reader.Read())
                {
                    message = "Username is already taken";
                    reader.Close();
                }
                else
                {
                    reader.Close();
                    command.CommandText = String.Format("INSERT INTO Users VALUES ('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}');", nname, pass, fname, lname, email, phone, active);
                    command.ExecuteNonQuery();

                    Response.Redirect("SignIn.aspx");
                }
                reader.Close();
                connection.Close();
            }
        }
    }
}