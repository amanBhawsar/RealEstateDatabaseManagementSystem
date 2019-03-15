using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

namespace DBMS_NEW
{
    public partial class broker : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection objcon = new MySqlConnection();
            objcon.ConnectionString = "server = localhost; user id = root; database = databasetest; persistsecurityinfo = True;SslMode=none";
            objcon.Open();

            MySqlCommand objcmd = new MySqlCommand();

            objcmd.CommandType = CommandType.Text;
            objcmd.Connection = objcon;

            //txt_bro.Text = Request.QueryString["brokerid"];
            string sql = "";
            sql = sql + "Select broker_id,email from broker";
            string check1 = Session["email"].ToString();
            if (check1 != "") sql = sql + " where email = '" + Session["email"] + "'";
            objcmd.CommandText = sql;
            MySqlDataReader reader = objcmd.ExecuteReader();
            reader.Read();
            txt_bro.Text = reader["broker_id"].ToString();
        }
        void connection()
        {
            MySqlConnection objcon = new MySqlConnection();
            objcon.ConnectionString = "server = localhost; user id = root; database = databasetest; persistsecurityinfo = True;SslMode=none";
            objcon.Open();

            MySqlCommand objcmd = new MySqlCommand();

            objcmd.CommandType = CommandType.Text;
            objcmd.Connection = objcon;
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            MySqlConnection objcon = new MySqlConnection();
            objcon.ConnectionString = "server = localhost; user id = root; database = databasetest; persistsecurityinfo = True;SslMode=none";
            objcon.Open();

            MySqlCommand objcmd = new MySqlCommand();

            objcmd.CommandType = CommandType.Text;
            objcmd.Connection = objcon;

            
        }

        protected void btn_del_pro_Click(object sender, EventArgs e)
        {
            MySqlConnection objcon = new MySqlConnection();
            objcon.ConnectionString = "server = localhost; user id = root; database = databasetest; persistsecurityinfo = True;SslMode=none";
            objcon.Open();

            MySqlCommand objcmd = new MySqlCommand();

            objcmd.CommandType = CommandType.Text;
            objcmd.Connection = objcon;

            string sql = "DELETE FROM property where property_id= '" + txt_pro_id.Text +"'"+ "and broker_id =(select broker_id from broker where email = '" +txt_bro.Text + "')" ;
            objcmd.CommandText = sql;
            objcmd.ExecuteNonQuery();

            lbl_del.Text = "property deleted successfully";

        }

       
    }
}