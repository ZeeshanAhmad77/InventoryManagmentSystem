using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InventoryManagmentSystem
{
    public class Accountant : User
    {
        //Constructer
        public Accountant()
        { }

        
            public Accountant( string name,string password)
        {
            this.Name = name;
            this.Password = password;
            
        }
        // Method Returns the LIst of Accountant
        public List<Accountant>  GetAccountantList()
        {
            List<Accountant> lisOfAccountant = new List<Accountant>();
            lisOfAccountant.Add(new Accountant("Accountant1", "123"));
            lisOfAccountant.Add(new Accountant("Accountant2", "123"));
            lisOfAccountant.Add(new Accountant("Accountant3", "123"));
            lisOfAccountant.Add(new Accountant("Accountant4", "123"));
            
            return lisOfAccountant;
        }



    }

}