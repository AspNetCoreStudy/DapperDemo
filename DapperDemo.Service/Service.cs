using System.Data.SqlClient;

namespace DapperDemo.Service
{
    public class Service
    {
        protected SqlConnection GetConnection => new SqlConnection(@"Data Source=(LOCALDB)\MSSQLLOCALDB;Initial Catalog=DatabaseHRM;Integrated Security=True");
    }
}
