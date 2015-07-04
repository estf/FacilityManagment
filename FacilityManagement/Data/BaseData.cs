using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Library.Data
{
    public class BaseData
    {
        public SqlConnection DatabaseConnection(int actionToPerform)
        {
           // string connectionString ="Data Source=localhost;Integrated Security=True";
            string connectionString = @"Data Source=jhonn\sqlexpress;Initial Catalog=ProyecAll;Integrated Security=True";
            SqlConnection sqlConnection = new SqlConnection(connectionString);

            try
            {
                if (actionToPerform==1)
                {
                    sqlConnection.Open();
                }
                else
                {
                    sqlConnection.Close();
                }
            }
            catch (SqlException sqlException)
            {
                Console.WriteLine("Database error: " + sqlException.ToString());
            }

            return sqlConnection;
        }
    }
}