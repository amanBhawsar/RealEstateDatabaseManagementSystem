using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace WebApplication3
{
    public partial class login_as_client : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            MySqlConnection objcon = new MySqlConnection();
            objcon.ConnectionString = "server = localhost; user id = root; database = databasetest; persistsecurityinfo = True;SslMode=none";
            objcon.Open();

            MySqlCommand objcmd = new MySqlCommand();
            objcmd.CommandType = CommandType.Text;
            objcmd.Connection = objcon;

            String sql = "";
            sql = sql + " Select email_id from client ";
            sql = sql + " where email_id = '" + txtCrEmail.Text + "' ";
            sql = sql + " and password = '" + txtCrPsw.Text + "'";
            objcmd.CommandText = sql;

            MySqlDataReader reader = objcmd.ExecuteReader();
            if (reader != null && reader.HasRows)
            {
                Session["email_id"] = txtCrEmail.Text;



                Response.Redirect("SearchForm.aspx");


            }


            else
            {

                lblAccess.Text = "Access Denied!!!";

            }

        }
    }
}