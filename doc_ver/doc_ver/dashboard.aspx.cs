using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;
using System.Drawing;
using System.Net;
using System.Collections.Specialized;
using System.Configuration;

namespace doc_ver
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["User"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {

                String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
                SqlConnection sqlcon = new SqlConnection(constring);
                String squery4 = "select * from AdminLogin where Email ='" + Session["user"] + "'";
                SqlCommand cmd4 = new SqlCommand(squery4, sqlcon);
                SqlDataAdapter sda4 = new SqlDataAdapter(cmd4);
                DataTable dt4 = new DataTable();

                sda4.Fill(dt4);

                Label2.Text = dt4.Rows[0][0].ToString() + " " + dt4.Rows[0][1].ToString();

                sqlcon.Close();
                sda4.Dispose();

            }
        }

        protected void KycDoc_Click(object sender, EventArgs e)
        {
            Response.Redirect("loan.aspx");
        }

        protected void LoanDoc_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomeLoanList.aspx");
        }

        protected void SignOut_Click1(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("login.aspx");
        }
    }
}