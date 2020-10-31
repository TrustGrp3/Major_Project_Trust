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
using System.Configuration;
using System.Collections.Specialized;

namespace doc_ver
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void logIn_Click(object sender, EventArgs e)
        {


            String user = email.Text.Trim();



            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;

            SqlConnection sqlcon = new SqlConnection(constring);

            String squery = "select * from Admin where Email ='" + email.Text + "' AND Password = '" + Password.Text + "'";
            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                Session["user"] = user;
                Response.Redirect("dashboard.aspx");

            }
            else
            {
                Label1.Text = "Invalid Credentials";
                email.Text = "";
                Password.Text = "";

            }


            sqlcon.Close();
            sda.Dispose();


        }
    }
}