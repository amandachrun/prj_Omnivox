using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using prjWebCsAdoOmnivox.BLL;

namespace prjWebCsAdoOmnivox
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnValidate_Click(object sender, EventArgs e)
        {
            string id = txtStudentNumber.Text.Trim();
            string fullname = txtFullName.Text;
            int year = Convert.ToInt32(txtYear.Text.Trim());
            string password = txtPassword1.Text.Trim();

 

            if (Member.SearchMember(id) == false && Student.SearchStudent(id, fullname, year) == true)
            {
                Member.SaveMember(id, fullname, password);
                Server.Transfer("home.aspx");

            }
            else
            {
                lblError.Text = "Wrong student id--or member already has an account.";
            }

        }
            
                
    }
}
