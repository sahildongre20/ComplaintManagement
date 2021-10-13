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
    public partial class regsiter : System.Web.UI.Page
    {
        String con = @"Data Source=(localdb)\ProjectsV13;Initial Catalog=Complaint_db;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
        protected void Register_Click(object sender, EventArgs e)
        {
            if (fname.Text == "" || lname.Text == "" || email.Text == "" || mobile.Text == "" || dob.Text == ""
                || addr.Text == "" || city.Text == "" || pin.Text == "" || pass.Text == "" || cpass.Text == "")
            {
                errormsg.Text = "<p>All fields are Mandatory</p>";
            }
            else if (cpass.Text != pass.Text)
            {
                
                errormsg.Text = "<p>Passwords Don't match</p>";

            }

            else
            {


                using (SqlConnection sqlconn = new SqlConnection(con))
                {
                    sqlconn.Open();
                    SqlCommand add = new SqlCommand("regUser", sqlconn);
                    add.CommandType = CommandType.StoredProcedure;
                    add.Parameters.AddWithValue("@id", Convert.ToInt32(hfuserid.Value == "" ? "0" : hfuserid.Value));
                    add.Parameters.AddWithValue("@fname", fname.Text.Trim());
                    add.Parameters.AddWithValue("@lname", lname.Text.Trim());
                    add.Parameters.AddWithValue("@email", email.Text.Trim());
                    add.Parameters.AddWithValue("@mobile", mobile.Text.Trim());
                    add.Parameters.AddWithValue("@dob", dob.Text.Trim());
                    add.Parameters.AddWithValue("@addr", addr.Text.Trim());
                    add.Parameters.AddWithValue("@city", city.Text.Trim());
                    add.Parameters.AddWithValue("@pin", pin.Text.Trim());
                    add.Parameters.AddWithValue("@pass", pass.Text.Trim());



                    add.ExecuteNonQuery();
                    clr();
                    errormsg.Visible = false;
                    successmsg.Text = "success";




                }
            }

            void clr()
            {
                fname.Text = lname.Text = email.Text = mobile.Text = dob.Text = addr.Text
                    = city.Text = pin.Text = pass.Text = hfuserid.Value = cpass.Text = "";
            }
        }
    }
}