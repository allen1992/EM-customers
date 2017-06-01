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

    public partial class Details : System.Web.UI.Page
    {DataSet ds = new DataSet();
        SqlConnection con = new SqlConnection("server = ALLENHP; database = master; Integrated Security=SSPI;");
        SqlCommand sql1 = new SqlCommand();
        //SqlCommand sql2 = new SqlCommand();
        SqlParameter sp1 = new SqlParameter();
        SqlParameter sp2 = new SqlParameter();
        SqlParameter sp3 = new SqlParameter();
        SqlParameter sp4 = new SqlParameter();
        SqlParameter sp5 = new SqlParameter();
        SqlParameter sp6 = new SqlParameter();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Save_Click(object sender, EventArgs e)
            {
        
                sql1 = new SqlCommand("InputData", con);
                sql1.CommandType = CommandType.StoredProcedure;
                sp1 = sql1.Parameters.Add("@Name", SqlDbType.VarChar);
                sp1.Value = nbox.Text;
                sp2 = sql1.Parameters.Add("@Age", SqlDbType.Int);
                sp2.Value = agebox.Text;
                sp3 = sql1.Parameters.Add("@Gender", SqlDbType.VarChar);
                sp3.Value = gbox.Text;
                sp4 = sql1.Parameters.Add("@DOB", SqlDbType.VarChar);
                sp4.Value = date.Text;
                sp5 = sql1.Parameters.Add("@Emailaddress", SqlDbType.VarChar);
                sp5.Value = email.Text;
                sp6 = sql1.Parameters.Add("@Password", SqlDbType.VarChar);
                sp6.Value = Pbox.Text;
                con.Open();
                sql1.ExecuteNonQuery();
                con.Close();
          
                
            }

        }
    

