using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using prjWebCsAdoOmnivox.DAL;

namespace prjWebCsAdoOmnivox.BLL
{
    public class Member
    {
        private long refMember;
        private long studentId;
        private string fullName;
        private string memberPassword;
        private string status;

        public long RefMember { get => refMember; set => refMember = value; }
        public long StudentId { get => studentId; set => studentId = value; }
        public string FullName { get => fullName; set => fullName = value; }
        public string MemberPassword { get => memberPassword; set => memberPassword = value; }
        public string Status { get => status; set => status = value; }
    
        public static void SaveMember(string number, string name, string pw)
        {
            MemberDB.SaveRecord(number, name, pw);
        }

        public static bool SearchMember(string number)
        {
            return MemberDB.SearchRecord(number);
        }
    
    }
}