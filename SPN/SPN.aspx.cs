using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace SPN
{
    public partial class SPN : System.Web.UI.Page
    {
        private string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security = True";
        public string firstname = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();

            SqlCommand command = connection.CreateCommand();
            command.CommandText = "SELECT * FROM Users WHERE username = '" + Session["current user"] + "'";
            SqlDataReader reader = command.ExecuteReader();

            if(reader.Read())
            {
                firstname += reader["First Name"].ToString();
            }
            connection.Close();
        }
    }
}