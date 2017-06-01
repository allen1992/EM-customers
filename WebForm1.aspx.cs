using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Security;
using System.Configuration;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Windows.Forms;

namespace EM_test
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server = ALLENHP; database = master; Integrated Security=SSPI;"); /* Connection to be established */
        SqlConnection con2 = new SqlConnection("server = ALLENHP; database = master; Integrated Security=SSPI;"); /* Connection to be established */
        SqlCommand sql1 = new SqlCommand();
        SqlCommand sql2 = new SqlCommand();
        SqlParameter sp1 = new SqlParameter(); /* Sql Parameters for each of the data input */
        SqlParameter sp2 = new SqlParameter();
        SqlParameter sp3 = new SqlParameter();
        SqlParameter sp4 = new SqlParameter();
        SqlParameter sp5 = new SqlParameter();
        SqlParameter sp6 = new SqlParameter();
        SqlParameter sp7 = new SqlParameter();
        SqlParameter s = new SqlParameter();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Save_Click(object sender, EventArgs e)   /* Input the data from textboxes onto the table */
        {
            try
            {
                sql1 = new SqlCommand("InputData", con); /*Calling Stored Procedure */
                sql1.CommandType = CommandType.StoredProcedure; /* Stored Procedure Command  */
                sql2 = new SqlCommand("VerifyEmail", con2);
                sql2.CommandType = CommandType.StoredProcedure;
                sp1 = sql1.Parameters.Add("@Name", SqlDbType.VarChar); /*Accepting values from textboxes*/
                sp1.Value = namebox.Text;            
                sp3 = sql1.Parameters.Add("@Gender", SqlDbType.VarChar);
                sp3.Value = Gender.Text;
                sp4 = sql1.Parameters.Add("@DOB", SqlDbType.VarChar);
                sp4.Value = datepicker.Text;
                sp5 = sql1.Parameters.Add("@Emailaddress", SqlDbType.VarChar);
                sp5.Value = email.Text;
                sp2 = sql1.Parameters.Add("@Phonenumber", SqlDbType.Int);
                sp2.Value = phonebox.Text;
                s = sql2.Parameters.Add("@Emailaddress", SqlDbType.VarChar);
                s.Value = email.Text;
                con2.Open();
                SqlDataReader rd = sql2.ExecuteReader();
                if (rd.HasRows)
                {
                    rd.Read();
                    Response.Write("Email address already Exists");
                    con2.Close();
                }
                else {
                    con2.Close();
                    con.Open();                                             /*Opening connection to database*/
                    sql1.ExecuteNonQuery();                                 /*Executing Stored Procedure*/
                    con.Close();
                    Response.Redirect("HP-1.aspx");
                     }
            }
            catch (Exception ex)
            {
               ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Error inserting')", true);
            }
            finally
            {
                
            }
           


        }

        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("HP-1.aspx");
        }
    }
}