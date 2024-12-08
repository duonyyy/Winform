using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Microsoft.Reporting.WinForms;
using DOANWINFORM.Class;
using System.Data.SqlClient;


namespace DOANWINFORM.GUI
{
    public partial class FrmReportNCC : Form
    {
        public FrmReportNCC()
        {
            InitializeComponent();
        }

        private void FrmNCC_Load(object sender, EventArgs e)
        {

            try
            {
                // Connect to the database
                Class.Function.Connect();

                // Define SQL query to retrieve data from T_HangHoa table
                string sql = "SELECT * FROM T_NhaCungCap";

                // Get data to DataTable
                DataTable hangHoaTable = Function.GetDataToTable(sql);

                // Set the report's data source
                reportViewer1.LocalReport.DataSources.Clear();
                ReportDataSource rds = new ReportDataSource("DataSetNCC", hangHoaTable);
                reportViewer1.LocalReport.DataSources.Add(rds);

                // Set the report embedded resource
                reportViewer1.LocalReport.ReportEmbeddedResource = "DOANWINFORM.Class.ReportNCC.rdlc";

                // Refresh the report viewer
                this.reportViewer1.RefreshReport();
            }
            catch (Exception ex)
            {
                // Display any error messages
                MessageBox.Show(ex.Message);
            }
        }
    }
}
