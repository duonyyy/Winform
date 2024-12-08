using System;
using System.Data;
using System.Windows.Forms;
using DOANWINFORM.Class;

namespace DOANWINFORM.GUI
{
    public partial class FrmHoaDonMH : Form
    {
        public DataTable tblHDMH;

        public FrmHoaDonMH()
        {
            InitializeComponent();
        }

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void FrmHonDonMH_Load(object sender, EventArgs e)
        {
            Class.Function.Connect();
            LoadDataGridView();
        }

        private void LoadDataGridView()
        {
            string sql = "SELECT * FROM T_HoaDonMH";
            tblHDMH = Function.GetDataToTable(sql); // Đọc dữ liệu từ bảng
            dgvHDMH.DataSource = tblHDMH;
            // Set column headers (uncomment and modify if needed)
            // dgvHDMH.Columns[0].HeaderText = "Mã Hóa Đơn";
            // dgvHDMH.Columns[1].HeaderText = "Ngày Nhập";
            // dgvHDMH.Columns[2].HeaderText = "Mã Nhân Viên";
            // dgvHDMH.Columns[3].HeaderText = "Mã NCC";
        }

        private void ResetValue()
        {
            txtMaHDMH.Text = "";
            txtMaNV.Text = "";
            txtMaNCC.Text = "";
            dtpNgayNhap.Value = DateTime.Now; // Đặt lại ngày tháng hiện tại
            txtMaHDMH.Focus();
        }

        private void btnBoQua_Click(object sender, EventArgs e)
        {
            ResetValue();
            btnBoQua.Enabled = false;
            btnThem.Enabled = true;
            btnXoa.Enabled = true;
            btnSua.Enabled = true;
        }

        private void dgvHDMH_Click(object sender, EventArgs e)
        {
            if (btnThem.Enabled == false)
            {
                MessageBox.Show("Đang ở chế độ thêm mới!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            if (dgvHDMH.Rows.Count == 0)
            {
                MessageBox.Show("Không có dữ liệu!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            if (dgvHDMH.CurrentRow != null)
            {
                txtMaHDMH.Text = dgvHDMH.CurrentRow.Cells["MaHDMH"].Value.ToString();

                if (dgvHDMH.CurrentRow.Cells["NgayNhap"].Value != DBNull.Value)
                {
                    dtpNgayNhap.Value = (DateTime)dgvHDMH.CurrentRow.Cells["NgayNhap"].Value;
                }
                else
                {
                    dtpNgayNhap.Value = DateTime.Now;
                }

                txtMaNV.Text = dgvHDMH.CurrentRow.Cells["MaNV"].Value.ToString();
                txtMaNCC.Text = dgvHDMH.CurrentRow.Cells["MaNCC"].Value.ToString();

                btnSua.Enabled = true;
                btnXoa.Enabled = true;
                btnBoQua.Enabled = true;
            }
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            if (txtMaHDMH.Text.Trim() == "")
            {
                MessageBox.Show("Vui lòng chọn bản ghi cần sửa.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            string sql = "UPDATE T_HoaDonMH SET " +
                         "MaNV = N'" + txtMaNV.Text.Trim() + "', " +
                         "NgayNhap = N'" + dtpNgayNhap.Value.ToString("yyyy-MM-dd") + "', " +
                         "MaNCC = N'" + txtMaNCC.Text.Trim() + "' " +
                         "WHERE MaHDMH = N'" + txtMaHDMH.Text.Trim() + "'";

            Class.Function.RunSQL(sql);
            LoadDataGridView();
            ResetValue();
            btnBoQua.Enabled = false;
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            if (txtMaHDMH.Text == "")
            {
                MessageBox.Show("Vui lòng chọn bản ghi cần xóa.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            if (MessageBox.Show("Bạn có muốn xoá không?", "Xác nhận xoá", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                string sql = "DELETE FROM T_HoaDonMH WHERE MaHDMH = N'" + txtMaHDMH.Text.Trim() + "'";
                Class.Function.RunSQL(sql);
                LoadDataGridView();
                ResetValue();
            }
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            if (txtMaHDMH.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập mã hóa đơn mua hàng", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtMaHDMH.Focus();
                return;
            }
            if (txtMaNCC.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập mã nhà cung cấp", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtMaNCC.Focus();
                return;
            }

            string sql = "SELECT MaHDMH FROM T_HoaDonMH WHERE MaHDMH = N'" + txtMaHDMH.Text.Trim() + "'";
            if (Class.Function.CheckKey(sql))
            {
                MessageBox.Show("Mã hoá đơn mua hàng này đã có, bạn phải nhập mã khác", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtMaHDMH.Focus();
                return;
            }

            sql = "SELECT MaNCC FROM T_HoaDonMH WHERE MaNCC = N'" + txtMaNCC.Text.Trim() + "'";
            if (!Class.Function.CheckKey(sql))
            {
                MessageBox.Show("Mã nhà cung cấp này không có, bạn phải nhập mã khác", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtMaNCC.Focus();
                return;
            }

            sql = "INSERT INTO T_HoaDonMH (MaHDMH, NgayNhap, MaNV, MaNCC) VALUES (" +
                  "N'" + txtMaHDMH.Text.Trim() + "', " +
                  "N'" + dtpNgayNhap.Value.ToString("yyyy-MM-dd") + "', " +
                  "N'" + txtMaNV.Text.Trim() + "', " +
                  "N'" + txtMaNCC.Text.Trim() + "')";

            Class.Function.RunSQL(sql);
            LoadDataGridView();
            ResetValue();
            txtMaHDMH.Focus();
        }

        private void txtTimKiem_TextChanged(object sender, EventArgs e)
        {
            string keyword = txtTimKiem.Text.Trim();
            if (keyword != null)
            {
                string sql = "SELECT * FROM T_HoaDonMH WHERE" +
                             " MaHDMH COLLATE SQL_Latin1_General_CP1_CI_AI LIKE N'%" + keyword + "%' " +
                             "OR MANV COLLATE SQL_Latin1_General_CP1_CI_AI LIKE N'%" + keyword + "%'" +
                             "OR MANCC COLLATE SQL_Latin1_General_CP1_CI_AI LIKE N'%" + keyword + "%'";
                DataTable searchResult = Function.GetDataToTable(sql);
                dgvHDMH.DataSource = searchResult;
                // COLLATE SQL_Latin1_General_CP1_CI_AI
                // thực hiện tìm kiếm không phân biệt chữ hoa chữ thường và không phân biệt dấu
            }
        }

        private void label7_Click(object sender, EventArgs e)
        {

        }

        private void FrmHoaDonMH_FormClosing(object sender, FormClosingEventArgs e)
        {
            FrmMain FrmMain = new FrmMain();
            FrmMain.Show();

            this.Hide();
            e.Cancel = true;
        }
    }
}
