namespace DOANWINFORM
{
    partial class FrmMain
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.mnuQuanLy = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuQuanLyNhanVien = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuQuanLyNhaCungCap = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuHangHoa = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuNghiepVu = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuNghiepVuPhieuChi = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuNghiepVuHoaDonMuaHang = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuBaoCaoHangHoa = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuBaoCaoBaoCaoHangHoa = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuBaoCaoBaoHDMH = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuBaoCaoBaoCaoNCC = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuBaoCaoBaoCaoNhanVien = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuBaoCaoBaoCaoPhieuCai = new System.Windows.Forms.ToolStripMenuItem();
            this.mnHelp = new System.Windows.Forms.ToolStripMenuItem();
            this.btnThoat = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.menuStrip1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnuQuanLy,
            this.mnuNghiepVu,
            this.mnuBaoCaoHangHoa,
            this.mnHelp});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(1234, 28);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // mnuQuanLy
            // 
            this.mnuQuanLy.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnuQuanLyNhanVien,
            this.mnuQuanLyNhaCungCap,
            this.mnuHangHoa});
            this.mnuQuanLy.Name = "mnuQuanLy";
            this.mnuQuanLy.Size = new System.Drawing.Size(73, 24);
            this.mnuQuanLy.Text = "Quản lý";
            // 
            // mnuQuanLyNhanVien
            // 
            this.mnuQuanLyNhanVien.Image = global::DOANWINFORM.Properties.Resources.nhân_viên;
            this.mnuQuanLyNhanVien.Name = "mnuQuanLyNhanVien";
            this.mnuQuanLyNhanVien.Size = new System.Drawing.Size(187, 26);
            this.mnuQuanLyNhanVien.Text = "Nhân Viên";
            this.mnuQuanLyNhanVien.Click += new System.EventHandler(this.mnuQuanLyNhanVien_Click);
            // 
            // mnuQuanLyNhaCungCap
            // 
            this.mnuQuanLyNhaCungCap.Image = global::DOANWINFORM.Properties.Resources.nhacungcap;
            this.mnuQuanLyNhaCungCap.Name = "mnuQuanLyNhaCungCap";
            this.mnuQuanLyNhaCungCap.Size = new System.Drawing.Size(187, 26);
            this.mnuQuanLyNhaCungCap.Text = "Nhà Cung Cấp";
            this.mnuQuanLyNhaCungCap.Click += new System.EventHandler(this.nhafToolStripMenuItem_Click);
            // 
            // mnuHangHoa
            // 
            this.mnuHangHoa.Image = global::DOANWINFORM.Properties.Resources.hanghoa;
            this.mnuHangHoa.Name = "mnuHangHoa";
            this.mnuHangHoa.Size = new System.Drawing.Size(187, 26);
            this.mnuHangHoa.Text = "Hàng Hóa";
            this.mnuHangHoa.Click += new System.EventHandler(this.mnuHangHoa_Click);
            // 
            // mnuNghiepVu
            // 
            this.mnuNghiepVu.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnuNghiepVuPhieuChi,
            this.mnuNghiepVuHoaDonMuaHang});
            this.mnuNghiepVu.Name = "mnuNghiepVu";
            this.mnuNghiepVu.Size = new System.Drawing.Size(91, 24);
            this.mnuNghiepVu.Text = "Nghiệp vụ";
            this.mnuNghiepVu.Click += new System.EventHandler(this.nghiệpVụToolStripMenuItem_Click);
            // 
            // mnuNghiepVuPhieuChi
            // 
            this.mnuNghiepVuPhieuChi.Image = global::DOANWINFORM.Properties.Resources.phiếu_chi;
            this.mnuNghiepVuPhieuChi.Name = "mnuNghiepVuPhieuChi";
            this.mnuNghiepVuPhieuChi.Size = new System.Drawing.Size(225, 26);
            this.mnuNghiepVuPhieuChi.Text = "Phiếu Chi";
            this.mnuNghiepVuPhieuChi.Click += new System.EventHandler(this.mnuNghiepVuPhieuChi_Click);
            // 
            // mnuNghiepVuHoaDonMuaHang
            // 
            this.mnuNghiepVuHoaDonMuaHang.Image = global::DOANWINFORM.Properties.Resources.hoá_đơn1;
            this.mnuNghiepVuHoaDonMuaHang.Name = "mnuNghiepVuHoaDonMuaHang";
            this.mnuNghiepVuHoaDonMuaHang.Size = new System.Drawing.Size(225, 26);
            this.mnuNghiepVuHoaDonMuaHang.Text = "Hóa Đơn Mua Hàng";
            this.mnuNghiepVuHoaDonMuaHang.Click += new System.EventHandler(this.mnuNghiepVuHoaDonMuaHang_Click);
            // 
            // mnuBaoCaoHangHoa
            // 
            this.mnuBaoCaoHangHoa.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnuBaoCaoBaoCaoHangHoa,
            this.mnuBaoCaoBaoHDMH,
            this.mnuBaoCaoBaoCaoNCC,
            this.mnuBaoCaoBaoCaoNhanVien,
            this.mnuBaoCaoBaoCaoPhieuCai});
            this.mnuBaoCaoHangHoa.Name = "mnuBaoCaoHangHoa";
            this.mnuBaoCaoHangHoa.Size = new System.Drawing.Size(77, 24);
            this.mnuBaoCaoHangHoa.Text = "Báo cáo";
            // 
            // mnuBaoCaoBaoCaoHangHoa
            // 
            this.mnuBaoCaoBaoCaoHangHoa.Image = global::DOANWINFORM.Properties.Resources.z5548639123144_251201b173cca0ab89898f607243f798;
            this.mnuBaoCaoBaoCaoHangHoa.Name = "mnuBaoCaoBaoCaoHangHoa";
            this.mnuBaoCaoBaoCaoHangHoa.Size = new System.Drawing.Size(220, 26);
            this.mnuBaoCaoBaoCaoHangHoa.Text = "Báo Cáo Hàng Hóa";
            this.mnuBaoCaoBaoCaoHangHoa.Click += new System.EventHandler(this.mnuBaoCaoBaoCaoHangHoa_Click);
            // 
            // mnuBaoCaoBaoHDMH
            // 
            this.mnuBaoCaoBaoHDMH.Image = global::DOANWINFORM.Properties.Resources.z5548639123162_52dd36c687a3452b785ccc32f4ae9239;
            this.mnuBaoCaoBaoHDMH.Name = "mnuBaoCaoBaoHDMH";
            this.mnuBaoCaoBaoHDMH.Size = new System.Drawing.Size(220, 26);
            this.mnuBaoCaoBaoHDMH.Text = "Báo Cáo HDMH";
            this.mnuBaoCaoBaoHDMH.Click += new System.EventHandler(this.mnuBaoCaoBaoHDMH_Click);
            // 
            // mnuBaoCaoBaoCaoNCC
            // 
            this.mnuBaoCaoBaoCaoNCC.Image = global::DOANWINFORM.Properties.Resources.z5548639161536_620b5e35be3d45e189013b1f972df4b4;
            this.mnuBaoCaoBaoCaoNCC.Name = "mnuBaoCaoBaoCaoNCC";
            this.mnuBaoCaoBaoCaoNCC.Size = new System.Drawing.Size(220, 26);
            this.mnuBaoCaoBaoCaoNCC.Text = "Báo Cáo NCC";
            this.mnuBaoCaoBaoCaoNCC.Click += new System.EventHandler(this.mnuBaoCaoBaoCaoNCC_Click);
            // 
            // mnuBaoCaoBaoCaoNhanVien
            // 
            this.mnuBaoCaoBaoCaoNhanVien.Image = global::DOANWINFORM.Properties.Resources.z5548639161567_bdd1f7e676bfcbc7333cef4cedc746c5;
            this.mnuBaoCaoBaoCaoNhanVien.Name = "mnuBaoCaoBaoCaoNhanVien";
            this.mnuBaoCaoBaoCaoNhanVien.Size = new System.Drawing.Size(220, 26);
            this.mnuBaoCaoBaoCaoNhanVien.Text = "Báo Cáo Nhân Viên";
            this.mnuBaoCaoBaoCaoNhanVien.Click += new System.EventHandler(this.mnuBaoCaoBaoCaoNhanVien_Click);
            // 
            // mnuBaoCaoBaoCaoPhieuCai
            // 
            this.mnuBaoCaoBaoCaoPhieuCai.Image = global::DOANWINFORM.Properties.Resources.z5548639161568_a3b80aae68c5ee0367adb50898e8869a;
            this.mnuBaoCaoBaoCaoPhieuCai.Name = "mnuBaoCaoBaoCaoPhieuCai";
            this.mnuBaoCaoBaoCaoPhieuCai.Size = new System.Drawing.Size(220, 26);
            this.mnuBaoCaoBaoCaoPhieuCai.Text = "Báo Cáo Phiếu Chi";
            this.mnuBaoCaoBaoCaoPhieuCai.Click += new System.EventHandler(this.mnuBaoCaoBaoCaoPhieuCai_Click);
            // 
            // mnHelp
            // 
            this.mnHelp.Name = "mnHelp";
            this.mnHelp.Size = new System.Drawing.Size(55, 24);
            this.mnHelp.Text = "Help";
            this.mnHelp.Click += new System.EventHandler(this.mnHelp_Click);
            // 
            // btnThoat
            // 
            this.btnThoat.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(0)))));
            this.btnThoat.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThoat.Location = new System.Drawing.Point(978, 536);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(169, 58);
            this.btnThoat.TabIndex = 2;
            this.btnThoat.Text = "Đăng Xuất";
            this.btnThoat.UseVisualStyleBackColor = false;
            this.btnThoat.Click += new System.EventHandler(this.button1_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pictureBox1.Image = global::DOANWINFORM.Properties.Resources.lovepik_science_and_technology_background_of_digital_image_500463355;
            this.pictureBox1.Location = new System.Drawing.Point(0, 28);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(1234, 605);
            this.pictureBox1.TabIndex = 1;
            this.pictureBox1.TabStop = false;
            // 
            // FrmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1234, 633);
            this.Controls.Add(this.btnThoat);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.menuStrip1);
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "FrmMain";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Hệ thống";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.FrmMain_FormClosing);
            this.Load += new System.EventHandler(this.FrmMain_Load);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem mnuQuanLy;
        private System.Windows.Forms.ToolStripMenuItem mnuNghiepVu;
        private System.Windows.Forms.ToolStripMenuItem mnuBaoCaoHangHoa;
        private System.Windows.Forms.ToolStripMenuItem mnHelp;
        private System.Windows.Forms.ToolStripMenuItem mnuQuanLyNhanVien;
        private System.Windows.Forms.ToolStripMenuItem mnuQuanLyNhaCungCap;
        private System.Windows.Forms.ToolStripMenuItem mnuHangHoa;
        private System.Windows.Forms.ToolStripMenuItem mnuNghiepVuPhieuChi;
        private System.Windows.Forms.ToolStripMenuItem mnuNghiepVuHoaDonMuaHang;
        private System.Windows.Forms.ToolStripMenuItem mnuBaoCaoBaoCaoHangHoa;
        private System.Windows.Forms.ToolStripMenuItem mnuBaoCaoBaoHDMH;
        private System.Windows.Forms.ToolStripMenuItem mnuBaoCaoBaoCaoNCC;
        private System.Windows.Forms.ToolStripMenuItem mnuBaoCaoBaoCaoNhanVien;
        private System.Windows.Forms.ToolStripMenuItem mnuBaoCaoBaoCaoPhieuCai;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Button btnThoat;
    }
}

