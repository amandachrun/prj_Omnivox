using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using prjWebCsAdoOmnivox.BLL;
using System.Data.OleDb;

namespace prjWebCsAdoOmnivox.DAL
{
    public class MemberDB
    {
        public static void SaveRecord(string id, string name, string password)
        {
            OleDbConnection connection = UtilityDB.ConnectDB();
            

            string sql = "INSERT INTO Members([Number], MemberName, MemberPassword) VALUES('"
                + id + "', '" + name + "', '" + password + "')";

            OleDbCommand cmd = new OleDbCommand(sql, connection);

            cmd.ExecuteNonQuery();

            connection.Close();
        }

        public static bool SearchRecord(string id)
        {

            Member mem = new Member();
            OleDbConnection connection = UtilityDB.ConnectDB();
            
            string sql = "SELECT RefMember FROM Members "
                + "WHERE Number = '" + id + "'";

            OleDbCommand cmd = new OleDbCommand(sql, connection);

            OleDbDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                return true;
            
                
            }

            return false;

        }
    }
}