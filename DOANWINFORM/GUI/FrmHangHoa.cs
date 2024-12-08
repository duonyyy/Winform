using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using DOANWINFORM.Class;

namespace DOANWINFORM.GUI
{
    public partial class FrmHangHoa : Form
    {
        public DataTable tblHH;
        public FrmHangHoa()
        {
            InitializeComponent();
        }

        private void FrmHangHoa_Load(object sender, EventArgs e)
        {
           
           
            btnBoQua.Enabled = false;
            Class.Function.Connect();
            LoadDataGridView();
        }

        private void LoadDataGridView()
        {
            string sql = "SELECT * FROM T_HangHoa";
            DataTable tblHH = Function.GetDataToTable(sql); // Đọc dữ liệu từ bảng
            dvHangHoa.DataSource = tblHH;

            dvHangHoa.Columns[0].HeaderText = "Mã Hàng";
            dvHangHoa.Columns[1].HeaderText = "Tên Hàng";
            dvHangHoa.Columns[2].HeaderText = "Mã NCC";
            dvHangHoa.Columns[3].HeaderText = "Đơn Vị Tính";
            dvHangHoa.Columns[4].HeaderText = "SL Tồn";
            dvHangHoa.Columns[5].HeaderText = "TG Tồn";

            dvHangHoa.Columns[1].Width = 300;
        }


        private void dvHangHoa_Click(object sender, EventArgs e)
        {
            if (btnLuu.Enabled == false)
            {
                MessageBox.Show("Đang ở chế độ thêm mới!",
                                "Thông báo",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Information);
                txtMaHang.Focus();
                return;
            }
            if (dvHangHoa.Rows.Count == 0) // Nếu không có dữ liệu
            {
                MessageBox.Show("Không có dữ liệu!",
                                "Thông báo",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Information);
                return;
            }
            if (dvHangHoa.CurrentRow != null)
            {
                txtMaHang.Text = dvHangHoa.CurrentRow.Cells["MaHang"].Value.ToString();
                txtTenHang.Text = dvHangHoa.CurrentRow.Cells["TenHang"].Value.ToString();
                txtMaNCC.Text = dvHangHoa.CurrentRow.Cells["MANCC"].Value.ToString();
                txtDVT.Text = dvHangHoa.CurrentRow.Cells["DVT"].Value.ToString();
                txtSLTon.Text = dvHangHoa.CurrentRow.Cells["SLTonDK"].Value.ToString();
                txtTGTon.Text = dvHangHoa.CurrentRow.Cells["TGTonDK"].Value.ToString();

                btnSua.Enabled = true;
                btnXoa.Enabled = true;
                btnBoQua.Enabled = true; // Uncomment if btnBoQua should be enabled here
            }
        }


        private void ResetValue()
        {
            txtMaHang.Text = "";
            txtTenHang.Text = "";
            txtMaNCC.Text = "";
            txtDVT.Text = "";
            txtSLTon.Text = "";
            txtTGTon.Text = "";
        }
      

