using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Drawing;

namespace DOANWINFORM.Class
{
    internal class Function

    {

        public static SqlConnection conn;
        // Tạo  phương thức Connect()


        public static void  Connect()
        {
            conn = new SqlConnection();
            conn.ConnectionString = "Data Source=LAPTOP-I8FJEG03\\TUNGDUONG; Database=ctyXYZ;Integrated Security = True";

            if (conn.State != ConnectionState.Open)
            {

                conn.Open();
            }
        }
        // nhat ket noi
        public static void Disconnect()
        {
            if (conn != null && conn.State == ConnectionState.Open)
            {
                conn.Close();
                conn.Dispose(); // Giải phóng tài nguyên
                conn = null;
            }
        }

        // Phương thức lấy dữ liệu
        public static DataTable GetDataToTable(string sql)
        {
            DataTable table = new DataTable();
            SqlDataAdapter dap = new SqlDataAdapter(sql, conn);
            dap.Fill(table);
            return table;
        }
        //Hàm thực hiện câu lệnh SQL
        public static void RunSQL(string sql)
        {
            SqlCommand cmd; //Đối tượng thuộc lớp SqlCommand
            cmd = new SqlCommand();
            cmd.Connection = conn; //Gán kết nối
            cmd.CommandText = sql; //Gán lệnh SQL
            try
            {
                cmd.ExecuteNonQuery(); //Thực hiện câu lệnh SQL
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
            cmd.Dispose();//Giải phóng bộ nhớ
            cmd = null;
        }

        //Hàm kiểm tra khoá trùng
        public static bool CheckKey(string sql)
        {
            SqlDataAdapter dap = new SqlDataAdapter(sql, conn);
            DataTable table = new DataTable();
            dap.Fill(table);
            if (table.Rows.Count > 0)
                return true;
            else return false;
        }
    }
}
