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
    public class EmployeePersonalRepository
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConn"].ConnectionString);
        SqlCommand command = null;
       

        public void AddEmployeePersonal(Personaldetails employeepersonal)
        {
            try
            {
                command = new SqlCommand($"insert into PERSONALDETAILS values('{employeepersonal.Eid}','{employeepersonal.Ename}','{employeepersonal.Fathername}','{employeepersonal.Mothername}','{employeepersonal.Matrialstatus}','{employeepersonal.Address}','{employeepersonal.Salary}','{employeepersonal.Experience}')", connection);
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
        public void DeleteEmployeePersonal(string eid)
        {
            try
            {
                command = new SqlCommand($"Delete from PERSONALDETAILS where Eid='{eid}'", connection);
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
        public void UpdateEmployeePersonal(string Eid,string Ename,string Fathername,string Mothername,string Matrialstatus,string Address,string Salary,string Experience)
        {
            try
            {
                command = new SqlCommand($"Update PERSONALDETAILS set Ename='{Ename}',Fathername='{Fathername}',Mothername='{Mothername}',Matrialstatus='{Matrialstatus}',Address='{Address}',Salary='{Salary}',Experience='{Experience}' where Eid='{Eid}'", connection);
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
        public Personaldetails GetEmployeePersonalById(string eid)
        {
            try
            {
                Personaldetails employeepersonal = null;
                command = new SqlCommand($"Select * from PERSONALDETAILS where Eid='{eid}'", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    employeepersonal = new Personaldetails();
                    employeepersonal.Ename = dr["Ename"].ToString();
                    employeepersonal.Fathername = dr["Fathername"].ToString();
                    employeepersonal.Mothername = dr["Mothername "].ToString();
                    employeepersonal.Matrialstatus = dr["Matrialstatus"].ToString();
                    employeepersonal.Address = dr["Address"].ToString();
                    employeepersonal.Salary = dr["Salary"].ToString();
                    employeepersonal.Experience = dr["Experience"].ToString();

                }
                return employeepersonal;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public List<Personaldetails> GetAllEmployeesPersonal()
        {
            try
            {
                List<Personaldetails> employeespersonal = new List<Personaldetails>();
                command = new SqlCommand($"Select * from PERSONALDETAILS ", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {

                    Personaldetails employeepersonal = new Personaldetails();
                    employeepersonal.Eid = dr["Eid"].ToString();
                    employeepersonal.Ename = dr["Ename"].ToString();
                    employeepersonal.Fathername = dr["Fathername"].ToString();
                    employeepersonal.Mothername = dr["Mothername"].ToString();
                    employeepersonal.Matrialstatus = dr["Matrialstatus"].ToString();
                    employeepersonal.Address = dr["Address"].ToString();
                    employeepersonal.Salary = dr["Salary"].ToString();
                    employeepersonal.Experience = dr["Experience"].ToString();
                    employeespersonal.Add(employeepersonal);
                }
                return employeespersonal;
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
