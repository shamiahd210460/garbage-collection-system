using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMC_WEBSITE
{
    public partial class Managerlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            {
                string enteredID = TextBox1.Text.Trim();
                string enteredPassword = TextBox2.Text.Trim();

                // Establish a connection to the database
                string connectionString = ConfigurationManager.ConnectionStrings["Data Source=DESKTOP-23K9Q95;Initial Catalog=gtfregister;Integrated Security=True"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    // Query the database to check if the entered ID and password are valid
                    string query = "SELECT COUNT(*) FROM greencap WHERE ID = @ID AND Password = @Password";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@ID", enteredID);
                        command.Parameters.AddWithValue("@Password", enteredPassword);
                        int count = (int)command.ExecuteScalar();

                        if (count > 0)
                        {
                            // Valid login credentials
                            // Redirect to the desired page after login
                            Response.Redirect("Adminhome.aspx");
                        }
                        else
                        {
                            // Invalid login credentials
                            // Show an alert message and clear the textboxes
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid ID or password.');", true);
                            TextBox1.Text = string.Empty;
                            TextBox2.Text = string.Empty;
                        }
                    }
                }
            }
        }
    }
}
          