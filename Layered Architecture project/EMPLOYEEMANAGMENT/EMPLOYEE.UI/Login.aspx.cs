using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMPLOYEE.UI
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = txtuser.Text;
            string pas = txtpass.Text;
            string Type = txttype.Text;

            if (name == "karthik" && pas == "1234" && Type=="AddEmployee")
            {

                Response.Redirect("AddEmployee.aspx");

            }
            if (name == "karthik" && pas == "1234" && Type == "AddPersonal")
            {

                Response.Redirect("AddPersonal.aspx");

            }
            if (name == "karthik" && pas == "1234" && Type == "AddAccount")
            {

                Response.Redirect("AddAcount.aspx");

            }

            else
            {
                lbmsg.Text = "invalid credientials";
            }
        }
    }
    }
