using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FacilityManagement.Data
{
  public  class User
    {


      public string Name { get; set; }
      public string Email { get; set; }
      public string Carne { get; set; }
      public string Facultad { get; set; }
      public string Pass { get; set; }
      // field shows the type of user.
      public int Type { get; set; }

      public User() { }
      public User(string _Name,string _Email,string _Carne,string _Facultad,string _Pass,int _type) {

          this.Name = _Name;
          this.Email = _Email;
          this.Carne = _Carne;
          this.Facultad = _Facultad;
          this.Pass = _Pass;
          this.Type = _type;
      
      }
    }
}
