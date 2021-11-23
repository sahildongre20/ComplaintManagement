using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ComplaintManagement
{
    public partial class admin_login : System.Web.UI.Page
    {
        String con = System.Configuration.ConfigurationManager.ConnectionStrings["Complaint_dbConnectionString"].ConnectionString;
        string department;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            if (username.Text == "")
            {
                errormsg.Text = "<p>Please Enter Email";
            }
            else if (txtpass.Text == "")
            {
                errormsg.Text = "<p>Please Enter Password";
            }
            else
            {
                String id = null;
                using (SqlConnection myConnection = new SqlConnection(con))
                {
                    string oString = "Select Id , department from dbo.admin_data where email=@email and password=@pass";
                    SqlCommand oCmd = new SqlCommand(oString, myConnection);
                    oCmd.Parameters.AddWithValue("@email", username.Text);
                    oCmd.Parameters.AddWithValue("@pass", txtpass.Text.Trim());
                    myConnection.Open();
                    using (SqlDataReader oReader = oCmd.ExecuteReader())
                    {
                        while (oReader.Read())
                        {

                            id = oReader["Id"].ToString();
                            department = oReader["department"].ToString();
                        }

                        myConnection.Close();
                    }
                }

                if (id != null)
                {
                    errormsg.Visible = false;
                   
                    string current_user = username.Text;
                    Session["logged_user"] = current_user;
                    Session["department"] = department;
                    if (department == "8")
                    {
                        Response.Redirect("https://localhost:44316/root-dashboard.aspx");

                    }
                    else
                    {
                        Response.Redirect("https://localhost:44316/admin-dashboard.aspx");

                    }

                }
                else
                {

                    errormsg.Text = "<p></br></br>Username or password Incorrect</p>";

                    errormsg.Visible = true;
                }
            }
        }
    }
}