using FacilityManagement.App_Domain;
using Library.Data;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FacilityManagement.Data
{
    public class LaboratoryData : BaseData
    {

        public void InsertBook(Laboratory lab)
        {
            //open database connection
            DatabaseConnection(1);

            SqlCommand sqlCommand;
            string databaseCommand = "INSERT INTO [dbo.Laboratory] (id, name, capacity,type , faculty_id)" + " values (" + lab.Name + ", " + lab.Capacity + ", " + lab.Type + ", " + lab.FacultyId + "";
            try
            {
                sqlCommand = new SqlCommand(databaseCommand);
                sqlCommand.ExecuteNonQuery();
                sqlCommand.Dispose();
                DatabaseConnection(0);


            }
            catch (SqlException sqlException)
            {
                Console.WriteLine("Database error: " + sqlException.ToString());


            }

        }
    }

     



}