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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server = ALLENHP; database = master; Integrated Security=SSPI;"); /* Connection to be established */
        SqlCommand check = new SqlCommand();
        SqlParameter u1 = new SqlParameter();
        SqlParameter p1 = new SqlParameter();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Lbutton_Click(object sender, EventArgs e) /*Verify if user and password present in the table*/
        {
            check = new SqlCommand("LoginUser", con); /*Calling Stored Procedure */
            check.CommandType = CommandType.StoredProcedure;
            u1 = check.Parameters.Add("@Emailaddress", SqlDbType.VarChar);
            u1.Value = ubox.Text;
            p1 = check.Parameters.Add("@Password", SqlDbType.VarChar);
            p1.Value = pbox.Text;
            con.Open();
            SqlDataReader rd = check.ExecuteReader();
            if (rd.HasRows)
            {
                rd.Read();
                Response.Redirect("HP-1.aspx");

            }
            else
            {
                Response.Write("Please enter correct credentials / User not registered");
            }
        }
    }
}