using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;

namespace prjWebCsAdoOmnivox
{
    public class UtilityDB
    {
        public static OleDbConnection ConnectDB()
        {
            OleDbConnection connection = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\overl\source\repos\prjWebCsAdoOmnivox\App_Data\omnivoxDB.mdb;Persist Security Info=True");
            connection.Open();

            return connection;
        }
    }
}