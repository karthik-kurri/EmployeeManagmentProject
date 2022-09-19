using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace WebApplication
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["VirtusaDBConnection"].ConnectionString);
        SqlCommand command = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Add_Click(object sender, EventArgs e)
        {
            string qry = $"Insert into EmployeeDetails values('{Eid.Text}','{Ename.Text}','{gender.Text}','{email.Text}','{Age.Text}','{mob.Text}','{country.Text}','{deisg.Text}','{pincode.Text}','{username.Text}','{pass.Text}')";
            try
            {
                command = new SqlCommand(qry, connection);
                connection.Open();
                command.ExecuteNonQuery();
                msgshow.Text = "added successfully";
                Eid.Text = String.Empty;
                Ename.Text = String.Empty;
                Age.Text = String.Empty;
                email.Text = String.Empty;
                mob.Text = String.Empty;
                country.Text = String.Empty;
                pincode.Text = String.Empty;
                username.Text = String.Empty;
                pass.Text = String.Empty;
                Eid.Focus();
            }
            catch (Exception ex)
            {
                msgshow.Text = "error:" + ex.Message;
            }
            finally
            {
                connection.Close();
            }
        }

        protected void Edit_Click(object sender, EventArgs e)
        {
            
            string qry = $"update  EmployeeDetails set Eid='{Eid.Text}',Ename='{Ename.Text}',gender='{gender.Text}',email='{email.Text}',Age='{Age.Text}',mob='{mob.Text}',country='{country.Text}',desig='{deisg.Text}',pincode='{pincode.Text}' where Eid='{Eid.Text}' and username='{username.Text}'and pass='{pass.Text}'";
            try
            {
                command = new SqlCommand(qry, connection);
                connection.Open();
                command.ExecuteNonQuery();
                msgshow.Text = "updated successfully";

            }
            catch (Exception ex)
            {
                msgshow.Text = "error:" + ex.Message;
            }
            finally
            {
                connection.Close();
            }
        }

        protected void search_Click(object sender, EventArgs e)
        {
           
            string qry = $"select * from EmployeeDetails where Eid='{Eid.Text}'";
            try
            {
                command = new SqlCommand(qry, connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows)
                {
                    reader.Read();
                    
                    Ename.Text = reader["Ename"].ToString();
                    gender.Text = reader["gender"].ToString();
                   
                    email.Text = reader["email"].ToString();
                    Age.Text = reader["Age"].ToString();
                    mob.Text = reader["mob"].ToString();
                    country.Text = reader["country"].ToString();
                    deisg.Text = reader["desig"].ToString();
                    pincode.Text = reader["pincode"].ToString();
                   username.Text = reader["username"].ToString();
                   pass.Text = reader["pass"].ToString();
                }
                else
                {
                    msgshow.Text = "invalid Id";
                }
            }
            catch (Exception ex)
            {
                msgshow.Text = "error:" + ex.Message;
            }
            finally
            {
                connection.Close();
            }
        }

        protected void delete_Click(object sender, EventArgs e)
        {
            string qry = $"delete from EmployeeDetails where Eid='{Eid.Text}'and username='{username.Text}'and pass='{pass.Text}'";
            try
            {
                command = new SqlCommand(qry, connection);
                connection.Open();
                command.ExecuteNonQuery();
                msgshow.Text = "Deleted successfully";
                
            }
            catch (Exception ex)
            {
                msgshow.Text = "error:" + ex.Message;
            }
            finally
            {
                connection.Close();
            }
        }
    }
}