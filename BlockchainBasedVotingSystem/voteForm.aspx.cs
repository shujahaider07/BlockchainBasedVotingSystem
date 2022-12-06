using System;
using System.Configuration;
using System.Web.UI;

namespace BlockchainBasedVotingSystem
{
    public partial class voteForm : System.Web.UI.Page
    {
        String cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

        conn ConnC = new conn();
        protected void Page_Load(object sender, EventArgs e)
        {

         
            try
            {

                emailtxt.Text = Session["email"].ToString();
                cnictxt.Text = Session["cnic"].ToString();

                pppemailtxt.Text = Session["email"].ToString();
                pppcnictxt.Text = Session["cnic"].ToString();

                jpiemailtxt.Text = Session["email"].ToString();
                jpicnictxt.Text = Session["cnic"].ToString();

                pspemailtxt.Text = Session["email"].ToString();
                pspcnictxt.Text = Session["cnic"].ToString();

                anpemailtxt.Text = Session["email"].ToString();
                anpcnictxt.Text = Session["cnic"].ToString();

                mqmemailtxt.Text = Session["email"].ToString();
                mqmCnictxt.Text = Session["cnic"].ToString();

                Juiemailtxt.Text = Session["email"].ToString();
                Juicnictxt.Text = Session["cnic"].ToString();

                Tlpemailtxt.Text = Session["email"].ToString();
                Tlpcnictxt.Text = Session["cnic"].ToString();

                pmlnEmailtxt.Text = Session["email"].ToString();
                pmlnCnictxt.Text = Session["cnic"].ToString();

            }
            catch (Exception ex)
            {
                 
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string Query = "insert into tblvote (email , cnic , party)Values('" + emailtxt.Text + "','" + cnictxt.Text + "','" + ptitxt.Text + "')";


            string QueryWithHash = "insert into votewithhash (email , cnic , party)Values('" + emailtxt.Text + "','" + cnictxt.Text + "','" + Hash.Sha256(ptitxt.Text) + "')";

            string ExistQ = "select * from tblvote where cnic='" + cnictxt.Text + "'";

            if (!ConnC.IsExist(ExistQ))
            {
                if (ConnC.ExecuteQuery(Query) && ConnC.ExecuteQuery(QueryWithHash))
                {
                    this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Congratulations!! Your Vote has been Registered!', '', 'success');", true);

                   // ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Congratulations!! You Vote has been Registered ');", true);

                    //Response.Redirect("signup.aspx");

                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Vote is already Registered!! Please Try With Different Cnic..');", true);
            }

        }

        protected void Btnppp_Click(object sender, EventArgs e)
        {

            string Query = "insert into tblvote (email , cnic , party)Values('" + emailtxt.Text + "','" + cnictxt.Text + "','" + ppptxt.Text + "')";

            string QueryWithHash = "insert into votewithhash (email , cnic , party)Values('" + emailtxt.Text + "','" + cnictxt.Text + "','" + Hash.Sha256(ppptxt.Text) + "')";

            string ExistQ = "select * from tblvote where cnic='" + cnictxt.Text + "'";

            if (!ConnC.IsExist(ExistQ))
            {
                if (ConnC.ExecuteQuery(Query) && ConnC.ExecuteQuery(QueryWithHash))
                {
                    //ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Congratulations!! You Vote has been Registered ');", true);
                    
                    this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Congratulations!! Your Vote has been Registered!', '', 'success');", true);

                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Vote is already Registered!! Please Try With Different Cnic..');", true);
            }
        }

        protected void jpibtn_Click(object sender, EventArgs e)
        {

            string Query = "insert into tblvote (email , cnic , party)Values('" + jpiemailtxt.Text + "','" + jpicnictxt.Text + "','" + JIptxt.Text + "')";

            string QueryWithHash = "insert into votewithhash (email , cnic , party)Values('" + emailtxt.Text + "','" + cnictxt.Text + "','" + Hash.Sha256(JIptxt.Text) + "')";

            string ExistQ = "select * from tblvote where cnic='" + cnictxt.Text + "'";

            if (!ConnC.IsExist(ExistQ))
            {
                if (ConnC.ExecuteQuery(Query) && ConnC.ExecuteQuery(QueryWithHash))
                {
                    this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Congratulations!! Your Vote has been Registered!', '', 'success');", true);
                    /// ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Congratulations!! You Vote has been Registered ');", true);

                    // Response.Redirect("signup.aspx");
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Vote is already Registered!! Please Try With Different Cnic..');", true);
            }


        }

        protected void pspBtn_Click(object sender, EventArgs e)
        {


            string Query = "insert into tblvote (email , cnic , party)Values('" + pspemailtxt.Text + "','" + pspcnictxt.Text + "','" + psptxt.Text + "')";

            string QueryWithHash = "insert into votewithhash (email , cnic , party)Values('" + emailtxt.Text + "','" + cnictxt.Text + "','" + Hash.Sha256(psptxt.Text) + "')";


            string ExistQ = "select * from tblvote where cnic='" + cnictxt.Text + "'";

            if (!ConnC.IsExist(ExistQ))
            {
                if (ConnC.ExecuteQuery(Query) && ConnC.ExecuteQuery(QueryWithHash))
                {
                    this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Congratulations!! Your Vote has been Registered!', '', 'success');", true);
                    // ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Congratulations!! You Vote has been Registered ');", true);

                    // Response.Redirect("signup.aspx");

                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Congratulations!! You Vote has been Registered ');", true);
            }




        }

        protected void ANPbtn_Click(object sender, EventArgs e)
        {

            string Query = "insert into tblvote (email , cnic , party)Values('" + anpemailtxt.Text + "','" + anpcnictxt.Text + "','" + anptxt.Text + "')";


            string QueryWithHash = "insert into votewithhash (email , cnic , party)Values('" + emailtxt.Text + "','" + cnictxt.Text + "','" + Hash.Sha256(anptxt.Text) + "')";


            string ExistQ = "select * from tblvote where cnic='" + cnictxt.Text + "'";

            if (!ConnC.IsExist(ExistQ))
            {
                if (ConnC.ExecuteQuery(Query) && ConnC.ExecuteQuery(QueryWithHash))
                {
                    this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Congratulations!! Your Vote has been Registered!', '', 'success');", true);
                    //ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Congratulations!! You Vote has been Registered ');", true);

                    Response.Redirect("signup.aspx");

                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Congratulations!! You Vote has been Registered ');", true);
            }



        }

        protected void mqmBtn_Click(object sender, EventArgs e)
        {
            string Query = "insert into tblvote (email , cnic , party)Values('" + mqmemailtxt.Text + "','" + mqmCnictxt.Text + "','" + MQmtxt.Text + "')";

            string QueryWithHash = "insert into votewithhash (email , cnic , party)Values('" + emailtxt.Text + "','" + cnictxt.Text + "','" + Hash.Sha256(MQmtxt.Text) + "')";


            string ExistQ = "select * from tblvote where cnic='" + cnictxt.Text + "'";

            if (!ConnC.IsExist(ExistQ))
            {
                if (ConnC.ExecuteQuery(Query) && ConnC.ExecuteQuery(QueryWithHash))
                {
                    this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Congratulations!! Your Vote has been Registered!', '', 'success');", true);
                    // ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Congratulations!! You Vote has been Registered ');", true);

                    //Response.Redirect("signup.aspx");
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Congratulations!! You Vote has been Registered ');", true);
            }

        }

        protected void JuiBtn_Click(object sender, EventArgs e)
        {
            string Query = "insert into tblvote (email , cnic , party)Values('" + Juiemailtxt.Text + "','" + Juicnictxt.Text + "','" + juitxt.Text + "')";


            string QueryWithHash = "insert into votewithhash (email , cnic , party)Values('" + emailtxt.Text + "','" + cnictxt.Text + "','" + Hash.Sha256(juitxt.Text) + "')";


            string ExistQ = "select * from tblvote where cnic='" + cnictxt.Text + "'";

            if (!ConnC.IsExist(ExistQ))
            {
                if (ConnC.ExecuteQuery(Query) && ConnC.ExecuteQuery(QueryWithHash))
                {
                    this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Congratulations!! Your Vote has been Registered!', '', 'success');", true);
                    //   ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Congratulations!! You Vote has been Registered ');", true);


                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Congratulations!! You Vote has been Registered ');", true);
            }


        }

        protected void TlpBtn_Click(object sender, EventArgs e)
        {
            string Query = "insert into tblvote (email , cnic , party)Values('" + Tlpemailtxt.Text + "','" + Tlpcnictxt.Text + "','" + tlptxt.Text + "')";

            string QueryWithHash = "insert into votewithhash (email , cnic , party)Values('" + emailtxt.Text + "','" + cnictxt.Text + "','" + Hash.Sha256(tlptxt.Text) + "')";



            string ExistQ = "select * from tblvote where cnic='" + cnictxt.Text + "'";

            if (!ConnC.IsExist(ExistQ))
            {
                if (ConnC.ExecuteQuery(Query) && ConnC.ExecuteQuery(QueryWithHash))
                {

                    this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Congratulations!! Your Vote has been Registered!', '', 'success');", true);
                    //ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Congratulations!! You Vote has been Registered ');", true);



                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Congratulations!! You Vote has been Registered ');", true);
            }

        }

        protected void PmlnBtn_Click(object sender, EventArgs e)
        {
            string Query = "insert into tblvote (email , cnic , party)Values('" + pmlnEmailtxt.Text + "','" + pmlnCnictxt.Text + "','" + pmlntxt.Text + "')";


            string QueryWithHash = "insert into votewithhash (email , cnic , party)Values('" + emailtxt.Text + "','" + cnictxt.Text + "','" + Hash.Sha256(pmlntxt.Text) + "')";

            string ExistQ = "select * from tblvote where cnic='" + cnictxt.Text + "'";

            if (!ConnC.IsExist(ExistQ))
            {
                if (ConnC.ExecuteQuery(Query) && ConnC.ExecuteQuery(QueryWithHash))
                {
                    this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Congratulations!! Your Vote has been Registered!', '', 'success');", true);

                    //ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Congratulations!! You Vote has been Registered ');", true);


                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Congratulations!! You Vote has been Registered ');", true);
            }

        }
    }
}
