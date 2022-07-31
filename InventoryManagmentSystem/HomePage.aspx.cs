using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Script.Serialization;

namespace InventoryManagmentSystem
{
    public partial class HomePage : System.Web.UI.Page
    {
       
      
        protected void Page_Load(object sender, EventArgs e)
        {

            //if (Session["userName"].ToString() == null && Session["password"].ToString() == null)
            //{
            //    Response.Redirect("LoginPage.aspx");
            //}
            //else { return; }


        }
        // Customer Operation
        protected void submitCustomerData_Click(object sender, EventArgs e)
        {
            Customer customer = new Customer();
            customer.AddCustomer(txtCustomertName.Value, txtCustomerAdress.Value);
        }



        protected void deleteCustomerData_Click(object sender, EventArgs e)
        {
            Customer customer = new Customer();
            customer.DeleteCustomer(Convert.ToInt32(CustomerId.Value));
        }
       

        protected void updateCustomerData_Click(object sender, EventArgs e)
        {
            Customer customer = new Customer();
            customer.UpdateCustomer(Convert.ToInt32(CustomerId.Value), txtCustomertName.Value, txtCustomerAdress.Value);
        }
        
       
        // Product Operation
        protected void submitProductData_Click(object sender, EventArgs e)
        {
            Product product = new Product();
            product.AddProduct(txtProductName.Value, Convert.ToInt32(txtCostPrice.Value), Convert.ToInt32(txtSalePrice.Value));
        }

        protected void deleteProductData_Click(object sender, EventArgs e)
        {
            Product product = new Product();
            product.DeleteProduct(Convert.ToInt32(ProductId.Value));
        }

        protected void updateProductData_Click(object sender, EventArgs e)
        {
            Product product = new Product();
            product.UpdateProduct(Convert.ToInt32(ProductId.Value), txtProductName.Value, Convert.ToInt32(txtCostPrice.Value),Convert.ToInt32( txtSalePrice.Value));
        }
    }
}