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
    public partial class GTFregister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-23K9Q95;Initial Catalog=gtfregister;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[gtfreg1]
           ([UserName]
           ,[Email]
           ,[UserUD]
           ,[Password])
     VALUES
           ('" + TextBox1.Text + "','" + TextBox4.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Success')</script>");
        }
    }
    }
