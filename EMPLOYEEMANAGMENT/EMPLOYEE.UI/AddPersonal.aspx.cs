using EMPLOYEE.BusinessLayer;
using EMPLOYEE.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMPLOYEE.UI
{
    public partial class AddPersonal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Add_Personal(object sender, EventArgs e)
        {
            try
            {
                Personaldetails personalDetails = new Personaldetails();
                personalDetails.Eid = txtEid.Text;
                personalDetails.Ename = txtEname.Text;
                personalDetails.Fathername = txtFathername.Text;
                personalDetails.Mothername = txtMothername.Text;
                personalDetails.Matrialstatus = txtMatrialstatus.Text;
                personalDetails.Address = txtAddress.Text;
                personalDetails.Salary = txtSalary.Text;
                personalDetails.Experience = txtExperience.Text;
                PersonalService personalService = new PersonalService();
                personalService.AddPersonalDetails(personalDetails);
                lbmsg.Text = "ADDED SUCCESSFULLY";
            }
            catch (Exception ex)
            {

                lbmsg.Text = ex.Message;
            }
        
        }
    }
}