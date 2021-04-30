using System;

namespace DapperDemo.Model
{
    public class Employee
    {
        public int EmployeeId { get; set; }
        public int ClientId { get; set; }
        public int PersonId { get; set; }
        public int DefaultDivisionId { get; set; }
        public string JobTitle { get; set; }
        public bool IsSupervisor { get; set; }
    }
}
