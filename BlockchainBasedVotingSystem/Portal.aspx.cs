using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlockchainBasedVotingSystem
{
    public partial class Portal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = "saraib";
            string pass = "123";

            if (TextBox2.Text == name && TextBox3.Text == pass)
            {

                Session["username"] = TextBox2.Text;
                Session["password"] = TextBox3.Text;

                Response.Redirect("HashTable.aspx");
               
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}