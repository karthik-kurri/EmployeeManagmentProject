using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class loginpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signin_Click(object sender, EventArgs e)
        {
            string name=username.Text;
            string pas = password.Text;
            string Type= select.Text;
            if (name == "karthik" && pas == "1234" && Type == "EmployeeDetails")
            {
               
                    Response.Redirect("WebForm1.aspx");
             }
               if(Type=="EmployeePersonalDetails")

                {
                    Response.Redirect("WebForm4.aspx");
                }
            if (name == "karthik" && pas == "1234" && Type == "EmployeeAccountDetails")
            {

                Response.Redirect("WebForm6.aspx");
            }

            else
            {
                msgshow.Text = "invalid credientials";
            }
        }
    }
}