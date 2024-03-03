using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMC_WEBSITE
{
    public partial class GTFhome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string topic = TextBox1.Text.Trim();
            string description = TextBox2.Text.Trim();
            string location = TextBox3.Text.Trim();
            string imageName = string.Empty;

            // Check if a file was uploaded
            if (FileUpload1.HasFile)
            {
                // Save the uploaded file to a folder
                string fileName = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("~/Images/") + fileName);
                imageName = fileName;
            }

            // Establish a connection to the database
            string connectionString = "Data Source=DESKTOP-23K9Q95;Initial Catalog=gtfregister;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Insert the data into the "report" table
                string query = "INSERT INTO report (Topic, Description, Location, ImageName) VALUES (@Topic, @Description, @Location, @ImageName)";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Topic", topic);
                    command.Parameters.AddWithValue("@Description", description);
                    command.Parameters.AddWithValue("@Location", location);
                    command.Parameters.AddWithValue("@ImageName", imageName);

                   

                    if (rowsAffected > 0)
                    {
                        // Data successfully inserted
                        // Redirect to a success page or show a success message
                        Response.Redirect("SuccessPage.aspx");
                    }
                    else
                    {
                        // Error occurred while inserting data
                        // Show an alert message or redirect to an error page
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Error occurred while submitting the report.');", true);
                    }
                }
            }
        }
    }
}