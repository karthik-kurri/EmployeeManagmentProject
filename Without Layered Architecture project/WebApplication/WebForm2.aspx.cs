using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-CG2PE0J\SQLEXPRESS;Initial Catalog=Employee;Integrated Security=True");
           SqlDataAdapter sqlDataAdapter=new SqlDataAdapter("Select *from EmployeeDetails", connection);
            connection.Open();
            DataSet dataSet = new DataSet();
            sqlDataAdapter.Fill(dataSet);
             GridView1.DataSource=dataSet;
            GridView1.DataBind();

        }
    }
}