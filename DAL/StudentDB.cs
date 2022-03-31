using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;

namespace prjWebCsAdoOmnivox
{
    public class StudentDB
    {
        public static bool SearchRecord(string id, string name, int year)
        {
            Student stud = new Student();
            OleDbConnection connection = UtilityDB.ConnectDB();
            
            string sql = "SELECT RefStudent FROM Students"
                + " WHERE Number = '" + id + "' AND StudentName = '"+ name + "' AND YearBirth = " + year;

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