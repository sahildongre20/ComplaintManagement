using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ComplaintManagement
{
    public partial class manage_complaint : System.Web.UI.Page
    {
        String con = System.Configuration.ConfigurationManager.ConnectionStrings["Complaint_dbConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

         
            string current_user = Session["logged_user"].ToString();
            string departmentId = Session["department"].ToString();
            string department = "";
            string id = "";


            using (SqlConnection myConnection = new SqlConnection(con))
            {
                string oString = "Select d.department_name as dept ,  a.id from dbo.admin_data a join departments d on d.id = a.department where email=@email";
                SqlCommand oCmd = new SqlCommand(oString, myConnection);
                oCmd.Parameters.AddWithValue("@email", current_user);
                myConnection.Open();
                using (SqlDataReader oReader = oCmd.ExecuteReader())
                {
                    while (oReader.Read())
                    {


                        id = oReader["id"].ToString();
                        department = oReader["dept"].ToString();

                    }

                    Session["user_id"] = id;
                }

               




            }

            lbl_user_name.Text = department;

        }

       

        }

        
    }
