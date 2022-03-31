using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using prjWebCsAdoOmnivox.DAL;

namespace prjWebCsAdoOmnivox
{
    public class Student
    {
        private long refStudent;
        private long studentId;
        private string fullName;
        private int yearBirth;

        public long RefStudent { get => refStudent; set => refStudent = value; }
        public long StudentId { get => studentId; set => studentId = value; }
        public int YearBirth { get => yearBirth; set => yearBirth = value; }
        public string FullName { get => fullName; set => fullName = value; }

        public static bool SearchStudent(string id, string name, int year)
        {
            return StudentDB.SearchRecord(id, name, year);
        }


    }
}