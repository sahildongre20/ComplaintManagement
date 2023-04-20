using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ComplaintManagement
{
    public partial class root_dashboard : System.Web.UI.Page
    {
        String con = System.Configuration.ConfigurationManager.ConnectionStrings["Complaint_dbConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

            string current_user = Session["logged_user"].ToString();
            string departmentId = Session["department"].ToString();
            string department = "";
          
            string id = "";
            string New = "0";
            string Ongoing = "0";
            string Rejected = "0";
            string Resolved = "0";
            string Total = "0";




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



                //getting new complaint count
                string getNewComplaints = "";

                if (departmentId == "8")
                {
                    getNewComplaints = "Select count(*) as newC from dbo.complaints where status = 'new' ";
                }
                else
                {
                    getNewComplaints = "Select count(*) as newC from dbo.complaints where status = 'new' and department = @dept ";

                }
                SqlCommand getNewCmd = new SqlCommand(getNewComplaints, myConnection);
                getNewCmd.Parameters.AddWithValue("@id", id);
                getNewCmd.Parameters.AddWithValue("@dept", departmentId);
                //getNewCmd.Parameters.AddWithValue("@status", "new");

                using (SqlDataReader oReader = getNewCmd.ExecuteReader())
                {
                    while (oReader.Read())
                    {

                        New = oReader["newC"].ToString();



                    }


                }


                //get ongoing complaints
                string getOngoingComplaints = "";

                if (departmentId == "8")
                {
                    getOngoingComplaints = "Select count(*) as OngoingC from dbo.complaints where  status = 'ongoing' ";
                }
                else
                {
                    getOngoingComplaints = "Select count(*) as OngoingC from dbo.complaints where  status = 'ongoing'  and department = @dept";

                }
                SqlCommand getOngoingCmd = new SqlCommand(getOngoingComplaints, myConnection);
                getOngoingCmd.Parameters.AddWithValue("@id", id);
                getOngoingCmd.Parameters.AddWithValue("@dept", departmentId);

                //getNewCmd.Parameters.AddWithValue("@status", "new");

                using (SqlDataReader oReader = getOngoingCmd.ExecuteReader())
                {
                    while (oReader.Read())
                    {


                        Ongoing = oReader["OngoingC"].ToString();


                    }


                }


                //count rejected
                string getRejectedComplaints = "";
                if (departmentId == "8")
                {

                    getRejectedComplaints = "Select count(*) as RejectedC from dbo.complaints where  status = 'rejected'";
                }
                else
                {
                    getRejectedComplaints = "Select count(*) as RejectedC from dbo.complaints where  status = 'rejected'  and department = @dept";

                }

                SqlCommand getRejectedCmd = new SqlCommand(getRejectedComplaints, myConnection);
                getRejectedCmd.Parameters.AddWithValue("@dept", departmentId);

                // getRejectedCmd.Parameters.AddWithValue("@id", id);

                using (SqlDataReader oReader = getRejectedCmd.ExecuteReader())
                {
                    while (oReader.Read())
                    {


                        Rejected = oReader["RejectedC"].ToString();




                    }


                }





                //count resolved
                string getResolvedComplaints = "";
                if (departmentId == "8")
                {
                  getResolvedComplaints = "Select count(*) as ResolvedC from dbo.complaints where  status = 'resolved' ";
                }

                else
                {
                    getResolvedComplaints = "Select count(*) as ResolvedC from dbo.complaints where  status = 'resolved'  and department = @dept";

                }
                SqlCommand getResolvedCmd = new SqlCommand(getResolvedComplaints, myConnection);
                getResolvedCmd.Parameters.AddWithValue("@id", id);
                getResolvedCmd.Parameters.AddWithValue("@dept", departmentId);


                using (SqlDataReader oReader = getResolvedCmd.ExecuteReader())
                {
                    while (oReader.Read())
                    {


                        Resolved = oReader["ResolvedC"].ToString();



                    }


                }


                //count total
                string getTotalComplaints = "";
                if (departmentId == "8")
                {
                     getTotalComplaints = "Select count(*) as TotalC from dbo.complaints ";
                }
                else
                {
                    getTotalComplaints = "Select count(*) as TotalC from dbo.complaints where   department = @dept";

                }

                SqlCommand getTotalCmd = new SqlCommand(getTotalComplaints, myConnection);
                getTotalCmd.Parameters.AddWithValue("@id", id);
                getTotalCmd.Parameters.AddWithValue("@dept", departmentId);


                using (SqlDataReader oReader = getTotalCmd.ExecuteReader())
                {
                    while (oReader.Read())
                    {


                        Total = oReader["TotalC"].ToString();




                    }


                }





                myConnection.Close();
            }






           
          
            lbl_user_name.Text = department;
            lbl_new.Text = New;
            lbl_ongoing.Text = Ongoing;
            lbl_rejected.Text = Rejected;
            lbl_resolved.Text = Resolved;
            lbl_total.Text = Total;


        }

    }
    }
