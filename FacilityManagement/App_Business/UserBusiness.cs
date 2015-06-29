using FacilityManagement.App_Domain;
using FacilityManagement.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FacilityManagement.App_Business
{
    public class UserBusiness
    {
        UserData userData;
        public UserBusiness(){
            userData = new UserData();
        }
        public void InsertReservation(User user)
        {

            userData.InsertUser(user);
        }
        public IEnumerable<User> SelectUser()
        {

            return userData.SelectUser();
        }
            
    }
}