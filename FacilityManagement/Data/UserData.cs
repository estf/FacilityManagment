using FacilityManagement.App_Domain;
using Library.Data;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FacilityManagement.Data
{
    public class UserData:BaseData
    {
        public UserData() { }
        public void InsertUser(User user)
        {
            try
            {
                SqlConnection con = DatabaseConnection("open");
                SqlCommand sqlcommand;
                string databaseCommand = " INSERT INTO User (name,email,carne,password) values (" + "'" + user.Name + "'" + "," + "'" + user.Email + "'" + "," + "'" + user.Carne + "'" + "," + "'" + user.Pass + "'"  + ")";
                sqlcommand = new SqlCommand(databaseCommand, con);
                sqlcommand.ExecuteNonQuery();
                sqlcommand.Dispose();
                DatabaseConnection("close");
            }
            catch (SqlException sqlException)
            {
                Console.WriteLine("Database error:" + sqlException.ToString());

            }
        }
        public IEnumerable<User> SelectUser()
        {
            List<User> authors = new List<User>();
            IEnumerable<User> items = null;
            try
            {

                SqlDataReader myReader = null;
                SqlConnection con = DatabaseConnection("open");
                SqlCommand sqlcommand;
                string databaseCommand = " SELECT * FROM user";
                sqlcommand = new SqlCommand(databaseCommand, con);
                //Ejecutar el comando SQL
                myReader = sqlcommand.ExecuteReader();
                while (myReader.Read())
                {
                    //authors.Add(new Reservation(myReader["name"].ToString(), myReader["name"].ToString()));
                }

                DatabaseConnection("close");
            }
            catch (SqlException sqlException)
            {
                Console.WriteLine("Database error:" + sqlException.ToString());

            }

            items = authors;
            return items;

        }
    }
    
}