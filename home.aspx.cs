using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace prjWebCsAdoOmnivox
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string num = txtStudentNumber.Text.Trim();
            string psw = txtPassword.Text.Trim();


            OleDbConnection mycon = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\overl\source\repos\prjWebCsAdoOmnivox\App_Data\omnivoxDB.mdb;Persist Security Info=True");
            mycon.Open();

            string sql = "SELECT RefMember, MemberName FROM Members WHERE Number = '" 
                            + num + "' AND MemberPassword = '" + psw + "'";

            OleDbCommand mycmd = new OleDbCommand(sql, mycon);
            OleDbDataReader myReader = mycmd.ExecuteReader();

            if (myReader.Read())
            {
                // save the ref member and name as global variables
                Session["RefMember"] = myReader["RefMember"];
                Session["MemberName"] = myReader["MemberName"];
                
                mycon.Close();
                Server.Transfer("welcome.aspx");
            } else
            {
                mycon.Close();
                lblError.Text = "Student number or password do not match - Try again";
            }

        }

        protected void btnLink_Click(object sender, EventArgs e)
        {
            Server.Transfer("register.aspx");
            // first check --> are you a student?
            // if yes --> check if already a member
            // redirect to home page
        }
    }
}