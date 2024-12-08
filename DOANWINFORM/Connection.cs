using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace DOANWINFORM
{


    internal class Connection


    {
        // Data Source=LAPTOP-I8FJEG03\TUNGDUONG;Initial Catalog=ctyXYZ;Integrated Security=True
        SqlConnection conn = null;
        string strConn = " Data Source=LAPTOP-I8FJEG03\\TUNGDUONG;Initial Catalog=ctyXYZ;Integrated Security=True";
        DataSet ds = null;
        SqlDataAdapter adapter = null;
    }
}
