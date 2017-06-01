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
    public partial class DeleteDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("server = ALLENHP; database = master; Integrated Security=SSPI;");
            string x = (string)Session["email"];
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