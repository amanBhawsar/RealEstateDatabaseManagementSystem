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
    public partial class SearchForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["email"] == null) Response.Redirect("broker_login.aspx");
            fillgrdBroker();
        }
        private void fillgrdBroker()
        {
            MySqlConnection objcon = new MySqlConnection();
            objcon.ConnectionString = "server = localhost; user id = root; database = databasetest; persistsecurityinfo = True;SslMode=none";
            objcon.Open();

            MySqlCommand objcmd = new MySqlCommand();

            objcmd.CommandType = CommandType.Text;
            objcmd.Connection = objcon;


            string search = ddl_search.Text;
            string sql = "";

            sql = "SELECT  broker_id, name , address, mobile_no1,mobile_no2,website ,email,broker_percentage  FROM broker";

            if (ddl_search.Text != "")
                sql = sql + " where area_deal = '" + ddl_search.Text + "'";
            objcmd.CommandText = sql;
            MySqlDataReader reader = objcmd.ExecuteReader();
            if (reader != null && reader.HasRows)
            {
                lblNoRecordFound.Visible = false;
                grdShowBroker.Visible = true;
                grdShowBroker.DataSource = reader;
                grdShowBroker.DataBind();

            }
            else
            {
                lblNoRecordFound.Visible = true;
                grdShowBroker.Visible = false;
            }



        }


        protected void btn_search_Click(object sender, EventArgs e)
        {
            fillgrdBroker();
        }

        
        private void fillgrdProperty(String search_pro_br)
        {
            MySqlConnection objcon = new MySqlConnection();
            objcon.ConnectionString = "server = localhost; user id = root; database = databasetest; persistsecurityinfo = True;SslMode=none";
            objcon.Open();

            MySqlCommand objcmd = new MySqlCommand();

            objcmd.CommandType = CommandType.Text;
            objcmd.Connection = objcon;


            //string search = ddl_search.Text;
            string sql = "";

            sql = "SELECT  property_id, worth, area  FROM property where broker_id =" + search_pro_br;


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

        protected void grdShowBroker_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = grdShowBroker.SelectedRow;
            if (gr != null)
            {
                String search_pro_br = gr.Cells[1].Text;
                fillgrdProperty(search_pro_br);
            }
            else
            { lbl_no_result.Text = "NO PROPERTY UNDER THE BROKER"; }
        }

        protected void grdShowBroker_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "History")
            {
                int getBroker;
                getBroker = Convert.ToInt32(e.CommandArgument.ToString());
                string v = grdShowBroker.Rows[getBroker].Cells[1].Text;
                lbl_no_result.Text = v;
              
                Response.Redirect("~/Broker_history.aspx?BrokerId=" + v);
            }
             
        }
    }
}