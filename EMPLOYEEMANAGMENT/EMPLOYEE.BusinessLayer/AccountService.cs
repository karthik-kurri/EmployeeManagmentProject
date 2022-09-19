using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EMPLOYEE.Entities;
using EMPLOYEE.DataLayer;
namespace EMPLOYEE.BusinessLayer
{
    public class AccountService
    {
        AccountRepository repository;
        public AccountService()
        {
            repository = new AccountRepository();
        }
        public void AddAccount(Account account)
        {
            try
            {
                repository.AddAccount(account);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void DeleteAccount(string eid)
        {
            try
            {
                repository.DeleteAccount(eid);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void UpdateAccount(string Eid, string Ename, string Bankname, string Accno, string IFSCODE, string Branch)
        {
            try
            {
                repository.UpdateAccount( Eid, Ename,Bankname,Accno,IFSCODE,Branch);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public Account GetAccountById(string eid)
        {
            try
            {
                return repository.GetAccountById(eid);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public List<Account> GetAccounts()
        {
            try
            {
                return repository.GetAllAccounts();
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
