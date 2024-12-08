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
    public partial class FrmHoaDonBH : Form
    {
        public DataTable tblCL;
        public FrmHoaDonBH()
        {
            InitializeComponent();
        }

        private void FrmHoaDonBH_Load(object sender, EventArgs e)
        {
            Class.Function.Connect();
            LoadDataGridView();
        }
        private void LoadDataGridView()
        {
            string sql;
            sql = "SElECT * FROM T_HoaDonBH";
            tblCL = Function.GetDataToTable(sql);// Đọc du lieu tu bang 
            dvHoaDonBH.DataSource = tblCL;
            // dvNhanVien.Columns[0].HeaderText = " Mã Nhân Viên";
            // dvNhanVien.Columns[1].HeaderText = " Họ Tên";
            // dvNhanVien.Columns[2].HeaderText = " Mã NCC";
            // dvNhanVien.Columns[3].HeaderText = " Đơn Vị Tính";
            // dvNhanVien.Columns[4].HeaderText = " SL Tồn";
            // dvNhanVien.Columns[0].HeaderText = " TG Tồn";
            //dvNhanVien.Columns[1].Width = 300;
        }
    }
}
