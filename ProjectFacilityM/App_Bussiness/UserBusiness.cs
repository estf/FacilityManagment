using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectFacilityM.App_Bussiness
{
    public class UserBusiness
    {


        public static bool ValidateUser(string user, string pass)
        {
            UserData Udata = new UserData();


            return Udata.IsValid(user, pass);

        }
        public static int RolUser(string user)
        {
            UserData Udata = new UserData();


            return Udata.UserRol(user);

        }
    }
}