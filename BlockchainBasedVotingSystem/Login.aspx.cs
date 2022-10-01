using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace BlockchainBasedVotingSystem
{
    public partial class Login : System.Web.UI.Page
    {
        String cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["cnic"] !=null)
            //{
            //    cnictext.Text = Session["cnic"].ToString();
            //}
        }

        protected void button1_Click(object sender, EventArgs e)
        {

            SqlConnection sql = new SqlConnection(cs);
            sql.Open();
            String qry = "select * from registration_tbl where email = @email and password = @password";
            SqlCommand cmd = new SqlCommand(qry, sql);
            cmd.Parameters.AddWithValue("@email", Emailtxt.Text);
            cmd.Parameters.AddWithValue("@password", passwordtxt.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {

                ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Congratulations!! You have successfully Login..');", true);

                // Response.Redirect("Signup.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Warning!! Failed to Login..');", true);
            }

            sql.Close();



        }
    }
}