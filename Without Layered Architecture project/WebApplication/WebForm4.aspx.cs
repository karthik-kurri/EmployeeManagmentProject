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
    public partial class WebForm4 : System.Web.UI.Page
    {
         SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["employeepersonalConnectionString"].ConnectionString);
        SqlCommand command = null;
      

        protected void Page_Load(object sender, EventArgs e)
        {

        }
         protected void update_Click(object sender, EventArgs e)
         {

            string qry = $"Insert into EmployeePersonalDetails values('{eid.Text}','{Ename.Text}','{Fathername.Text}','{MotherName.Text}','{MatrialStatus.Text}','{Address.Text}','{Salary.Text}','{Experience.Text}')";
            try
            {
                command = new SqlCommand(qry, connection);
                connection.Open();
                command.ExecuteNonQuery();
                msgshow.Text = "added successfully";
                eid.Text = String.Empty;
                Ename.Text = String.Empty;
                Fathername.Text = String.Empty;
                MotherName.Text= String.Empty;
                MatrialStatus.Text = String.Empty;
                Address.Text = String.Empty;
                Salary.Text = String.Empty;
                Experience.Text = String.Empty;
                eid.Focus();
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