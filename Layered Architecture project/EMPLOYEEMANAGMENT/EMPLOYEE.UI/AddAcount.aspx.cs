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
    public partial class AddAcount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Add_Account(object sender, EventArgs e)
        {
            try
            {
                Account account = new Account();
                account.Eid = txtEid.Text;
                account.Ename = txtEname.Text;
                account.Bankname = txtBankname.Text;
                account.Accno = txtAccno.Text;
                account.IFSCODE = txtIFSCODE.Text;
                account.Branch = txtBranch.Text;
                AccountService accountService = new AccountService();
                accountService.AddAccount(account);
                lbmsg.Text = "ADDED SUCCESSFULLY";
            }
            catch (Exception ex)
            {

                lbmsg.Text = ex.Message;
            }
        }
        
    }
}