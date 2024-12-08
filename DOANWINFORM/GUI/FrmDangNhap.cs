using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using DOANWINFORM.Class;
using System.Data.SqlClient;
 

namespace DOANWINFORM.GUI
{
    public partial class FrmDangNhap : Form
    {
        public FrmDangNhap()
        {
            InitializeComponent();
           
        }

      

        private void FrmDangNhap_Load(object sender, EventArgs e)
        {
            Class.Function.Connect();
           
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string tk = txtTK.Text.Trim();
            string mk = txtMK.Text.Trim();

            try
            {
              

                string query = "SELECT COUNT(*) FROM T_TaiKhoan WHERE Username = @Username AND Password = @Password";
                SqlCommand cmd = new SqlCommand(query, Function.conn);
                cmd.Parameters.AddWithValue("@Username", tk);
                cmd.Parameters.AddWithValue("@Password", mk);

                int userCount = (int)cmd.ExecuteScalar();

                if (userCount > 0)
                {
                    // Successful login
                    FrmMain mainForm = new FrmMain();
                    mainForm.Show();
                    this.Hide(); // Hide the login form
                }
                else
                {
                    // Unsuccessful login
                    MessageBox.Show("Invalid username or password.", "Login Failed", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("An error occurred: " + ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
           
        }

        private void FrmDangNhap_FormClosed(object sender, FormClosedEventArgs e)
        {
           
                
           
        }

        private void FrmDangNhap_FormClosing(object sender, FormClosingEventArgs e)
        {
            // Hiển thị hộp thoại xác nhận khi người dùng cố gắng đóng form
            DialogResult result = MessageBox.Show("Bạn có chắc chắn muốn đóng ứng dụng không?", "Xác nhận", MessageBoxButtons.YesNo);

            if (result == DialogResult.No)
            {
                // Hủy việc đóng form
                e.Cancel = true;
            }
            else
            {
                // Thực hiện hành động trước khi form đóng, ví dụ như ngắt kết nối
                Function.Disconnect();
            }
        }
    }
}