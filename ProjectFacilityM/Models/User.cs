using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectFacilityM.Models
{
    public class User
    {

        public int Id { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Carne { get; set; }
        public string Faculty { get; set; }
        public string Pass { get; set; }
        public int UserRol { get; set; }
        public User() { }
        public User(int id, string name, string email, string carne, string faculty, string pass, int userRol)
        {

            this.Id = id;
            this.Name = name;
            this.Email = email;
            this.Faculty = faculty;
            this.Pass = pass;
            this.UserRol = userRol;

        }
        public User(string name, string email, string carne, string faculty, string pass, int userRol)
        {


            this.Name = name;
            this.Email = email;
            this.Faculty = faculty;
            this.Pass = pass;
            this.UserRol = userRol;

        }
   
    }
}