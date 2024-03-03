using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace CMC_WEBSITE
{
    public partial class GTFLogin : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            string enteredID = TextBox1.Text.Trim();
            string enteredPassword = TextBox2.Text.Trim();

            // Establish a connection to the database
            string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Query the database to check if the entered ID and password are valid
                string query = "SELECT COUNT(*) FROM gtfreg1 WHERE ID = @ID AND Password = @Password";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@ID", enteredID);
                    command.Parameters.AddWithValue("@Password", enteredPassword);

                    int count = Convert.ToInt32(command.ExecuteScalar());

                    if (count > 0)
                    {
                        // Valid login credentials
                        // Redirect to the GTF home page
                        Response.Redirect("GTFhome.aspx");
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

    
