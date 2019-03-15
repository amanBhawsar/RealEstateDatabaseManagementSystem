using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

namespace WebApplication3
{
    public partial class Broker_history : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_no_result.Text =  Request.QueryString["BrokerId"];
            String brokerId = lbl_no_result.Text;
            fillBrokerHistory(brokerId);
        }


        private void fillBrokerHistory(String brokerId)
        {
            MySqlConnection objcon = new MySqlConnection();
            objcon.ConnectionString = "server = localhost; user id = root; database = databasetest; persistsecurityinfo = True;SslMode=none";
            objcon.Open();

            MySqlCommand objcmd = new MySqlCommand();

            objcmd.CommandType = CommandType.Text;
            objcmd.Connection = objcon;


            //string search = ddl_search.Text;
            string sql = "";

            sql = "SELECT  registration_no, broker_per, other_details,date_of_deal  FROM broker_history where broker_id ='" + brokerId+"'";


            objcmd.CommandText = sql;
            MySqlDataReader reader = objcmd.ExecuteReader();
            if (reader != null && reader.HasRows)
            {
                lbl_no_result.Visible = false;
                grdBrokerHistory.Visible = true;
                grdBrokerHistory.DataSource = reader;
                grdBrokerHistory.DataBind();

            }
            else
            {
                lbl_no_result.Visible = true;
                grdBrokerHistory.Visible = false;
            }

        }



    }
}