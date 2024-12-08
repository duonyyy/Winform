using DOANWINFORM.Class;
using DOANWINFORM.GUI;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DOANWINFORM
{
    public partial class FrmMain : Form
    {
        public FrmMain()
        {
            InitializeComponent();
        }

        private void nghiệpVụToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void FrmMain_Load(object sender, EventArgs e)
        {

        }

        private void nhafToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmNhaCungCap FrmNhaCungCap = new FrmNhaCungCap();
            this.Hide();
            FrmNhaCungCap.Show();
        }

        private void mnuQuanLyNhanVien_Click(object sender, EventArgs e)
        {
          
            FrmNhanVien FrmNhanVien = new FrmNhanVien();
            this.Hide();
            FrmNhanVien.Show();
        }

        private void mnuHangHoa_Click(object sender, EventArgs e)
        {
            FrmHangHoa FrmHangHoa = new FrmHangHoa();
            this.Hide();
            FrmHangHoa.Show();
        }

        private void mnuNghiepVuPhieuChi_Click(object sender, EventArgs e)
        {
            FrmPhieuChi FrmPhieuChi = new FrmPhieuChi();
            this.Hide();
            FrmPhieuChi.Show();
        }

        private void mnuNghiepVuHoaDonMuaHang_Click(object sender, EventArgs e)
        {
            FrmHoaDonMH FrmHoaDonMH = new FrmHoaDonMH();
            this.Hide();
            FrmHoaDonMH.Show();
        }

        private void mnuBaoCaoBaoCaoHangHoa_Click(object sender, EventArgs e)
        {
            FrmReportHangHoa frmReportHangHoa = new FrmReportHangHoa();
            frmReportHangHoa.ShowDialog();
        }

        private void mnuBaoCaoBaoHDMH_Click(object sender, EventArgs e)
        {
            FrmReportHoaDonMH frmReportHoaDonMH = new FrmReportHoaDonMH();
            frmReportHoaDonMH.ShowDialog();
        }

        private void mnuBaoCaoBaoCaoNCC_Click(object sender, EventArgs e)
        {
            FrmReportNCC frmReportNCC = new FrmReportNCC();
            frmReportNCC.ShowDialog();
        }

        private void mnuBaoCaoBaoCaoNhanVien_Click(object sender, EventArgs e)
        {
            FrmReportNhanVien frmReportNhanVien = new FrmReportNhanVien();
            frmReportNhanVien.ShowDialog();
        }

        private void mnuBaoCaoBaoCaoPhieuCai_Click(object sender, EventArgs e)
        {
            FrmReportPhieuChi frmReportPhieuChi = new FrmReportPhieuChi();
            frmReportPhieuChi.ShowDialog();
        }

        private void mnHelp_Click(object sender, EventArgs e)
        {
            FrmHelp FrmHelp = new FrmHelp();
            FrmHelp.ShowDialog();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            FrmDangNhap FrmDangNhap = new FrmDangNhap();
            FrmDangNhap.Show();

            this.Close();
        }

        private void FrmMain_FormClosing(object sender, FormClosingEventArgs e)
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
