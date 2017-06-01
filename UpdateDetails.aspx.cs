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
    public partial class UpdateDetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server = ALLENHP; database = master; Integrated Security=SSPI;"); /* Connection to be established */

        protected void Page_Load(object sender, EventArgs e)                      /* This method is to load the email address from the previous page onto the form*/
        {
           string x = (string)Session["email"];
            SqlCommand update = new SqlCommand("SelectData", con);
            update.CommandType = CommandType.StoredProcedure;
            update.Parameters.Add("@Emailaddress", SqlDbType.VarChar).Value = x;
            con.Open();
            using (SqlDataReader read = update.ExecuteReader())
            {
                while (read.Read())
                {
                    email.Text = x;
                }
            }
            con.Close();
        }

        protected void Save_Click(object sender, EventArgs e)                    /* Saving updated details onto the table*/
        {
            SqlCommand up = new SqlCommand("UpdateData", con);
            up.CommandType = CommandType.StoredProcedure;
            SqlParameter sp1 = new SqlParameter(); /* Sql Parameters for each of the data input */
            SqlParameter sp2 = new SqlParameter();
            SqlParameter sp3 = new SqlParameter();
            SqlParameter sp4 = new SqlParameter();
            SqlParameter sp5 = new SqlParameter();
            SqlParameter sp6 = new SqlParameter();
            SqlParameter sp7 = new SqlParameter();
            con.Open();
            sp1 = up.Parameters.Add("@Name", SqlDbType.VarChar); /*Accepting values from textboxes*/
            sp1.Value = unamebox.Text;   
            sp3 = up.Parameters.Add("@Gender", SqlDbType.VarChar);
            sp3.Value = Gender.Text;
            sp4 = up.Parameters.Add("@DOB", SqlDbType.VarChar);
            sp4.Value = udatepicker.Text;
            sp5 = up.Parameters.Add("@Emailaddress", SqlDbType.VarChar);
            sp5.Value = email.Text;
            sp2 = up.Parameters.Add("@Phonenumber", SqlDbType.Int);
            sp2.Value = uphonebox.Text;
            up.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Successful!');", true);


            Response.Redirect("HP-1.aspx");
           
        }

        protected void Populate_Click(object sender, EventArgs e)           /* Populating the textboxes with values from the table*/
        {
            string x = (string)Session["email"];
            SqlCommand update = new SqlCommand("SelectData", con);
            update.CommandType = CommandType.StoredProcedure;
            update.Parameters.Add("@Emailaddress", SqlDbType.VarChar).Value = x;
            con.Open();
            using (SqlDataReader read = update.ExecuteReader())
            {
                while (read.Read())
                {
                    unamebox.Text = (read["Name"].ToString());              /* Reading Individual textboxes*/
                    uphonebox.Text = (read["Phonenumber"].ToString());
                    Gender.Text = (read["Gender"].ToString());
                    udatepicker.Text = (read["DOB"].ToString());

                }
            }
            con.Close();
           
        }

        protected void Button1_Click(object sender, EventArgs e)            /*Homepage redirect*/
        {
            Response.Redirect("HP-1.aspx");
        }

    }
}