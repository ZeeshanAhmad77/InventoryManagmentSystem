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
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            heading.InnerText = "Welcome to Admin Page " ;
            name.InnerText = "User Name " + Session["userName"].ToString() ;
            password.InnerText = "Having the password  = " + Session["password"].ToString();
        }

        protected void submitAccountantData_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            List<Admin> adminList = new List<Admin>();
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                var sql = "INSERT INTO tblAccountant(name, password) VALUES(@name, @password)";
                using (var cmd = new SqlCommand(sql, con))
                {
                    cmd.Parameters.AddWithValue("@name", txtAccountantName.Value);
                    cmd.Parameters.AddWithValue("@password", txtAccountantPassword.Value);

                    cmd.ExecuteNonQuery();
                }
                con.Close();


            }


        }

        protected void btnHomePage_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}