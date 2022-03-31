using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace prjWebCsAdoOmnivox
{
    public partial class writeMsg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OleDbConnection connection = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\overl\source\repos\prjWebCsAdoOmnivox\App_Data\omnivoxDB.mdb;Persist Security Info=True");
            connection.Open();

            string sql = "SELECT RefMember, MemberName, [Number] FROM Members";
            OleDbCommand cmd = new OleDbCommand(sql, connection);
            OleDbDataReader reader = cmd.ExecuteReader();

            dropDownRecipients.Items.Insert(0, "--Please Select--");
            while (reader.Read())
            {
                ListItem itm = new ListItem();
                itm.Text = reader["MemberName"].ToString(); //+ " " + " (" + reader["Number"] + ")";
                itm.Value = reader["RefMember"].ToString();
                dropDownRecipients.Items.Add(itm);

                //string name = reader["MemberName"].ToString();
                //dropDownRecipients.Items.Add(name);
            }

            reader.Close();
            connection.Close();
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtmsg.Text = "";
            txtTitle.Text = "";
            dropDownRecipients.SelectedIndex = 0;
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Server.Transfer("welcome.aspx");
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            int refmem = 0;
            int myref = 0;

                OleDbConnection connection = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\overl\source\repos\prjWebCsAdoOmnivox\App_Data\omnivoxDB.mdb;Persist Security Info=True");
                connection.Open();

                string sql = "SELECT RefMember FROM Members WHERE MemberName = '" + dropDownRecipients.Text.ToString() + "'";
                OleDbCommand cmd = new OleDbCommand(sql, connection);
                OleDbDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    refmem = Convert.ToInt32(reader["RefMember"]);

                    reader.Close();

                    sql = "SELECT RefMember FROM Members WHERE MemberName ='" + Session["MemberName"].ToString() + "'";
                    cmd = new OleDbCommand(sql, connection);
                    reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        myref = Convert.ToInt32(reader["RefMember"]);

                        reader.Close();

                        sql = "INSERT INTO Messages(Title, Message, Sender, Receiver)"
                        + " VALUES('" + txtTitle.Text + "', '" + txtmsg.Text + "', "
                        + myref + ", " + refmem + ")";

                        cmd = new OleDbCommand(sql, connection);
                        cmd.ExecuteReader();

                        connection.Close();
                        Server.Transfer("welcome.aspx");
                    }

                }

        }
    }
}