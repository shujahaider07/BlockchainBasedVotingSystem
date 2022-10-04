using System;
using System.Configuration;
using System.Data.SqlClient;


namespace BlockchainBasedVotingSystem
{
    public partial class SignUp : System.Web.UI.Page
    {
        conn ConnC = new conn();
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        String cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

        protected void Button1_Click(object sender, EventArgs e)
        {


            if (IsPostBack)
            {
                insertdata();
            }



        }
        public void insertdata()
        {
            SqlConnection sql = new SqlConnection(cs);

            sql.Open();

            string Query = "insert into registration_tbl (NAME , EMAIL  , GENDER , PASSWORD) Values('" + nametxt.Text + "' ,  '" + emailtxt.Text + "' , '" + DropDownList1.Text + "' , '" + passwordTxt.Text + "' )";



            string ExistQ = "select * from registration_tbl where EMAIL ='" + emailtxt.Text + "'";

            if (!ConnC.IsExist(ExistQ))
            {
                if (ConnC.ExecuteQuery(Query))
                {
                    //ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Congratulations!! You have successfully registered..');", true);
                    this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Sign up Sucessfully!', '', 'success');", true);

                    // Session["Cnic"] = cnictxt.Text;

                    clearData();
                        

                }
            }

            else
            {
                //ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Alert!! Failed to registered Email Already Exist..');", true);

                this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Email Already Exist!', '', 'error');", true);





            }

        }

        public void clearData()
        {
            nametxt.Text = "";
            passwordTxt.Text = "";
           
            emailtxt.Text = "";
        }
    }

}