        private void btnLuu_Click(object sender, EventArgs e)
        {


            string sql; //Lưu lệnh sql
            if (txtMaHang.Text.Trim().Length == 0) //Nếu chưa nhập 
            {
                MessageBox.Show("Bạn phải nhập mã hàng", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtMaHang.Focus();
                return;
            }
            if (txtTenHang.Text.Trim().Length == 0) //Nếu chưa nhập 
            {
                MessageBox.Show("Bạn phải nhập tên hàng", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtTenHang.Focus();
                return;
            }
            if (txtDVT.Text.Trim().Length == 0) //Nếu chưa nhập 
            {
                MessageBox.Show("Bạn phải nhập đơn vị tính", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtDVT.Focus();
                return;
            }

            sql = "Select MaHang From T_HangHoa where MaHang=N'" + txtMaHang.Text.Trim() + "'";
            if (Class.Function.CheckKey(sql))
            {
                MessageBox.Show("Mã hàng  này đã có, bạn phải nhập mã khác", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtMaHang.Focus();
                return;
            }

            sql = "SELECT MaNCC FROM T_NhaCungCap WHERE MaNCC = N'" + txtMaNCC.Text.Trim() + "'";
            if (!Class.Function.CheckKey(sql))
            {
                MessageBox.Show("Mã nhà cung cấp này không tồn tại, bạn phải nhập mã khác", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtMaNCC.Focus();
                return;
            }

            sql = "INSERT INTO T_HangHoa VALUES(" +
            "N'" + txtMaHang.Text + "', " +
            "N'" + txtTenHang.Text + "', " +
            "N'" + txtMaNCC.Text + "', " +
            "N'" + txtDVT.Text + "', " +
            txtSLTon.Text + ", " +
            txtTGTon.Text + ")";



            Class.Function.RunSQL(sql); //Thực hiện câu lệnh sql
            LoadDataGridView(); //Nạp lại DataGridView
            ResetValue();

            txtMaHang.Focus();


        }

        private void txtSLTon_KeyPress(object sender, KeyPressEventArgs e)
        {
            // Kiểm tra xem ký tự được nhấn là số hoặc là một phím điều khiển (ví dụ: backspace)
            if (!char.IsDigit(e.KeyChar) && !char.IsControl(e.KeyChar))
            {
                // Nếu ký tự không phải là số hoặc phím điều khiển, xử lý sự kiện (bỏ qua ký tự đó)
                e.Handled = true;
            }
        }

        private void txtTGTon_KeyPress(object sender, KeyPressEventArgs e)
        {
            // Kiểm tra xem ký tự được nhấn là số hoặc là một phím điều khiển (ví dụ: backspace)
            if (!char.IsDigit(e.KeyChar) && !char.IsControl(e.KeyChar))
            {
                // Nếu ký tự không phải là số hoặc phím điều khiển, xử lý sự kiện (bỏ qua ký tự đó)
                e.Handled = true;
            }
        }

        private void txtMaNCC_KeyPress(object sender, KeyPressEventArgs e)
        {
            // Kiểm tra xem ký tự được nhấn là số hoặc là một phím điều khiển (ví dụ: backspace)
            if (!char.IsDigit(e.KeyChar) && !char.IsControl(e.KeyChar))
            {
                // Nếu ký tự không phải là số hoặc phím điều khiển, xử lý sự kiện (bỏ qua ký tự đó)
                e.Handled = true;
            }
        }

        private void btnBoQua_Click(object sender, EventArgs e)
        {
            ResetValue();
            btnBoQua.Enabled = false;
            btnLuu.Enabled = true;
            btnXoa.Enabled = true;
            btnSua.Enabled = true;
           
            txtMaHang.Enabled = false;
        }

        private void txtMaHang_KeyUp(object sender, KeyEventArgs e)
        {


            if (e.KeyCode == Keys.Enter)
                SendKeys.Send("{TAB}");

        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            // Kiểm tra xem đã chọn bản ghi để xóa chưa
            if (txtMaHang.Text == "")
            {
                MessageBox.Show("Vui lòng chọn bản ghi cần xóa.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            // Xác nhận xóa bản ghi
            if (MessageBox.Show("Bạn có muốn xoá không?", "Xác nhận xoá", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                // Xóa từng bảng một
                string sql1 = "DELETE FROM T_ChiTietBH WHERE MaHang = N'" + txtMaHang.Text.Trim() + "'";
                string sql2 = "DELETE FROM T_HangHoa WHERE MaHang = N'" + txtMaHang.Text.Trim() + "'";

                // Thực thi câu lệnh SQL
                Class.Function.RunSQL(sql1);
                Class.Function.RunSQL(sql2);

                // Cập nhật lại DataGridView và làm sạch các ô nhập liệu
                LoadDataGridView();
                ResetValue();
            }
        }


        private void btnSua_Click(object sender, EventArgs e)
        {
            string sql;

            if (txtMaHang.Text == "")
            {
                MessageBox.Show("Vui lòng chọn bản ghi cần sửa.", 
                                "Thông báo",
                                 MessageBoxButtons.OK, 
                                 MessageBoxIcon.Information);
                return;
            }

            // Cập nhật dữ liệu vào database
            sql = "UPDATE T_HangHoa SET ";

            if (!string.IsNullOrEmpty(txtTenHang.Text.Trim()))
            {
                sql += "TenHang = N'" + txtTenHang.Text.Trim() + "', ";
            }

            if (!string.IsNullOrEmpty(txtMaNCC.Text.Trim()))
            {
                sql += "MaNCC = N'" + txtMaNCC.Text.Trim() + "', ";
            }

            if (!string.IsNullOrEmpty(txtDVT.Text.Trim()))
            {
                sql += "DVT = N'" + txtDVT.Text.Trim() + "', ";
            }

            if (!string.IsNullOrEmpty(txtSLTon.Text.Trim()))
            {
                sql += "SLTonDK = '" + txtSLTon.Text.Trim() + "', ";
            }

            if (!string.IsNullOrEmpty(txtTGTon.Text.Trim()))
            {
                sql += "TGTonDK = '" + txtTGTon.Text.Trim() + "', ";
            }

            // Xóa dấu phẩy cuối cùng nếu có
            if (sql.EndsWith(", "))
            {
                sql = sql.Remove(sql.Length - 2);
            }

            sql += " WHERE MaHang = N'" + txtMaHang.Text.Trim() + "'";

            Class.Function.RunSQL(sql);
            LoadDataGridView();
            ResetValue();
            btnBoQua.Enabled = false;
        }

        private void txtTimKiem_TextChanged(object sender, EventArgs e)
        {
            string keyword = txtTimKiem.Text.Trim();
            if(keyword != null)
            {
                string sql = "SELECT * FROM T_HangHoa WHERE" +
                    " MaHang COLLATE SQL_Latin1_General_CP1_CI_AI LIKE N'%" + keyword + "%'" +
                    " OR TenHang COLLATE SQL_Latin1_General_CP1_CI_AI LIKE N'%" + keyword + "%'" +
                    " OR MaNCC COLLATE SQL_Latin1_General_CP1_CI_AI LIKE N'%" + keyword + "%'";
                DataTable searchResult = Function.GetDataToTable(sql);
                dvHangHoa.DataSource = searchResult;
                // COLLATE SQL_Latin1_General_CP1_CI_AI
                // thực hiện tìm kiếm không phân biệt chữ hoa chữ thường và không phân biệt dấu
            }
        }

        private void btnDong_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void FrmHangHoa_FormClosing(object sender, FormClosingEventArgs e)
        {
            FrmMain FrmMain = new FrmMain();
            FrmMain.Show();

            this.Hide();
            e.Cancel = true;
        }
    }
}
