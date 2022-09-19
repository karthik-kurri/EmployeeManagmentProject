using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EMPLOYEE.Entities;
using EMPLOYEE.DataLayer;
using System.Net.NetworkInformation;

namespace EMPLOYEE.BusinessLayer
{
    public class EmployeeService
    {
        EmployeeRepository repository;
        public EmployeeService()
        {
            repository = new EmployeeRepository();
        }
        public void AddEmployeeDetails(EmployeeDetails employeeDetails)
        {
            try
            {
                repository.AddEmployeedetails(employeeDetails);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void DeleteEmployeeDetails(string eid)
        {
            try
            {
                repository.DeleteEmployeedetails(eid);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void UpdateEmployeeDetails(string Eid, string Ename, string gender, string email, string Age, string mob, string country, string desig, string pincode, string username, string pass)
        {
            try
            {
                repository.UpdateEmployeedetails( Eid,Ename,gender,email,Age,mob,country,desig,pincode,username,pass);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public EmployeeDetails GetEmployeeDetailsById(string eid)
        {
            try
            {
               return repository.GetEmployeeDetailsById(eid);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public List<EmployeeDetails> GetEmployeesDetails()
        {
            try
            {
                return repository.GetAllEmployeesDetails();
            }
            catch(Exception)
            {
                throw;
            }
        }
    }
}
