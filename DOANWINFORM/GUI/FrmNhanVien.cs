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
    public partial class FrmNhanVien : Form
    {

        public DataTable tblNV;
        public FrmNhanVien()
        {
            InitializeComponent();
        }

        private void FrmNhanVien_Load(object sender, EventArgs e)
        {
            btnBoQua.Enabled = false;
            Class.Function.Connect();
            LoadDataGridView();
        }

        private void LoadDataGridView()
        {
            string sql;
            sql = "SElECT * FROM T_NhanVien";
            tblNV = Function.GetDataToTable(sql);// Đọc du lieu tu bang 
            dvNhanVien.DataSource = tblNV;
           // dvNhanVien.Columns[0].HeaderText = " Mã Nhân Viên";
           // dvNhanVien.Columns[1].HeaderText = " Họ Tên";
           // dvNhanVien.Columns[2].HeaderText = " Mã NCC";
           // dvNhanVien.Columns[3].HeaderText = " Đơn Vị Tính";
           // dvNhanVien.Columns[4].HeaderText = " SL Tồn";
           // dvNhanVien.Columns[0].HeaderText = " TG Tồn";
            dvNhanVien.Columns[1].Width = 300;
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void ResetValue()
        {

            txtMaNV.Text = "";
            txtHoTen.Text = "";
            txtGioiTinh.Text = "";

            txtChucVu.Text = "";
            txtDiaChi.Text = "";
            txtTinh.Text = "";
            txtSDT.Text = "";
            dtpNgaySinh.Value = DateTime.Now; // Đặt lại ngày tháng hiện tại
            txtMaNV.Focus();
        }

        private void txtHoTen_TextChanged(object sender, EventArgs e)
        {

        }

        private void btnBoQua_Click(object sender, EventArgs e)
        {
            ResetValue();
            btnBoQua.Enabled = true;
            btnThem.Enabled = true;
            btnXoa.Enabled = true;
        }

        private void dvNhanVien_Click(object sender, EventArgs e)
        {
            if (btnThem.Enabled == false)
            {
                MessageBox.Show("Đang ở chế độ thêm mới!",
                                "Thông báo",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Information);
                txtMaNV.Focus();
                return;
            }
            if (dvNhanVien.Rows.Count == 0) // Nếu không có dữ liệu
            {
                MessageBox.Show("Không có dữ liệu!",
                                "Thông báo",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Information);
                return;
            }
            if (dvNhanVien.CurrentRow != null)
            {

               
                txtMaNV.Text = dvNhanVien.CurrentRow.Cells["MaNV"].Value.ToString();
                txtHoTen.Text = dvNhanVien.CurrentRow.Cells["HoTen"].Value.ToString();

                if (dvNhanVien.CurrentRow.Cells["NgaySinh"].Value != null &&
                            dvNhanVien.CurrentRow.Cells["NgaySinh"].Value != DBNull.Value)
                // Đảm bảo tính hợp lệ: Nếu NgaySinh có thể có các giá trị không hợp lệ khác ngoài null
                // và DBNull.Value, hãy mở rộng điều kiện kiểm tra để xử lý các trường hợp đó.          
                {
                    dtpNgaySinh.Value = (DateTime)dvNhanVien.CurrentRow.Cells["NgaySinh"].Value;
                }
                else
                {
                    dtpNgaySinh.Value = DateTime.Now; // Hoặc giá trị mặc định khác
                }

                txtGioiTinh.Text = dvNhanVien.CurrentRow.Cells["Phai"].Value.ToString();
                txtChucVu.Text = dvNhanVien.CurrentRow.Cells["ChucVu"].Value.ToString();
                txtDiaChi.Text = dvNhanVien.CurrentRow.Cells["DiaChi"].Value.ToString();
                txtTinh.Text = dvNhanVien.CurrentRow.Cells["TP_Tinh"].Value.ToString();
                txtSDT.Text = dvNhanVien.CurrentRow.Cells["DienThoai"].Value.ToString();

                btnSua.Enabled = true;
                btnXoa.Enabled = true;
                btnBoQua.Enabled = true; // Uncomment if btnBoQua should be enabled here

            }
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            string sql;

            if (txtMaNV.Text.Trim() == "")
            {
                MessageBox.Show("Vui lòng chọn bản ghi cần sửa.",
                                "Thông báo",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Information);
                return;
            }
           
            // Cập nhật dữ liệu vào database
            sql = "UPDATE T_NhanVien SET ";

            if (!string.IsNullOrEmpty(txtMaNV.Text.Trim()))
            {
                sql += "MaNV = N'" + txtMaNV.Text.Trim() + "', ";
            }

            if (!string.IsNullOrEmpty(txtHoTen.Text.Trim()))
            {
                sql += "HoTen = N'" + txtHoTen.Text.Trim() + "', ";
            }

            if (dtpNgaySinh.Value != null)
            {
                sql += "NgaySinh = N'" + dtpNgaySinh.Value + "', ";
            }

            if (!string.IsNullOrEmpty(txtGioiTinh.Text.Trim()))
            {
                sql += "Phai = N'" + txtGioiTinh.Text.Trim() + "', ";
            }

            if (!string.IsNullOrEmpty(txtChucVu.Text.Trim()))
            {
                sql += "ChucVu = N'" + txtChucVu.Text.Trim() + "', ";
            }

            if (!string.IsNullOrEmpty(txtDiaChi.Text.Trim()))
            {
                sql += "DiaChi = N'" + txtDiaChi.Text.Trim() + "', ";
            }

            if (!string.IsNullOrEmpty(txtTinh.Text.Trim()))
            {
                sql += "TP_Tinh = N'" + txtTinh.Text.Trim() + "', ";
            }
            if (!string.IsNullOrEmpty(txtSDT.Text.Trim()))
            {
                sql += "TP_Tinh = N'" + txtSDT.Text.Trim() + "', ";
            }




            // Xóa dấu phẩy cuối cùng nếu có
            if (sql.EndsWith(", "))
            {
                sql = sql.Remove(sql.Length - 2);
            }

            sql += " WHERE MaNV = N'" + txtMaNV.Text.Trim() + "'";

            Class.Function.RunSQL(sql);
            LoadDataGridView();
            ResetValue();
            btnBoQua.Enabled = false;
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            // Kiểm tra xem đã chọn bản ghi để xóa chưa
            if (txtMaNV.Text == "")
            {
                MessageBox.Show("Vui lòng chọn bản ghi cần xóa.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            // Xác nhận xóa bản ghi
            if (MessageBox.Show("Bạn có muốn xoá không?", "Xác nhận xoá", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                // Xóa từng bảng một
                string sql1 = "DELETE FROM T_NhanVien WHERE  MaNV = N'" + txtMaNV.Text.Trim() + "'";
                // string sql2 = "DELETE FROM T_HangHoa WHERE MaHang = N'" + txtMaHang.Text.Trim() + "'";

                // Thực thi câu lệnh SQL
                Class.Function.RunSQL(sql1);
                //  Class.Function.RunSQL(sql2);

                // Cập nhật lại DataGridView và làm sạch các ô nhập liệu
                LoadDataGridView();
                ResetValue();
            }
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
          
            string sql; //Lưu lệnh sql

            // Validate input fields
            if (txtMaNV.Text.Trim().Length == 0) // Check if MaNCC is empty
            {
                MessageBox.Show("Bạn phải nhập mã nhân viên", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtMaNV.Focus();
                return;
            }
            if (txtHoTen.Text.Trim().Length == 0) // Check if TenNCC is empty
            {
                MessageBox.Show("Bạn phải nhập mã nhân viên", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtHoTen.Focus();
                return;
            }
            

            if (txtChucVu.Text.Trim().Length == 0) // Check if DiaChiNCC is empty
            {
                MessageBox.Show("Bạn phải nhập số tiền", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtChucVu.Focus();
                return;
            }

            if (txtDiaChi.Text.Trim().Length == 0) // Check if DiaChiNCC is empty
            {
                MessageBox.Show("Bạn phải nhập số tiền", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtTinh.Focus();
                return;
            }
            if (txtChucVu.Text.Trim().Length == 0) // Check if DiaChiNCC is empty
            {
                MessageBox.Show("Bạn phải nhập tỉnh", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtTinh.Focus();
                return;
            }


            // Check if MaNCC already exists
            sql = "SELECT MaNV FROM T_NhanVien WHERE MaNV = N'" + txtMaNV.Text.Trim() + "'";
            if (Class.Function.CheckKey(sql))
            {
                MessageBox.Show("Mã nhân viên này đã có, bạn phải nhập mã khác", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtMaNV.Focus();
                return;
            }



            // Insert new record 
            sql = "INSERT INTO T_Nhanvien VALUES(" +
                   "N'" + txtMaNV.Text + "', " +
                   "N'" + txtHoTen.Text + "', " +
                   "'" + dtpNgaySinh.Value + "', " +
                   "N'" + txtGioiTinh.Text + "', " +
                   "N'" + txtChucVu.Text + "', " + 
                   "N'" + txtDiaChi.Text + "', " + 
                   "N'" + txtTinh.Text + "', " +   
                   "N'" + txtSDT.Text + "'" +    
                   ")";


            Class.Function.RunSQL(sql); // Execute SQL command
            LoadDataGridView(); // Reload DataGridView
            ResetValue();


            // Đặt lại focus vào txtMaNCC để chuẩn bị cho thêm mới tiếp theo
            txtMaNV.Focus();
        }

        private void txtTimKiem_TextChanged(object sender, EventArgs e)
        {
            string keyword = txtTimKiem.Text.Trim();
            if (keyword != null)
            {
                string sql = "SELECT * FROM T_NhanVien WHERE" +
                             " MaNV COLLATE SQL_Latin1_General_CP1_CI_AI LIKE N'%" + keyword + "%' " +
                             "OR HoTen COLLATE SQL_Latin1_General_CP1_CI_AI LIKE N'%" + keyword + "%'" +
                             "OR ChucVu COLLATE SQL_Latin1_General_CP1_CI_AI LIKE N'%" + keyword + "%'" +
                             "OR DiaChi COLLATE SQL_Latin1_General_CP1_CI_AI LIKE N'%" + keyword + "%'" +
                             "OR TP_Tinh COLLATE SQL_Latin1_General_CP1_CI_AI LIKE N'%" + keyword + "%'" +
                             "OR DienThoai COLLATE SQL_Latin1_General_CP1_CI_AI LIKE N'%" + keyword + "%'";
                DataTable searchResult = Function.GetDataToTable(sql);
                dvNhanVien.DataSource = searchResult;
                // COLLATE SQL_Latin1_General_CP1_CI_AI
                // thực hiện tìm kiếm không phân biệt chữ hoa chữ thường và không phân biệt dấu
            }
        }

        private void FrmNhanVien_FormClosing(object sender, FormClosingEventArgs e)
        {
            FrmMain FrmMain = new FrmMain();
            FrmMain.Show();

            this.Hide();
            e.Cancel = true;
        }
    }
}
