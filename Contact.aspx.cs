using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstApp
{
    public partial class Contact : Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection con = null;
            string sql = "select id,fname, lname, email, address from contacts order by id desc";
            con = new SqlConnection(strcon);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(sql, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Repeaters1.DataSource = dt;
            Repeaters1.DataBind();
            con.Close();
        }

        protected void submitData(object sender, EventArgs e)
        {


            SqlConnection con = null;
            try
            {
                string fName = fname.Text;
                string lName = lname.Text;
                string eMail = email.Text;
                string Address = address.Text;
                //Get connection string from web.config file  
                string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
                //create new sqlconnection and connection to database by using connection string from web.config file 
                string sql = "insert into contacts(fname, lname, email, address) values('"+ fName + "','"+ lName + "','"+ eMail + "','"+Address+"')";

                con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);

             int status =    cmd.ExecuteNonQuery();

                if (status > 0)
                {
                     Response.Redirect("Contact");
                    //Response.Write("<script>alert('Success')</script>");
                }

            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }
            finally
            {
                con.Close();
            }

            //message.Text = "Success Fully";

        }
        
    }
}