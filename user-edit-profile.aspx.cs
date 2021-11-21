using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ComplaintManagement
{
    public partial class user_edit_profile : System.Web.UI.Page
    {
        String con = @"Data Source=(localdb)\ProjectsV13;Initial Catalog=Complaint_db;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";

        protected void Page_Load(object sender, EventArgs e)
        {
            string current_user = Session["logged_user"].ToString();
            string fname = "";
            string lname = "";



            using (SqlConnection myConnection = new SqlConnection(con))
            {
                string oString = "Select *  from dbo.user_data where email=@email";
                SqlCommand oCmd = new SqlCommand(oString, myConnection);
                oCmd.Parameters.AddWithValue("@email", current_user);
                myConnection.Open();
                using (SqlDataReader oReader = oCmd.ExecuteReader())
                {
                    while (oReader.Read())
                    {

                        fname = oReader["fname"].ToString();
                        lname = oReader["lname"].ToString();

                    }

                    myConnection.Close();
                }
            }





            lbl_user_name.Text = fname + " " + lname;
        }
    }
}