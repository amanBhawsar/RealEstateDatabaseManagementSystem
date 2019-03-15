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
    public partial class broker_login : System.Web.UI.Page
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
            string v = txtEmail.Text; 

            String sql = "";
            sql = sql + " Select broker_id,email from broker ";
            sql = sql + " where email = '" + txtEmail.Text + "' ";
            sql = sql + " and password = '" + txtPsw.Text + "'";
            objcmd.CommandText = sql;

            MySqlDataReader reader = objcmd.ExecuteReader();

            if (reader != null && reader.HasRows)
            {
                Session["email"] = v;

                //string temp = "";
                reader.Read();
                //temp = reader["broker_id"].ToString();

                //Response.Redirect("~/broker.aspx?brokerid=" + temp);
                Response.Redirect("broker.aspx");


            }


            else
            {

                lblAccess.Text = "Access Denied!!!";

            }


        }
    }
}