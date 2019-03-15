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
    public partial class registrationForClient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_sub_Click(object sender, EventArgs e)
        {
            MySqlConnection objcon = new MySqlConnection();
            objcon.ConnectionString = "server = localhost; user id = root; database = databasetest; persistsecurityinfo = True;SslMode=none";
            objcon.Open();

            MySqlCommand objcmd = new MySqlCommand();

            objcmd.CommandType = CommandType.Text;
            objcmd.Connection = objcon;


            string check = "";

            check = txt_email.Text;
            

            if (txt_pwd.Text == txt_repwd.Text)
            {
                objcmd.CommandText = "Insert into client(name, address, phone_1, phone_2,email_id, password) " +
                "Values('" + txt_name.Text + "','" + txt_add.Text + "','" + txt_mob1.Text + "','" + txt_mob2.Text + "','" + txt_email.Text + "','" + txt_pwd.Text + "') ";
                objcmd.ExecuteNonQuery();




                objcmd.CommandText = "select client_id from client where email_id = '" + check + "'";


                MySqlDataReader reader = objcmd.ExecuteReader();

                string client_id = "";
                if (reader.Read())
                {
                    client_id = reader.GetString(0);
                    reader.Close();
                }
                reader.Close();

                string client_id_buyer = client_id;
                string client_id_owner = client_id;
                string client_id_renter = client_id;


                if (CheckBox1.Checked)
                {
                    
                    //string check = "";
                    //check = txt_email.Text;
                    
                    objcmd.CommandText = " Insert into buyer (client_id) " +
                        "Values("+ client_id_buyer +")";
                    objcmd.ExecuteNonQuery();
                    lblMessage.Text = "Record Inserted.... ";
                }
                if (CheckBox2.Checked)
                {

                    //string check = "";
                    //check = txt_email.Text;

                    objcmd.CommandText = " Insert into owner (client_id) " +
                        "Values(" + client_id_owner + ")";//ower is the seller 
                    objcmd.ExecuteNonQuery();
                    lblMessage.Text = "Record Inserted.... ";
                }
                if (CheckBox3.Checked)
                {

                    //string check = "";
                    //check = txt_email.Text;

                    objcmd.CommandText = " Insert into renter (client_id) " +
                        "Values(" + client_id_renter + ")";
                    objcmd.ExecuteNonQuery();
                    lblMessage.Text = "Record Inserted.... ";
                }
                Response.Redirect("login_as_client.aspx");
            }

            else
            {
                Response.Redirect("registrationForClient.aspx");
                lblMessage.Text = "Passwords does not match!!";
                
            }

        }
    }
}