using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web.UI;
using System.Data;
using System.Reflection.Emit;

namespace BlockchainBasedVotingSystem
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["username"] == null && Session["password"] == null)
            {
                Response.Redirect("portal.aspx");
            }
            else
            {
                // Response.Redirect("hashtable.aspx");
            }
            BindGrid();
            VoteCount();
            Vote();
        }

        String cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        public void BindGrid()
        {
            SqlConnection sql = new SqlConnection(cs);
            sql.Open();
            String qry = "select * from tblVote";
            SqlDataAdapter da = new SqlDataAdapter(qry,sql);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

            sql.Close();

        }

        public void VoteCount()
        {
            SqlConnection sql = new SqlConnection(cs);
            sql.Open();
            String qry = "select count(party) from tblVote";
            SqlCommand cmd = new SqlCommand(qry,sql);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                Label1.Text =  dr[0].ToString();
            } 
      
            sql.Close();

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection sql = new SqlConnection(cs);
            sql.Open();
            String qry = "select count(party) from tblvote where party like '%" + TextBox1.Text + "%' ";
            SqlCommand cmd = new SqlCommand(qry, sql);
            SqlDataAdapter da = new SqlDataAdapter(qry, sql);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
        }

        public void Vote()
        {
            SqlConnection sql = new SqlConnection(cs);
            sql.Open();
            //String qry = "select count(party) from tblvote where party like '%" + TextBox1.Text + "%' ";
            String qry = "select count(party) from tblvote where party = '" + TextBox1.Text + "'";

            SqlCommand cmd = new SqlCommand(qry, sql);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                Label2.Text = dr[0].ToString();
            }


            sql.Close();
        }
    }
}