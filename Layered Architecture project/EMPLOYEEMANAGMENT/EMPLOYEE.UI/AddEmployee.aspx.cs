using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EMPLOYEE.BusinessLayer;
using EMPLOYEE.Entities;
namespace EMPLOYEE.UI
{
    public partial class AddEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Add_EMPLOYEE(object sender, EventArgs e)
        {
            try
            {
                EmployeeDetails employeeDetails = new EmployeeDetails();
                employeeDetails.Eid = txtEid.Text;
                employeeDetails.Ename = txtEname.Text;
                employeeDetails.gender = txtgender.Text;
                employeeDetails.email = txtemail.Text;
                employeeDetails.Age = txtAge.Text;
                employeeDetails.mob = txtmob.Text;
                employeeDetails.country = txtcountry.Text;
                employeeDetails.desig = txtdesig.Text;
                employeeDetails.pincode = txtpincode.Text;
                employeeDetails.username = txtusername.Text;
                employeeDetails.pass = txtpass.Text;
                EmployeeService employeeService = new EmployeeService();
                employeeService.AddEmployeeDetails(employeeDetails);
                lbmsg.Text = "ADDED SUCCESSFULLY";
            }
            catch (Exception ex)
            {

                lbmsg.Text=ex.Message;
            }
        }
    }
}