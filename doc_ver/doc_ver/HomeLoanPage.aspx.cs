﻿using System;
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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["User"] == null)
            {

                Response.Redirect("login.aspx");

            }
            else
            {

                String PAN_NUM = String.Empty;
                PAN_NUM = Request.QueryString["PanNum"];

                Label1.Text = PAN_NUM;


                String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
                SqlConnection sqlcon = new SqlConnection(constring);

                String squery = "select * from HomeLoan " +
                    " where PAN_NO = '" + Label1.Text + "'";
                SqlCommand cmd = new SqlCommand(squery, sqlcon);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();

                sda.Fill(dt);

                if (dt.Rows.Count > 0)
                {

                    name.Text = dt.Rows[0]["FULL_NAME"].ToString();
                    fatherName.Text = dt.Rows[0][1].ToString();
                    motherName.Text = dt.Rows[0][2].ToString();
                    dob.Text = dt.Rows[0][0].ToString();
                    gender.Text = dt.Rows[0][0].ToString();
                    shadi.Text = dt.Rows[0][0].ToString();
                    citizenship.Text = dt.Rows[0][0].ToString();
                    resident.Text = dt.Rows[0][0].ToString(); 
                    occupation.Text = dt.Rows[0][0].ToString();
                    Number.Text = dt.Rows[0][0].ToString();
                    email.Text = "sudarshan@gmail.com";
                    PanNo.Text = Label1.Text;



                    IncomeDocStatusLabel.Text = dt.Rows[0]["IncomeDocStatus"].ToString();
                    CorpDocStatusLabel.Text = dt.Rows[0]["PvtCompanyDocStatus"].ToString();
                    PartnerDocStatusLabel.Text = dt.Rows[0]["PartnershipDocStatus"].ToString();
                    AddiDocStatusLabel.Text = dt.Rows[0]["AdditionalIncomeDocStatus"].ToString();
                    StatementDocStatusLabel.Text = dt.Rows[0]["BankStatementDocStatus"].ToString();
                    OtherDocStatusLabel.Text = dt.Rows[0]["OtherDocStatus"].ToString();


                    Photo.ImageUrl = "~/Images/passport2.jpg";
                    Photo_1.ImageUrl = "~/Images/passport2.jpg";

                    Sign.ImageUrl = "~/Images/sign2.jpg";
                    Sign_1.ImageUrl = "~/Images/sign2.jpg";

                    IncomeDoc.ImageUrl = "~/Images/income2.jpg";
                    IncomeDoc_1.ImageUrl = "~/Images/income2.jpg";

                    CorpDoc.ImageUrl = "~/Images/gtick.jpg";
                    CorpDoc_1.ImageUrl = "~/Images/gtick.jpg";

                    PartnerDoc.ImageUrl = "~/Images/gtick.jpg";
                    PartnerDoc_1.ImageUrl = "~/Images/gtick.jpg";

                    AddiDoc.ImageUrl = "~/Images/gtick.jpg";
                    AddiDoc_1.ImageUrl = "~/Images/gtick.jpg";

                    StatementDoc.ImageUrl = "~/Images/gtick.jpg";
                    StatementDoc_1.ImageUrl = "~/Images/gtick.jpg";

                    OtherDoc.ImageUrl = "~/Images/BankStatement2.png";
                    OtherDoc_1.ImageUrl = "~/Images/BankStatement2.png";


                }
                else
                {
                    


                    name.Text = "";
                    fatherName.Text = "";
                    motherName.Text = "";
                    dob.Text = "";
                    gender.Text = "";
                    shadi.Text = "";
                    citizenship.Text = "";
                    resident.Text = "";
                    occupation.Text = "";

                    Number.Text = "";
                    email.Text = "";

                    
                }

                sqlcon.Close();
                sda.Dispose();

            }

        }


        protected void Submit_Click(object sender, EventArgs e)
        {

            if (IncomeDocStatusLabel.Text == "Verified" && CorpDocStatusLabel.Text == "Verified" || PartnerDocStatusLabel.Text == "Verified" && StatementDocStatusLabel.Text == "Verified" && OtherDocStatusLabel.Text == "Verified" || AddiDocStatusLabel.Text == "Verified")

            {
                OverallStatus.Text = "Verified";



                String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
                SqlConnection sqlcon = new SqlConnection(constring);

                String squery = "UPDATE HomeLoan SET IncomeDocStatus='" + IncomeDocStatusLabel + "' , PvtCompanyDocStatus='" + CorpDocStatusLabel.Text + "' , PartnershipDocStatus='" + PartnerDocStatusLabel.Text + "' , AdditionalIncomeDocStatus='" + AddiDocStatusLabel.Text + "' , BankStatementDocStatus='" + StatementDocStatusLabel.Text + "' , OtherDocStatus='" + OtherDocStatusLabel.Text + "' , OverAllStatus='" + OverallStatus.Text + "' " +
                    " where PAN_NO = '" + Label1.Text + "'";

                SqlCommand cmd = new SqlCommand(squery, sqlcon);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();

                sda.Fill(dt);

                Response.Redirect("HomeLoanList.aspx");

            }

            else
            {
                OverallStatus.Text = "Pending";


                String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
                SqlConnection sqlcon = new SqlConnection(constring);

                String squery = "UPDATE HomeLoan SET IncomeDocStatus='" + IncomeDocStatusLabel.Text + "' , PvtCompanyDocStatus='" + CorpDocStatusLabel.Text + "' , PartnershipDocStatus='" + PartnerDocStatusLabel.Text + "' , AdditionalIncomeDocStatus='" + AddiDocStatusLabel.Text + "' , BankStatementDocStatus='" + StatementDocStatusLabel.Text + "' , OtherDocStatus='" + OtherDocStatusLabel.Text + "' , OverAllStatus='" + OverallStatus.Text + "' " +
                    " where PAN_NO = '" + Label1.Text + "'";

                SqlCommand cmd = new SqlCommand(squery, sqlcon);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();

                sda.Fill(dt);

                Response.Redirect("HomeLoanList.aspx");

            }

            

        }

        protected void PhotoNotVerified_TextChanged(object sender, EventArgs e)
        {

        }

        protected void IncomeVerify_Click(object sender, EventArgs e)
        {
            IncomeDocStatusLabel.Text = "Verified";

            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(constring);            

            String squery = "UPDATE HomeLoan SET IncomeDocStatus='" + IncomeDocStatusLabel.Text + "'" +
                " where PAN_NO = '" + Label1.Text + "'";

            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);

        }

     
        protected void IncomeDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            IncomeDocStatusLabel.Text = IncomeDropDown.SelectedValue;

            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(constring);

            String squery = "UPDATE HomeLoan SET IncomeDocStatus='" + IncomeDocStatusLabel.Text + "'" +
                " where PAN_NO = '" + Label1.Text + "'";

            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);
        }

        

        protected void IncomeNotVerify_TextChanged(object sender, EventArgs e)
        {
            IncomeDocStatusLabel.Text = PhotoNotVerified.Text;

            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(constring);

            String squery = "UPDATE HomeLoan SET IncomeDocStatus='" + IncomeDocStatusLabel.Text + "'" +
                " where PAN_NO = '" + Label1.Text + "'";

            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);
        }

        protected void CorpDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            CorpDocStatusLabel.Text = CorpDropDown.SelectedValue;

            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(constring);

            String squery = "UPDATE HomeLoan SET PvtCompanyDocStatus='" + CorpDocStatusLabel.Text + "'" +
                " where PAN_NO = '" + Label1.Text + "'";

            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);



        }

        protected void CorpVerify_Click(object sender, EventArgs e)
        {
            CorpDocStatusLabel.Text = "Verified";

            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(constring);

            String squery = "UPDATE HomeLoan SET PvtCompanyDocStatus='" + CorpDocStatusLabel.Text + "'" +
                " where PAN_NO = '" + Label1.Text + "'";

            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);


        }

        protected void CorpNotVerify_TextChanged(object sender, EventArgs e)
        {




        }

        protected void PartnerDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            PartnerDocStatusLabel.Text = PartnerDropDown.SelectedValue;

            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(constring);

            String squery = "UPDATE HomeLoan SET PartnershipDocStatus='" + PartnerDocStatusLabel.Text + "'" +
                " where PAN_NO = '" + Label1.Text + "'";

            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);




        }

        protected void PartnerVerify_Click(object sender, EventArgs e)
        {
            PartnerDocStatusLabel.Text = "Verified";

            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(constring);

            String squery = "UPDATE HomeLoan SET PartnershipDocStatus='" + PartnerDocStatusLabel.Text + "'" +
                " where PAN_NO = '" + Label1.Text + "'";

            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);




        }

        protected void PartnerNotVerify_TextChanged(object sender, EventArgs e)
        {

        }

        protected void AddiDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            AddiDocStatusLabel.Text = AddiDropDown.SelectedValue;

            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(constring);

            String squery = "UPDATE HomeLoan SET AdditionalIncomeDocStatus='" + AddiDocStatusLabel.Text + "'" +
                " where PAN_NO = '" + Label1.Text + "'";

            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);



        }

        protected void AddiVerify_Click(object sender, EventArgs e)
        {
            AddiDocStatusLabel.Text = "Verified";

            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(constring);

            String squery = "UPDATE HomeLoan SET AdditionalIncomeDocStatus='" + AddiDocStatusLabel.Text + "'" +
                " where PAN_NO = '" + Label1.Text + "'";

            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);


        }

        protected void AddiNotVerify_TextChanged(object sender, EventArgs e)
        {


        }

        protected void StatementDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {

            StatementDocStatusLabel.Text = StatementDropDown.SelectedValue;

            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(constring);

            String squery = "UPDATE HomeLoan SET BankStatementDocStatus='" + StatementDocStatusLabel.Text + "'" +
                " where PAN_NO = '" + Label1.Text + "'";

            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);


        }

        protected void StatementVerify_Click(object sender, EventArgs e)
        {
            StatementDocStatusLabel.Text = "Verified";

            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(constring);

            String squery = "UPDATE HomeLoan SET BankStatementDocStatus='" + StatementDocStatusLabel.Text + "'" +
                " where PAN_NO = '" + Label1.Text + "'";

            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);




        }

        protected void StatementNotVerify_TextChanged(object sender, EventArgs e)
        {

        }

        protected void OtherDropdown_SelectedIndexChanged(object sender, EventArgs e)
        {
            OtherDocStatusLabel.Text = OtherDropdown.SelectedValue;

            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(constring);

            String squery = "UPDATE HomeLoan SET OtherDocStatus='" + OtherDocStatusLabel.Text + "'" +
                " where PAN_NO = '" + Label1.Text + "'";

            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);


        }

        protected void OtherVerify_Click(object sender, EventArgs e)
        {
            OtherDocStatusLabel.Text = "Verified";

            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(constring);

            String squery = "UPDATE HomeLoan SET OtherDocStatus='" + OtherDocStatusLabel.Text + "'" +
                " where PAN_NO = '" + Label1.Text + "'";

            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);


        }
    }
}