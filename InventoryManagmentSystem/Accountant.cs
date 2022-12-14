using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Script.Serialization;

namespace InventoryManagmentSystem
{
    public class Accountant : User
    {
        // Method Return the table of Amdmin as a List<Admin>
   
        public List<Accountant> GetAccountantList()
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            List<Accountant> accountantList = new List<Accountant>();
            using (SqlConnection con = new SqlConnection(cs))
            {

                SqlCommand cmd = new SqlCommand("spGetAccountant", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    Accountant accountant = new Accountant();
                    accountant.Id = Convert.ToInt32(rdr["id"]);
                    accountant.Name = rdr["name"].ToString();
                    accountant.Password = rdr["password"].ToString();
                    accountantList.Add(accountant);
                }

            }
            return accountantList;


        }



       



    }

}