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
    public partial class FrmNhaCungCap : Form
    {
        public DataTable tblNCC;
        public FrmNhaCungCap()
        {
            InitializeComponent();
        }

        private void FrmNhaCungCap_Load(object sender, EventArgs e)
        {
            Class.Function.Connect();
            LoadDataGridView();
        }

        private void LoadDataGridView()
        {
            string sql;
            sql = "SElECT * FROM T_NhaCungCap";
            tblNCC = Function.GetDataToTable(sql);// Đọc du lieu tu bang 
            dvNCC.DataSource = tblNCC;
            // dvNhanVien.Columns[0].HeaderText = " Mã Nhân Viên";
            // dvNhanVien.Columns[1].HeaderText = " Họ Tên";
            // dvNhanVien.Columns[2].HeaderText = " Mã NCC";
            // dvNhanVien.Columns[3].HeaderText = " Đơn Vị Tính";
            // dvNhanVien.Columns[4].HeaderText = " SL Tồn";
            // dvNhanVien.Columns[0].HeaderText = " TG Tồn";
            dvNCC.Columns[1].Width = 300;
            dvNCC.Columns[2].Width = 200;
            dvNCC.Columns[3].Width = 200;
        }

        private void btnBoQua_Click(object sender, EventArgs e)
        {
               ResetValue();
                btnBoQua.Enabled = true;
                btnThem.Enabled = true;
                btnXoa.Enabled = true;
              
             


        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
           
           
           

        }

        private void dvNCC_Click(object sender, EventArgs e)
        {
            if (btnThem.Enabled == false)
            {
                MessageBox.Show("Đang ở chế độ thêm mới!",
                                "Thông báo",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Information);
                txtMaNCC.Focus();
                return;
            }
            if (dvNCC.Rows.Count == 0) // Nếu không có dữ liệu
            {
                MessageBox.Show("Không có dữ liệu!",
                                "Thông báo",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Information);
                return;
            }
            if (dvNCC.CurrentRow != null)
            {
                txtMaNCC.Text = dvNCC.CurrentRow.Cells["MaNCC"].Value.ToString();
                txtTenNCC.Text = dvNCC.CurrentRow.Cells["TenNCC"].Value.ToString();
                txtDiaChiNCC.Text = dvNCC.CurrentRow.Cells["DiaChiNCC"].Value.ToString();
                txtTinh.Text = dvNCC.CurrentRow.Cells["TP_Tinh"].Value.ToString();
                txtSDTNCC.Text = dvNCC.CurrentRow.Cells["DienThoaiNCC"].Value.ToString();
                txtMST.Text = dvNCC.CurrentRow.Cells["MST"].Value.ToString();
                txtWeb.Text = dvNCC.CurrentRow.Cells["Web"].Value.ToString();

                btnSua.Enabled = true;
                btnXoa.Enabled = true;
                btnBoQua.Enabled = true; // Uncomment if btnBoQua should be enabled here
            }
        }
        private void ResetValue()
        {
            txtMaNCC.Text = "";
            txtTenNCC.Text = "";
            txtDiaChiNCC.Text = "";
            txtTinh.Text = "";
            txtSDTNCC.Text = "";
            txtMST.Text = "";
            txtWeb.Text = "";
        }

      
        private void btnThem_Click_2(object sender, EventArgs e)
        {




           
            string sql; //Lưu lệnh sql

            // Validate input fields
            if (txtMaNCC.Text.Trim().Length == 0) // Check if MaNCC is empty
            {
                MessageBox.Show("Bạn phải nhập mã nhà cung cấp", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtMaNCC.Focus();
                return;
            }
            if (txtTenNCC.Text.Trim().Length == 0) // Check if TenNCC is empty
            {
                MessageBox.Show("Bạn phải nhập tên nhà cung cấp", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtTenNCC.Focus();
                return;
            }
            if (txtDiaChiNCC.Text.Trim().Length == 0) // Check if DiaChiNCC is empty
            {
                MessageBox.Show("Bạn phải nhập địa chỉ nhà cung cấp", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtDiaChiNCC.Focus();
                return;
            }
            if (txtTinh.Text.Trim().Length == 0) // Check if Tinh is empty
            {
                MessageBox.Show("Bạn phải nhập tỉnh thành", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtTinh.Focus();
                return;
            }



            // Check if MaNCC already exists
            sql = "SELECT MaNCC FROM T_NhaCungCap WHERE MaNCC = N'" + txtMaNCC.Text.Trim() + "'";
            if (Class.Function.CheckKey(sql))
            {
                MessageBox.Show("Mã nhà cung cấp này đã có, bạn phải nhập mã khác", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtMaNCC.Focus();
                return;
            }

            // Insert new record into T_NhaCungCap table
            sql = "INSERT INTO T_NhaCungCap VALUES(" +
                "N'" + txtMaNCC.Text + "', " +
                "N'" + txtTenNCC.Text + "', " +
                "N'" + txtDiaChiNCC.Text + "', " +
                "N'" + txtTinh.Text + "', " +
                "N'" + txtSDTNCC.Text + "', " +
                "N'" + txtMST.Text + "', " +
                "N'" + txtWeb.Text + "')";

            Class.Function.RunSQL(sql); // Execute SQL command
            LoadDataGridView(); // Reload DataGridView
            ResetValue();


            // Đặt lại focus vào txtMaNCC để chuẩn bị cho thêm mới tiếp theo
            txtMaNCC.Focus();
        }
        private void txtSDTNCC_KeyPress(object sender, KeyPressEventArgs e)
        {
            // Kiểm tra xem ký tự được nhấn là số hoặc là một phím điều khiển (ví dụ: backspace)
            if (!char.IsDigit(e.KeyChar) && !char.IsControl(e.KeyChar))
            {
                // Nếu ký tự không phải là số hoặc phím điều khiển, xử lý sự kiện (bỏ qua ký tự đó)
                e.Handled = true;
            }
        }

        private void txtMaNCC_KeyUp(object sender, KeyEventArgs e)
        {

            if (e.KeyCode == Keys.Enter)
                SendKeys.Send("{TAB}");
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            // Kiểm tra xem đã chọn bản ghi để xóa chưa
            if (txtMaNCC.Text == "")
            {
                MessageBox.Show("Vui lòng chọn bản ghi cần xóa.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            // Xác nhận xóa bản ghi
            if (MessageBox.Show("Bạn có muốn xoá không?", "Xác nhận xoá", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
               
                                                     
                string maNCC = txtMaNCC.Text.Trim();// Mã nhà cung cấp cần xóa

               
                
                    // Xóa các chi tiết mặt hàng của hóa đơn mua hàng
                    string sql1 = "DELETE FROM T_ChiTietMH WHERE MaHDMH IN (SELECT MaHDMH FROM T_HoaDonMH WHERE MaNCC = N'" + maNCC + "')";

                    // Xóa các hóa đơn mua hàng của nhà cung cấp
                    string sql2 = "DELETE FROM T_HoaDonMH WHERE MaNCC = N'" + maNCC + "'";

                    // Xóa các chi tiết bán hàng của hóa đơn bán hàng
                    string sql3 = "DELETE FROM T_ChiTietBH WHERE MaHDBH IN (SELECT MaHDBH FROM T_HoaDonBH WHERE MaNCC = N'" + maNCC + "')";

                    // Xóa các hóa đơn bán hàng của nhà cung cấp
                    string sql4 = "DELETE FROM T_HoaDonBH WHERE MaNCC = N'" + maNCC + "'";

                    // Xóa thông tin hàng hóa của nhà cung cấp
                    string sql5 = "DELETE FROM T_HangHoa WHERE MaNCC = N'" + maNCC + "'";

                    // Xóa các phiếu chi của nhà cung cấp
                    string sql6 = "DELETE FROM T_PhieuChi WHERE MaNCC = N'" + maNCC + "'";

                    // Xóa thông tin của nhà cung cấp (nếu cần)
                    string sql7 = "DELETE FROM T_NhaCungCap WHERE MaNCC = N'" + maNCC + "'";

                    // Thực thi các câu lệnh SQL
                    Class.Function.RunSQL(sql1);
                    Class.Function.RunSQL(sql2);
                    Class.Function.RunSQL(sql3);
                    Class.Function.RunSQL(sql4);
                    Class.Function.RunSQL(sql5);
                    Class.Function.RunSQL(sql6);
                    Class.Function.RunSQL(sql7);

              


                // Cập nhật lại DataGridView và làm sạch các ô nhập liệu
                LoadDataGridView();
                ResetValue();
            }
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
           
                string sql;

                if (txtMaNCC.Text.Trim() == "")
                {
                    MessageBox.Show("Vui lòng chọn bản ghi cần sửa.",
                                    "Thông báo",
                                    MessageBoxButtons.OK,
                                    MessageBoxIcon.Information);
                    return;
                }

                // Cập nhật dữ liệu vào database
                sql = "UPDATE T_NhaCungCap SET ";

                if (!string.IsNullOrEmpty(txtTenNCC.Text.Trim()))
                {
                    sql += "TenNCC = N'" + txtTenNCC.Text.Trim() + "', ";
                }

                if (!string.IsNullOrEmpty(txtDiaChiNCC.Text.Trim()))
                {
                    sql += "DiaChiNCC = N'" + txtDiaChiNCC.Text.Trim() + "', ";
                }

                if (!string.IsNullOrEmpty(txtTinh.Text.Trim()))
                {
                    sql += "TP_Tinh = N'" + txtTinh.Text.Trim() + "', ";
                }

                if (!string.IsNullOrEmpty(txtSDTNCC.Text.Trim()))
                {
                    sql += "DienThoaiNCC = N'" + txtSDTNCC.Text.Trim() + "', ";
                }

                if (!string.IsNullOrEmpty(txtMST.Text.Trim()))
                {
                    sql += "MST = N'" + txtMST.Text.Trim() + "', ";
                }

                if (!string.IsNullOrEmpty(txtWeb.Text.Trim()))
                {
                    sql += "Web = N'" + txtWeb.Text.Trim() + "', ";
                }

                // Xóa dấu phẩy cuối cùng nếu có
                if (sql.EndsWith(", "))
                {
                    sql = sql.Remove(sql.Length - 2);
                }

                sql += " WHERE MaNCC = N'" + txtMaNCC.Text.Trim() + "'";

                Class.Function.RunSQL(sql);
                LoadDataGridView();
                ResetValue();
                btnBoQua.Enabled = false;
            

        }

        private void btnThem_Click_1(object sender, EventArgs e)
        {
           
        }

        private void button1_Click(object sender, EventArgs e)
        {

        }

        private void txtTimKiem_TextChanged(object sender, EventArgs e)
        {
            string keyword = txtTimKiem.Text.Trim();
            if (keyword != null)
            {
                string sql = "SELECT * FROM T_NhaCungCap WHERE" +
                             " MaNCC COLLATE SQL_Latin1_General_CP1_CI_AI LIKE N'%" + keyword + "%' " +
                             "OR TenNCC COLLATE SQL_Latin1_General_CP1_CI_AI LIKE N'%" + keyword + "%'" +
                             "OR DiaChiNCC COLLATE SQL_Latin1_General_CP1_CI_AI LIKE N'%" + keyword + "%'"+
                             "OR TP_Tinh COLLATE SQL_Latin1_General_CP1_CI_AI LIKE N'%" + keyword + "%'"+
                             "OR DienThoaiNCC COLLATE SQL_Latin1_General_CP1_CI_AI LIKE N'%" + keyword + "%'";
                DataTable searchResult = Function.GetDataToTable(sql);
                dvNCC.DataSource = searchResult;
                // COLLATE SQL_Latin1_General_CP1_CI_AI
                // thực hiện tìm kiếm không phân biệt chữ hoa chữ thường và không phân biệt dấu
            }
        }

        private void FrmNhaCungCap_FormClosing(object sender, FormClosingEventArgs e)
        {
            FrmMain FrmMain = new FrmMain();
            FrmMain.Show();

            this.Hide();
            e.Cancel = true;
        }
    }
}
