using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace prjWebCsAdoOmnivox
{
    public partial class readMsg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Int32 refMsg = Convert.ToInt32(Request.QueryString["MsgId"]);

            OleDbConnection connection = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\overl\source\repos\prjWebCsAdoOmnivox\App_Data\omnivoxDB.mdb;Persist Security Info=True");
            connection.Open();

            string sql = "SELECT Messages.Title, Messages.Message, Members.MemberName "
                + "FROM Messages, Members WHERE Messages.Sender = Members.RefMember AND RefMessage = " + refMsg;

            OleDbCommand cmd = new OleDbCommand(sql, connection);
            OleDbDataReader reader = cmd.ExecuteReader();

            if(reader.Read())
            {
                lblTitle.Text = reader["Title"].ToString();
                lblFrom.Text = reader["MemberName"].ToString();
                lblmsg.Text = reader["Message"].ToString();
            }

            reader.Close();

            sql = "UPDATE Messages SET isNew = False WHERE RefMessage= " + refMsg;
            cmd = new OleDbCommand(sql, connection);
            cmd.ExecuteReader();
            connection.Close();
            
            //Server.Transfer("welcome.aspx");
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Server.Transfer("welcome.aspx");
        }
    }
}