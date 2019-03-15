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
    public partial class registrationForBroker1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // if (Session["email"] == null) Response.Redirect("broker_login.aspx");

        }

        protected void btn_sub_Click(object sender, EventArgs e)
        {
            MySqlConnection objcon = new MySqlConnection();
            objcon.ConnectionString = "server = localhost; user id = root; database = databasetest; persistsecurityinfo = True;SslMode=none";
            objcon.Open();

            MySqlCommand objcmd = new MySqlCommand();
          
            objcmd.CommandType = CommandType.Text;
            objcmd.Connection = objcon;
            

            if (txt_pwd.Text == txt_repwd.Text)
            {

                if (Request.QueryString["id"] == null)// For Insert
                {
                    string check = "";

                    check = txt_email.Text;
                    objcmd.CommandText = " Insert into broker(name, address, mobile_no1, mobile_no2,website,email,broker_percentage, password,area_deal) " +
                        "Values('" + txt_name.Text + "','" + txt_add.Text + "','" + txt_mob1.Text + "','" + txt_mob2.Text + "','" + txt_website.Text + "','" + txt_email.Text + "','" + txt_broker_per.Text + "','" + txt_pwd.Text + "','" + txt_area_deal.Text + "') ";
                    objcmd.ExecuteNonQuery();
                    lblMessage.Text = "Record Inserted.... ";

                    objcmd.CommandText = "select broker_id from broker where email = '" + check +"'";
                    

                    MySqlDataReader reader = objcmd.ExecuteReader();

                    if (reader.Read())
                    {
                        lblCheck.Text = reader.GetString(0);
                        reader.Close();
                    }
                    reader.Close();


                    objcmd.CommandText = "Insert into broker_history(broker_id,registration_no,broker_per,other_details,date_of_deal,type_of_deal)" +
                        "values('" + lblCheck.Text + "','" + txt_exp1_reg.Text + "','" + txt_exp1_broPer.Text + "','" + txt_exp1_detail.Text + "','" + txt_exp1_dealDate.Text + "','" + txt_exp1_dealType.Text + "')";
                    objcmd.ExecuteNonQuery();

                    objcmd.CommandText = "Insert into broker_history(broker_id,registration_no,broker_per,other_details,date_of_deal,type_of_deal)" +
                        "values('" + lblCheck.Text + "','" + txt_exp2_reg.Text + "','" + txt_exp2_broPer.Text + "','" + txt_exp2_detail.Text + "','" + txt_exp2_dealdate.Text + "','" + txt_exp2_dealType.Text + "')";
                    objcmd.ExecuteNonQuery();
                    objcmd.CommandText = "Insert into broker_history(broker_id,registration_no,broker_per,other_details,date_of_deal,type_of_deal)" +
                        "values('" + lblCheck.Text + "','" + txt_exp3_reg.Text + "','" + txt_exp3_broPer.Text + "','" + txt_exp3_detail.Text + "','" + txt_exp3_dealdate.Text + "','" + txt_exp3_dealType.Text + "')";
                    objcmd.ExecuteNonQuery();
                    objcmd.CommandText = "Insert into broker_history(broker_id,registration_no,broker_per,other_details,date_of_deal,type_of_deal)" +
                        "values('" + lblCheck.Text + "','" + txt_exp4_reg.Text + "','" + txt_exp4_broPer.Text + "','" + txt_exp4_detail.Text + "','" + txt_exp4_dealdate.Text + "','" + txt_exp4_dealType.Text + "')";
                    objcmd.ExecuteNonQuery();
                    objcmd.CommandText = "Insert into broker_history(broker_id,registration_no,broker_per,other_details,date_of_deal,type_of_deal)" +
                        "values('" + lblCheck.Text + "','" + txt_exp5_reg.Text + "','" + txt_exp5_broPer.Text + "','" + txt_exp5_detail.Text + "','" + txt_exp5_dealdate.Text + "','" + txt_exp5_dealType.Text + "')";
                    objcmd.ExecuteNonQuery();

                }

            }

            else
            {
                lblMessage.Text = "Passwords didn't match!!!";
            }

        }
    }
}