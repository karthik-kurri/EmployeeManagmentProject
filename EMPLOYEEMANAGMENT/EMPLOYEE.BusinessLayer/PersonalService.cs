using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EMPLOYEE.Entities;
using EMPLOYEE.DataLayer;
namespace EMPLOYEE.BusinessLayer
{
    public class PersonalService
    {
        EmployeePersonalRepository repository;
        public PersonalService()
        {
            repository = new EmployeePersonalRepository();
        }
        public void AddPersonalDetails(Personaldetails personaldetails)
        {
            try
            {
                repository.AddEmployeePersonal(personaldetails);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void DeletePersonalDetails(string eid)
        {
            try
            {
                repository.DeleteEmployeePersonal(eid);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void UpdatePersonalDetails(string Eid, string Ename, string Fathername, string Mothername, string Matrialstatus, string Address, string Salary, string Experience)
        {
            try
            {
                repository.UpdateEmployeePersonal(Eid,Ename,Fathername,Mothername,Matrialstatus,Address,Salary,Experience);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public Personaldetails GetPersonalDetailsById(string eid)
        {
            try
            {
                return repository.GetEmployeePersonalById(eid);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public List<Personaldetails> GetPersonalDetails()
        {
            try
            {
                return repository.GetAllEmployeesPersonal();
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
