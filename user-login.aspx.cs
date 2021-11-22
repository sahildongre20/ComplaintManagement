using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace ComplaintManagement
{
    public partial class login : System.Web.UI.Page
    {
        // String con = @"Data Source=(localdb)\ProjectsV13;Initial Catalog=Complaint_db;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        String con = System.Configuration.ConfigurationManager.ConnectionStrings["Complaint_dbConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void blogin_Click(object sender, EventArgs e)
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
                String encryptedPass = Encrypt(txtpass.Text.Trim());
                using (SqlConnection myConnection = new SqlConnection(con))
                {
                    string oString = "Select Id  from dbo.user_data where email=@email and pass=@pass";
                    SqlCommand oCmd = new SqlCommand(oString, myConnection);
                    oCmd.Parameters.AddWithValue("@email", username.Text);
                    oCmd.Parameters.AddWithValue("@pass", encryptedPass);
                    myConnection.Open();
                    using (SqlDataReader oReader = oCmd.ExecuteReader())
                    {
                        while (oReader.Read())
                        {

                            id = oReader["Id"].ToString();
                        }

                        myConnection.Close();
                    }
                }

                if (id != null)
                {
                    errormsg.Visible = false;
                    successmsg.Text = "<p>Succesfull login</p>";
                    string current_user = username.Text;
                    Session["logged_user"] = current_user;
                    Response.Redirect("https://localhost:44316/user-dashboard.aspx");

                }
                else
                {

                    errormsg.Text = "<p></br></br>Username or password Incorrect</p>";

                    errormsg.Visible = true;
                }
            }
        }

        string Encrypt(String str)
        {
            byte[] b = System.Text.ASCIIEncoding.ASCII.GetBytes(str);
            string enc = Convert.ToBase64String(b);
            return enc;

        }
    }
}