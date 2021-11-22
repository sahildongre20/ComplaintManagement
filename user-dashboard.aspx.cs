using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace ComplaintManagement
{
    public partial class user_dashboard : System.Web.UI.Page
    {

        String con = @"Data Source=(localdb)\ProjectsV13;Initial Catalog=Complaint_db;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";

        protected void Page_Load(object sender, EventArgs e)
        {
            string current_user = Session["logged_user"].ToString();
            string fname = "";
            string lname = "";
            string id = "";
            string New = "0";
            string Ongoing = "0";
            string Rejected = "0";
            string Resolved = "0";
            string Total = "0";




            using (SqlConnection myConnection = new SqlConnection(con))
            {
                string oString = "Select fname , lname ,  id from dbo.user_data where email=@email";
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

                    Session["user_id"] = id;
                }

                string getNewComplaints = "Select count(*) as newC from dbo.complaints where user_id = @id and status = 'new' ";

                SqlCommand getNewCmd = new SqlCommand(getNewComplaints, myConnection);
                getNewCmd.Parameters.AddWithValue("@id", id);
                //getNewCmd.Parameters.AddWithValue("@status", "new");

                using (SqlDataReader oReader = getNewCmd.ExecuteReader())
                {
                    while (oReader.Read())
                    {

                        New = oReader["newC"].ToString();



                    }


                }


                //get ongoing complaints

                string getOngoingComplaints = "Select count(*) as OngoingC from dbo.complaints where user_id =" + id + "and status = 'ongoing'";

                SqlCommand getOngoingCmd = new SqlCommand(getOngoingComplaints, myConnection);
                getOngoingCmd.Parameters.AddWithValue("@id", id);
                //getNewCmd.Parameters.AddWithValue("@status", "new");

                using (SqlDataReader oReader = getOngoingCmd.ExecuteReader())
                {
                    while (oReader.Read())
                    {


                        Ongoing = oReader["OngoingC"].ToString();


                    }


                }


                //count rejected
                string getRejectedComplaints = "Select count(*) as RejectedC from dbo.complaints where user_id =" + id + "and status = 'rejected'";


                SqlCommand getRejectedCmd = new SqlCommand(getRejectedComplaints, myConnection);
                // getRejectedCmd.Parameters.AddWithValue("@id", id);

                using (SqlDataReader oReader = getRejectedCmd.ExecuteReader())
                {
                    while (oReader.Read())
                    {


                        Rejected = oReader["RejectedC"].ToString();




                    }


                }





                //count resolved          
                string getResolvedComplaints = "Select count(*) as ResolvedC from dbo.complaints where user_id = @id and status = 'resolved'";

                SqlCommand getResolvedCmd = new SqlCommand(getResolvedComplaints, myConnection);
                getResolvedCmd.Parameters.AddWithValue("@id", id);

                using (SqlDataReader oReader = getResolvedCmd.ExecuteReader())
                {
                    while (oReader.Read())
                    {


                        Resolved = oReader["ResolvedC"].ToString();



                    }


                }


                //count total
                string getTotalComplaints = "Select count(*) as TotalC from dbo.complaints where user_id = @id";

                SqlCommand getTotalCmd = new SqlCommand(getTotalComplaints, myConnection);
                getTotalCmd.Parameters.AddWithValue("@id", id);

                using (SqlDataReader oReader = getTotalCmd.ExecuteReader())
                {
                    while (oReader.Read())
                    {


                        Total = oReader["TotalC"].ToString();




                    }


                }





                myConnection.Close();
            }







            lbl_user_name.Text = fname + " " + lname;
            lbl_new.Text = New;
            lbl_ongoing.Text = Ongoing;
            lbl_rejected.Text = Rejected;
            lbl_resolved.Text = Resolved;
            lbl_total.Text = Total;


        }
    }
}
