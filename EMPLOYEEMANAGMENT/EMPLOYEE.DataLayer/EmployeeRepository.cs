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
    public class EmployeeRepository
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["virtusaDBConn"].ConnectionString);
        SqlCommand command = null;
      

        public void AddEmployeedetails(EmployeeDetails employeeDetails)
        {
            try
            {
                command = new SqlCommand($"insert into EMPLOYEEDETAILS values('{employeeDetails.Eid}','{employeeDetails.Ename}','{employeeDetails.gender}','{employeeDetails.email}','{employeeDetails.Age}','{employeeDetails.mob}','{employeeDetails.country}','{employeeDetails.desig}','{employeeDetails.pincode}','{employeeDetails.username}','{employeeDetails.pass}')", connection);
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
        public void DeleteEmployeedetails(string eid)
        {
            try
            {
                command = new SqlCommand($"Delete from EMPLOYEEDETAILS where Eid='{eid}'", connection);
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
        public void UpdateEmployeedetails(string Eid,string Ename,string gender,string email,string Age,string mob,string country,string desig,string pincode,string username,string pass)
        {
            try
            {
                command = new SqlCommand($"update EMPLOYEEDETAILS set Ename='{Ename}',gender='{gender}',email='{email}',Age='{Age}',mob='{mob}',country='{country}',desig='{desig}',pincode='{pincode}',username='{username}',pass='{pass}' where Eid='{Eid}'", connection);
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
        public EmployeeDetails GetEmployeeDetailsById(string eid)
        {
            try
            {
                EmployeeDetails employeeDetails = null;
                command = new SqlCommand($"Select * from EMPLOYEEDETAILS where Eid='{eid}'", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    employeeDetails = new EmployeeDetails();
                    employeeDetails.Ename = dr["Ename"].ToString();
                    employeeDetails.gender = dr["gender"].ToString();
                    employeeDetails.email = dr["email"].ToString();
                    employeeDetails.Age = dr["Age"].ToString();
                    employeeDetails.mob = dr["mob"].ToString();
                    employeeDetails.country = dr["country"].ToString();
                    employeeDetails.desig = dr["desig"].ToString();
                    employeeDetails.pincode = dr["pincode"].ToString();
                    employeeDetails.username = dr["username"].ToString();
                    employeeDetails.pass = dr["pass"].ToString();
                }
                return employeeDetails;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public List<EmployeeDetails> GetAllEmployeesDetails()
        {
            try
            {
                List<EmployeeDetails> employees = new List<EmployeeDetails>();
                command = new SqlCommand($"Select * from EMPLOYEEDETAILS ", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {

                    EmployeeDetails employeeDetails = new EmployeeDetails();
                    employeeDetails.Eid = dr["Eid"].ToString();
                    employeeDetails.Ename = dr["Ename"].ToString();
                    employeeDetails.gender = dr["gender"].ToString();
                    employeeDetails.email = dr["email"].ToString();
                    employeeDetails.Age = dr["Age"].ToString();
                    employeeDetails.mob = dr["mob"].ToString();
                    employeeDetails.country = dr["country"].ToString();
                    employeeDetails.desig = dr["desig"].ToString();
                    employeeDetails.pincode = dr["pincode"].ToString();
                    employeeDetails.username = dr["username"].ToString();
                    employeeDetails.pass = dr["pass"].ToString();
                    employees.Add(employeeDetails);
                }
                return employees;
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
