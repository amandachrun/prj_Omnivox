using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data.SqlClient;


namespace prjWebCsAdoOmnivox
{
    public partial class welcome : System.Web.UI.Page
    {
  
        protected void Page_Load(object sender, EventArgs e)
        {
            lblName.Text = "Welcome " + Session["MemberName"] + "!";

            OleDbConnection connection = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\overl\source\repos\prjWebCsAdoOmnivox\App_Data\omnivoxDB.mdb;Persist Security Info=True");
            connection.Open();

            Int32 refMember = Convert.ToInt32(Session["RefMember"]);

            string sql = "SELECT RefMessage, Title, Sender, isNew FROM Messages WHERE Receiver = " + refMember;
            OleDbCommand cmd = new OleDbCommand(sql, connection);
            OleDbDataReader reader = cmd.ExecuteReader();
            int counter = 0;
            int refMsg = Convert.ToInt32(Request.QueryString["MsgId"]);

            while (reader.Read())
            {
               

                counter++;

                TableRow arow = new TableRow();

                TableCell acel = new TableCell();
                acel.Text = reader["Title"].ToString();
                arow.Cells.Add(acel);

                
                int senderRef = Convert.ToInt32(reader["Sender"]);
                string sql2 = "SELECT RefMember, MemberName FROM Members WHERE RefMember =" + senderRef;
                OleDbCommand cmd2 = new OleDbCommand(sql2, connection);
                OleDbDataReader rdr = cmd2.ExecuteReader();

                if(rdr.Read())
                {
                    acel = new TableCell();
                    acel.Text = rdr["MemberName"].ToString();
                    arow.Cells.Add(acel);
                }


                acel = new TableCell();
                Int32 tmp = Convert.ToInt32(reader["RefMessage"]);
                acel.Text = "<a href = 'readMsg.aspx?MsgId=" + tmp + "'>Read</a> <a href='#' > Delete </a>";
                arow.Cells.Add(acel);

                if (Convert.ToBoolean(reader["isNew"]) == false)
                {
                    arow.BackColor = System.Drawing.Color.White;
                }

                
                tabMessages.Rows.Add(arow);
            }
            reader.Close();

            

            connection.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("writeMsg.aspx");
        }
    }
}