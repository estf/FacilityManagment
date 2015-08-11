using ProjectFacilityM.Data;
using ProjectFacilityM.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProjectFacilityM.App_Bussiness
{
    public class UserData:BaseData
    {


        public List<User> lstUser(string email)
        {



            List<User> ListUser = new List<User>();
            using (SqlConnection _coneccion = DatabaseConnection("open"))
            {

                SqlCommand comand = new SqlCommand("SELECT Id,name,email,carne,faculty,password,UserRol FROM Usuario where email =" + "'" + email + "'", _coneccion);

                SqlDataReader dataReder = comand.ExecuteReader();
                while (dataReder.Read())
                {
                    User user = new User();
                    user.Id = dataReder.GetInt32(0);
                    user.Name = dataReder.GetString(1);
                    user.Email = dataReder.GetString(2);
                    user.Carne = dataReder.GetString(3);
                    user.Faculty = dataReder.GetString(4);
                    user.Pass = dataReder.GetString(5);
                    user.UserRol = dataReder.GetInt32(6);
                    ListUser.Add(user);


                }
                dataReder.Dispose();
                DatabaseConnection("close");
            }


            return ListUser;
        }
        public bool IsValid(string _user, string _pass)
        {
            bool valid = false;
            using (SqlConnection _coneccion = DatabaseConnection("open"))
            {

                SqlCommand comand = new SqlCommand("SELECT email, password FROM Usuario where email=" + "'" + _user + "'" , _coneccion);
                //+ "AND" + " password=" + "'" + _pass + "'"
                SqlDataReader dataReder = comand.ExecuteReader();

                string usuario="";
                string pass="";
                while (dataReder.Read())
                {
                    usuario = dataReder.GetString(0);
                    pass = dataReder.GetString(1);
                }
                if (usuario.Equals(_user) && pass.Equals(_pass))
                {
                    valid = true;
                }
                dataReder.Dispose();
                DatabaseConnection("close");
            }





            return valid;
        }

        public int UserRol(string _user)
        {
            int RolUser = 0;
            using (SqlConnection _coneccion = DatabaseConnection("open"))
            {

                //SqlCommand comand = new SqlCommand("SELECT UserRol FROM Usuario where email=" + "'" + _user + "'", _coneccion);

                //SqlDataReader dataReder = comand.ExecuteReader();
                SqlCommand comand = new SqlCommand("SELECT UserRol FROM Usuario where email=" + "'" + _user + "'", _coneccion);

                SqlDataReader dataReder = comand.ExecuteReader();
                while (dataReder.Read())
                {
                    RolUser = dataReder.GetInt32(0);
                }

            }
            return RolUser;
        }
    }
}