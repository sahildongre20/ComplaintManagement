using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ComplaintManagement
{
    public partial class admin_register : System.Web.UI.Page
    {
        String con = System.Configuration.ConfigurationManager.ConnectionStrings["Complaint_dbConnectionString"].ConnectionString;
        String cEmail = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Reg_Click(object sender, EventArgs e)
        {



        }
    }
}