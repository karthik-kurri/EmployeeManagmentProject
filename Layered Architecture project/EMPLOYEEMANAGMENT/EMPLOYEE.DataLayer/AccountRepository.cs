using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using EMPLOYEE.Entities;


namespace EMPLOYEE.DataLayer
{
    public class AccountRepository
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConn"].ConnectionString);
        SqlCommand command = null;
        

        public void AddAccount(Account account)
        {
            try
            {
                command = new SqlCommand($"insert into ACCOUNTDETAILS values('{account.Eid}','{account.Ename}','{account.Bankname}','{account.Accno}','{account.IFSCODE}','{account.Branch}')", connection);
                connection.Open();
                command.ExecuteNonQuery();
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                connection.Close();
            }
        }
        public void DeleteAccount(string eid)
        {
            try
            {
                command = new SqlCommand($"Delete from ACCOUNTDETAILS where Eid='{eid}'", connection);
                connection.Open();
                command.ExecuteNonQuery();
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                connection.Close();
            }
        }
        public void UpdateAccount(string Eid,string Ename,string Bankname,string Accno,string IFSCODE,string Branch)
        {
            try
            {
                command = new SqlCommand($"update ACCOUNTDETAILS set Ename='{Ename}', Bankname='{Bankname}', Accno='{Accno}', IFSCODE='{IFSCODE}', Branch='{Branch}' where Eid='{Eid}'", connection);
                connection.Open();
                command.ExecuteNonQuery();
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                connection.Close();
            }
        }
        public Account GetAccountById(string eid)
        {
            try
            {
                Account account = null;
                command = new SqlCommand($"Select * from ACCOUNTDETAILS where Eid={eid}", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    account = new Account();
                    account.Ename = dr["Ename"].ToString();
                    account.Bankname = dr["Bankname"].ToString();
                    account.Accno = dr["Accno"].ToString();
                    account.IFSCODE = dr["IFSCODE"].ToString();
                    account.Branch = dr["Branch"].ToString();


                }
                return account;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public List<Account> GetAllAccounts()
        {
            try
            {
                List<Account> accounts = new List<Account>();
                command = new SqlCommand($"Select * from ACCOUNTDETAILS ", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {

                    Account account = new Account();
                    account.Eid = dr["Eid"].ToString();
                    account.Ename = dr["Ename"].ToString();
                    account.Bankname = dr["Bankname"].ToString();
                    account.Accno = dr["Accno"].ToString();
                    account.IFSCODE = dr["IFSCODE"].ToString();
                    account.Branch = dr["Branch"].ToString();
                    accounts.Add(account);
                }
                return accounts;
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
