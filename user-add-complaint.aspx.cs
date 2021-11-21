using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ComplaintManagement
{
    public partial class user_add_complaint : System.Web.UI.Page
    {
        String con = System.Configuration.ConfigurationManager.ConnectionStrings["Complaint_dbConnectionString"].ConnectionString;


       // String con = @"Data Source=(localdb)\ProjectsV13;Initial Catalog=Complaint_db;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        string id;

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
                        id = oReader["id"].ToString();

                    }

                    myConnection.Close();
                }
            }





            lbl_user_name.Text = fname + " " + lname;


        }

        protected void Add_complaint(object sender, EventArgs e)
        {
            if (!imgUpload.HasFile)
            {
                
            }
            else
            {
                int lenght = imgUpload.PostedFile.ContentLength;
                byte[] image = new byte[lenght];
                imgUpload.PostedFile.InputStream.Read(image, 0, lenght);


                using (SqlConnection sqlconn = new SqlConnection(con))
                {
                    sqlconn.Open();
                    SqlCommand add = new SqlCommand("add_complaint", sqlconn);
                    add.CommandType = System.Data.CommandType.StoredProcedure;
                    add.Parameters.AddWithValue("@id", Convert.ToInt32(hfuserid.Value == "" ? "0" : hfuserid.Value));
                    add.Parameters.AddWithValue("@user_id", id);
                    add.Parameters.AddWithValue("@title", title.Text.Trim());
                    add.Parameters.AddWithValue("@description", description.Text.Trim());
                    add.Parameters.AddWithValue("@address", address.Text.Trim());
                    add.Parameters.AddWithValue("@city", city.Text.Trim());
                    add.Parameters.AddWithValue("@pincode", pincode.Text.Trim());
                    add.Parameters.AddWithValue("@photo", "test string");
                    add.Parameters.AddWithValue("@department", department.SelectedValue);
                    add.Parameters.AddWithValue("@image", image);







                    add.ExecuteNonQuery();
                    //  clr();
                    //  errormsg.Visible = false;
                    // successmsg.Text = "success";




                }

            }
        }



       

    }
    }
