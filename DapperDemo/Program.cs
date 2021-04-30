using DapperDemo;
using DapperDemo.Service;
using System;

namespace DapperDemo
{
    class Program
    {
        private static EmployeeService employeeService = new EmployeeService();

        static void Main(string[] args)
        {
            Console.WriteLine("Dapper Demo");

            //DisplayAllEmployees();
            //DisplayAllEmployees_WithPerson();
            DisplayAllEmployees_WithPersonAndClient();

            Console.ReadKey();
        }

        public static async void DisplayAllEmployees()
        {
            var employees = await employeeService.GetEmployees();
            foreach (var e in employees)
            {
                Console.WriteLine($"JobTitle: {e.JobTitle} / IsSupervisor: {e.IsSupervisor} / Person: {e.PersonId}");
            }
        }

        public static async void DisplayAllEmployees_WithPerson()
        {
            var employees = await employeeService.GetEmployees_WithPerson();
            foreach (var e in employees)
            {
                var msg = $"JobTitle: {e.JobTitle} / IsSupervisor: {e.IsSupervisor}"
                    + $" / Person: ({e.Person.PersonId}) {e.Person.FirstName} {e.Person.LastName}"
                    + $" / PersonId: {e.PersonId}";
                Console.WriteLine(msg);
            }
        }

        public static async void DisplayAllEmployees_WithPersonAndClient()
        {
            var employees = await employeeService.GetEmployees_WithPersonAndClient();
            foreach (var e in employees)
            {
                var msg = $"JobTitle: {e.JobTitle} / IsSupervisor: {e.IsSupervisor}"
                    + $" / Person: ({e.Person.PersonId}) {e.Person.FirstName} {e.Person.LastName}"
                    + $" / PersonId: {e.PersonId}"
                    + $" / Client: ({e.Client.ClientId}) {e.Client.ClientName}"
                    + $" / ClientId: {e.ClientId}";
                Console.WriteLine(msg);
            }
        }
    }

}



