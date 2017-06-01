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
    public partial class Modify1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
    
        }

        protected void Details_Click(object sender, EventArgs e)            /*Verify if email present in table and open update details page if present*/
        {
            string x = email1.Text;
            Session["email"] = x;
            SqlConnection con2 = new SqlConnection("server = ALLENHP; database = master; Integrated Security=SSPI;");
            SqlCommand sql2 = new SqlCommand();
            SqlParameter s = new SqlParameter();
            sql2 = new SqlCommand("VerifyEmail", con2);
            sql2.CommandType = CommandType.StoredProcedure;
            s = sql2.Parameters.Add("@Emailaddress", SqlDbType.VarChar);
            s.Value = email1.Text;
            con2.Open();
            SqlDataReader rd = sql2.ExecuteReader();                
            if (rd.HasRows)
            {
                rd.Read();
                Response.Redirect("UpdateDetails.aspx");
                con2.Close();
            }
            else
            {
                Response.Write("Email address doesnt exist");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("HP-1.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)                    /* This method is to delete the user's data using the stored procedure */
        {
            string x = email1.Text;
            Session["email"] = x;
            SqlConnection con = new SqlConnection("server = ALLENHP; database = master; Integrated Security=SSPI;");
            SqlCommand del = new SqlCommand("DeleteData", con);
            del.CommandType = CommandType.StoredProcedure;
            del.Parameters.Add("@Emailaddress", SqlDbType.VarChar).Value = x;
            con.Open();
            del.ExecuteNonQuery();
            con.Close();
            Response.Redirect("HP-1.aspx");
        }
    }
}