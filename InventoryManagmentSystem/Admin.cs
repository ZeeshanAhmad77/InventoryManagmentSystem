using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InventoryManagmentSystem
{
     public class Admin :User
    {


        //Constructer

        public Admin()
        { 
        }


        //Constructer
        
        public Admin( string name,string password)
        {
            this.Name = name;
            this.Password = password;
            
        }

        public List<Admin>  GetAdminList()
        {
            
            List<Admin> lisOfAdmin = new List<Admin>();
            lisOfAdmin.Add(new Admin("Admin1", "123"));
            lisOfAdmin.Add(new Admin("Admin2", "123"));
            lisOfAdmin.Add(new Admin("Admin3", "123"));
            lisOfAdmin.Add(new Admin("Admin4", "123"));
            return lisOfAdmin;
        }

        public List<Accountant> AddAccountant(Accountant newAccountant )
        {
            Accountant accountant = new Accountant();
            List<Accountant> listOfAccountant;           
            listOfAccountant= accountant.GetAccountantList();
            listOfAccountant.Add(newAccountant);
            return listOfAccountant;
        }

    }
}