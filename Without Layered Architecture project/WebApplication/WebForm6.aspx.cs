using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WebApplication
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["accountDetails"].ConnectionString);
        SqlCommand command = null;
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e) 
        { 
        string qry = $"Insert into Accountdetails values('{txteid.Text}','{txtname.Text}','{txtbank.Text}','{txtacc.Text}','{txtcode.Text}','{txtbranch.Text}')";
            try
            {
                command = new SqlCommand(qry, connection);
                 connection.Open();
                command.ExecuteNonQuery();
                lbmsg.Text = "added successfully";
                txteid.Text = String.Empty;
                txtname.Text = String.Empty;
                txtbank.Text = String.Empty;
                txtacc.Text = String.Empty;
                txtcode.Text = String.Empty;
                txtbranch.Text = String.Empty;
               
                txteid.Focus();
            }
            catch (Exception ex)
            {
                lbmsg.Text = "error:" + ex.Message;
            }
            finally
            {
              connection.Close();
             }
         }
    }
}