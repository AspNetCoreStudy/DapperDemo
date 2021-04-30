using Dapper;
using DapperDemo.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DapperDemo.Service
{
    public class EmployeeService : Service
    {
        public async Task<List<Employee>> GetEmployees()
        {
            using (var conn = GetConnection)
            {
                var sql = "EXEC sp_Employees_Read";
                var result = await conn.QueryAsync<Employee>(sql);

                return result.ToList();
            }
        }

        public async Task<List<EmployeePerson>> GetEmployees_WithPerson()
        {
            using (var conn = GetConnection)
            {
                var sql = "EXEC sp_Employees_WithPerson_Read";
                var result = await conn.QueryAsync<EmployeePerson,Person,EmployeePerson>(
                    sql,
                    splitOn: "PersonId",
                    map: (employee, person) => {
                        employee.Person = person;
                        return employee;
                    });

                return result.ToList();
            }
        }

        public async Task<List<EmployeePersonClient>> GetEmployees_WithPersonAndClient()
        {
            using (var conn = GetConnection)
            {
                var sql = "EXEC sp_Employees_WithPersonAndClient_Read";
                var result = await conn.QueryAsync<EmployeePersonClient, Person, Client, EmployeePersonClient>(
                    sql,
                    splitOn: "PersonId,ClientId",
                    map: (employee, person, client) => {
                        employee.Person = person;
                        employee.Client = client;
                        return employee;
                    });

                return result.ToList();
            }
        }
    }
}
