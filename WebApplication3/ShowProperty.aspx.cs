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
    public partial class ShowProperty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            fillgrdProperty();
        }
        private void fillgrdProperty()
        {
            MySqlConnection objcon = new MySqlConnection();
            objcon.ConnectionString = "server = localhost; user id = root; database = databasetest; persistsecurityinfo = True;SslMode=none";
            objcon.Open();

            MySqlCommand objcmd = new MySqlCommand();

            objcmd.CommandType = CommandType.Text;
            objcmd.Connection = objcon;


            //string search = ddl_search.Text;
            string sql = "";

            sql = "SELECT  property_id, worth, area  FROM property";


            objcmd.CommandText = sql;
            MySqlDataReader reader = objcmd.ExecuteReader();
            if (reader != null && reader.HasRows)
            {
                lbl_no_result.Visible = false;
                grdShowProperty.Visible = true;
                grdShowProperty.DataSource = reader;
                grdShowProperty.DataBind();

            }
            else
            {
                lbl_no_result.Visible = true;
                grdShowProperty.Visible = false;
            }

        }
    }
}