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
    public partial class FrmPhieuChi : Form
    {
        public DataTable tblPC;
        public FrmPhieuChi()
        {
            InitializeComponent();
        }

        private void FrmPhieuChi_Load(object sender, EventArgs e)
        {
             btnBoQua.Enabled = false;
            Class.Function.Connect();
            LoadDataGridView();
        }

        private void LoadDataGridView()
        {
            string sql;
            sql = "SElECT * FROM T_PhieuChi";
            tblPC = Function.GetDataToTable(sql);// Đọc du lieu tu bang 
            dvPhieuChi.DataSource = tblPC;
            // dvNhanVien.Columns[0].HeaderText = " Mã Nhân Viên";
            // dvNhanVien.Columns[1].HeaderText = " Họ Tên";
            // dvNhanVien.Columns[2].HeaderText = " Mã NCC";
            // dvNhanVien.Columns[3].HeaderText = " Đơn Vị Tính";
            // dvNhanVien.Columns[4].HeaderText = " SL Tồn";
            // dvNhanVien.Columns[0].HeaderText = " TG Tồn";
            //dvNhanVien.Columns[1].Width = 300;
            dvPhieuChi.AllowUserToAddRows = false;
            dvPhieuChi.EditMode = DataGridViewEditMode.EditProgrammatically;
        }
        private void ResetValue()
        {
          
            txtMaPC.Text = "";
            txtMaNV.Text = "";
            txtMaNCC.Text = "";
          
            txtSoTien.Text = "";
            dtpNgayChi.Value = DateTime.Now; // Đặt lại ngày tháng hiện tại
            txtMaPC.Focus();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void btnBoQua_Click(object sender, EventArgs e)
        {
             ResetValue();
            btnBoQua.Enabled = true;
            btnThem.Enabled = true;
            btnXoa.Enabled = true;
        }

        private void dvPhieuChi_Click(object sender, EventArgs e)
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
            if (dvPhieuChi.Rows.Count == 0) // Nếu không có dữ liệu
            {
                MessageBox.Show("Không có dữ liệu!",
                                "Thông báo",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Information);
                return;
            }
            if (dvPhieuChi.CurrentRow != null)
            {
                txtMaPC.Text = dvPhieuChi.CurrentRow.Cells["MaPC"].Value.ToString();
                txtMaNV.Text = dvPhieuChi.CurrentRow.Cells["MaNV"].Value.ToString();
                txtMaNCC.Text = dvPhieuChi.CurrentRow.Cells["MaNCC"].Value.ToString();

                dtpNgayChi.Value = (DateTime)dvPhieuChi.CurrentRow.Cells["NgayChi"].Value;
                txtSoTien.Text = dvPhieuChi.CurrentRow.Cells["SoTien"].Value.ToString();

                btnSua.Enabled = true;
                btnXoa.Enabled = true;
                btnBoQua.Enabled = true; // Uncomment if btnBoQua should be enabled here

            }
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            string sql;

            if (txtMaPC.Text.Trim() == "")
            {
                MessageBox.Show("Vui lòng chọn bản ghi cần sửa.",
                                "Thông báo",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Information);
                return;
            }

            // Cập nhật dữ liệu vào database
            sql = "UPDATE T_PhieuChi SET ";

            if (!string.IsNullOrEmpty(txtMaNV.Text.Trim()))
            {
                sql += "MaNV = N'" + txtMaNV.Text.Trim() + "', ";
            }

            if (!string.IsNullOrEmpty(txtMaNCC.Text.Trim()))
            {
                sql += "MaNCC = N'" + txtMaNCC.Text.Trim() + "', ";
            }

            if (dtpNgayChi.Value != null)
            {
                sql += "NgayChi = N'" + dtpNgayChi.Value + "', ";
            }

            if (!string.IsNullOrEmpty(txtSoTien.Text.Trim()))
            {
                sql += "SoTien = N'" + txtSoTien.Text.Trim() + "', ";
            }

          

            // Xóa dấu phẩy cuối cùng nếu có
            if (sql.EndsWith(", "))
            {
                sql = sql.Remove(sql.Length - 2);
            }

            sql += " WHERE MaPC = N'" + txtMaPC.Text.Trim() + "'";

            Class.Function.RunSQL(sql);
            LoadDataGridView();
            ResetValue();
            btnBoQua.Enabled = false;
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            // Kiểm tra xem đã chọn bản ghi để xóa chưa
            if (txtMaPC.Text == "")
            {
                MessageBox.Show("Vui lòng chọn bản ghi cần xóa.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            // Xác nhận xóa bản ghi
            if (MessageBox.Show("Bạn có muốn xoá không?", "Xác nhận xoá", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                // Xóa từng bảng một
                string sql1 = "DELETE FROM T_PhieuChi WHERE  MaPC = N'" + txtMaPC.Text.Trim() + "'";
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
            if (txtMaPC.Text.Trim().Length == 0) // Check if MaNCC is empty
            {
                MessageBox.Show("Bạn phải nhập mã nhà cung cấp", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtMaPC.Focus();
                return;
            }
            if (txtMaNV.Text.Trim().Length == 0) // Check if TenNCC is empty
            {
                MessageBox.Show("Bạn phải nhập mã nhân viên", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtMaNV.Focus();
                return;
            }
            if (txtMaNCC.Text.Trim().Length == 0) // Check if DiaChiNCC is empty
            {
                MessageBox.Show("Bạn phải nhập mã nhà cung cấp", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtMaNCC.Focus();
                return;
            }
            if (dtpNgayChi.Value == null) // Check if Tinh is empty
            {
                MessageBox.Show("Bạn phải chọn ngày chi", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                dtpNgayChi.Focus();
                return;
            }
           
            if (txtSoTien.Text.Trim().Length == 0) // Check if DiaChiNCC is empty
            {
                MessageBox.Show("Bạn phải nhập số tiền", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtSoTien.Focus();
                return;
            }



            // Check if MaNCC already exists
            sql = "SELECT MaPC FROM T_PhieuChi WHERE MaPC = N'" + txtMaPC.Text.Trim() + "'";
            if (Class.Function.CheckKey(sql))
            {
                MessageBox.Show("Mã phiếu chi  này đã có, bạn phải nhập mã khác", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtMaPC.Focus();
                return;
            }
            // Check if MaNCC already exists
            sql = "SELECT MaNV FROM T_NhanVien WHERE MaNV = N'" + txtMaNV.Text.Trim() + "'";
            if (!Class.Function.CheckKey(sql))
            {
                MessageBox.Show("Mã  nhân viên này không có, bạn phải nhập mã khác", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtMaNV.Focus();
                return;
            }
            sql = "SELECT MaNCC FROM T_NhaCungCap WHERE MaNCC = N'" + txtMaNCC.Text.Trim() + "'";
            if (!Class.Function.CheckKey(sql))
            {
                MessageBox.Show("Mã nhà cung cấp này không có, bạn phải nhập mã khác", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtMaNCC.Focus();
                return;
            }


            // Insert new record 
            sql = "INSERT INTO T_PhieuChi VALUES(" +
                  "N'" + txtMaPC.Text + "', " +
                  "N'" + txtMaNV.Text + "', " +
                  "N'" + txtMaNCC.Text + "', " +
                  "N'" + dtpNgayChi.Value + "', " +
                  "N'" + txtSoTien.Text + "'" +
                  ")";


            Class.Function.RunSQL(sql); // Execute SQL command
            LoadDataGridView(); // Reload DataGridView
            ResetValue();


            // Đặt lại focus vào txtMaNCC để chuẩn bị cho thêm mới tiếp theo
            txtMaPC.Focus();
        }

        private void txtTimKiem_TextChanged(object sender, EventArgs e)
        {
            string keyword = txtTimKiem.Text.Trim();
            if (keyword != null)
            {
                string sql = "SELECT * FROM T_PhieuChi WHERE" +
                             " MaPC COLLATE SQL_Latin1_General_CP1_CI_AI LIKE N'%" + keyword + "%' " +
                             "OR MaNV COLLATE SQL_Latin1_General_CP1_CI_AI LIKE N'%" + keyword + "%'" +
                             "OR MaNCC COLLATE SQL_Latin1_General_CP1_CI_AI LIKE N'%" + keyword + "%'" +
                             "OR SoTien COLLATE SQL_Latin1_General_CP1_CI_AI LIKE N'%" + keyword + "%'";
                           
                DataTable searchResult = Function.GetDataToTable(sql);
                dvPhieuChi.DataSource = searchResult;
                // COLLATE SQL_Latin1_General_CP1_CI_AI
                // thực hiện tìm kiếm không phân biệt chữ hoa chữ thường và không phân biệt dấu
            }
        }

        private void FrmPhieuChi_FormClosing(object sender, FormClosingEventArgs e)
        {
            FrmMain FrmMain = new FrmMain();
            FrmMain.Show();

            this.Hide();
            e.Cancel = true;
        }
    }
}
