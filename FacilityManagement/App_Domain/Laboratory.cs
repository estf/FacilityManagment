using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FacilityManagement.App_Domain
{
    public class Laboratory
    {
        private int id;
        private string name;
        private int capacity;
        private string type;
        private int facultyId;



        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        public int Capacity
        {
            get { return capacity; }
            set { capacity = value; }
        }

        public string Type
        {
            get { return type; }
            set { type = value; }
        }

        public int FacultyId
        {
            get { return facultyId; }
            set { facultyId = value; }
        }
    }


}