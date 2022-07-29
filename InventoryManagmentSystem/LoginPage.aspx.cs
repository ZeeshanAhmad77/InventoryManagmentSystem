using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InventoryManagmentSystem
{
    public partial class LoginPage : System.Web.UI.Page
    {
        // objects
        Admin admin = new Admin();
        Accountant accountant = new Accountant();
        // objects of List
        List<Admin> adminList = new List<Admin>();
        List<Accountant> accountantList = new List<Accountant>();

        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrorMessage.Visible = false;

            if(!IsPostBack)
            {
                Session["listOfAdmin"] = admin.GetAdminList();
                Session["listOfAccountant"] = accountant.GetAccountantList();
            }
        }


        protected void login_Click(object sender, EventArgs e)
        {
            lblErrorMessage.Visible = false;
            //Getting the Lists of Admins and users

            adminList = admin.GetAdminList();
            accountantList = accountant.GetAccountantList();

            // Loop on admin list to go to admin page

            foreach (Admin admin in adminList)
            {
                if (userName.Text.Trim().ToLower() == admin.Name.Trim().ToLower() && password.Text.Trim().ToLower() == admin.Password.Trim().ToLower())
                {
                    Session["userName"] = userName.Text;
                    Session["password"] = password.Text;
                    Response.Redirect("AdminPage.aspx");

                }
            }


            // Loop on admin list to go to admin page
            foreach (Accountant accountant in accountantList)
            {
                if (userName.Text.Trim().ToLower() == accountant.Name.Trim().ToLower() && password.Text.Trim().ToLower() == accountant.Password.Trim().ToLower())
                {
                    Session["userName"] = userName.Text;
                    Session["password"] = password.Text;
                    Response.Redirect("AccountantPage.aspx");

                }
            }

            lblErrorMessage.Visible = true;
        }
    }
}