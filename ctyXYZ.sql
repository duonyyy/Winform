USE [master]
GO
/****** Object:  Database [ctyXYZ]    Script Date: 01/06/2024 12:41:10 CH ******/
CREATE DATABASE [ctyXYZ]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ctyXYZ_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ctyXYZ.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ctyXYZ_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ctyXYZ.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ctyXYZ] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ctyXYZ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ctyXYZ] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ctyXYZ] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ctyXYZ] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ctyXYZ] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ctyXYZ] SET ARITHABORT OFF 
GO
ALTER DATABASE [ctyXYZ] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ctyXYZ] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ctyXYZ] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ctyXYZ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ctyXYZ] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ctyXYZ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ctyXYZ] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ctyXYZ] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ctyXYZ] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ctyXYZ] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ctyXYZ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ctyXYZ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ctyXYZ] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ctyXYZ] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ctyXYZ] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ctyXYZ] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ctyXYZ] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ctyXYZ] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ctyXYZ] SET  MULTI_USER 
GO
ALTER DATABASE [ctyXYZ] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ctyXYZ] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ctyXYZ] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ctyXYZ] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ctyXYZ] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ctyXYZ] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ctyXYZ] SET QUERY_STORE = ON
GO
ALTER DATABASE [ctyXYZ] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ctyXYZ]
GO
/****** Object:  Table [dbo].[Q_21_B1]    Script Date: 01/06/2024 12:41:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_21_B1](
	[NgayLHD] [datetime] NULL,
	[TenHang] [nvarchar](60) NULL,
	[SLBan] [real] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Q_CAONHAT_NCC]    Script Date: 01/06/2024 12:41:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_CAONHAT_NCC](
	[MaNCC] [nvarchar](4) NULL,
	[TenNCC] [nvarchar](40) NULL,
	[TONGTIENMUA] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Q_CAU12_B1]    Script Date: 01/06/2024 12:41:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_CAU12_B1](
	[MaNCC] [nvarchar](4) NULL,
	[TenNCC] [nvarchar](40) NULL,
	[TONGTIENMUA] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Q_CAU12_B2]    Script Date: 01/06/2024 12:41:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_CAU12_B2](
	[MaNCC] [nvarchar](4) NULL,
	[TenNCC] [nvarchar](40) NULL,
	[TONGTIENCHI] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Q_CHITIETBANHANG]    Script Date: 01/06/2024 12:41:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_CHITIETBANHANG](
	[MaNV] [nvarchar](2) NULL,
	[NgayLHD] [datetime] NULL,
	[TenHang] [nvarchar](60) NULL,
	[SLBan] [real] NULL,
	[DGBan] [int] NULL,
	[THANHTIEN] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Q_CONGNO_NCC]    Script Date: 01/06/2024 12:41:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_CONGNO_NCC](
	[MaNCC] [nvarchar](4) NULL,
	[TenNCC] [nvarchar](40) NULL,
	[TONGNO] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Q_LIETKE_BC]    Script Date: 01/06/2024 12:41:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_LIETKE_BC](
	[MaNV] [nvarchar](2) NULL,
	[NgayLHD] [datetime] NULL,
	[TenHang] [nvarchar](60) NULL,
	[SLBan] [real] NULL,
	[DGBan] [int] NULL,
	[THANHTIEN] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Q_LIETKE_MAI]    Script Date: 01/06/2024 12:41:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_LIETKE_MAI](
	[MaKH] [nvarchar](5) NULL,
	[TenKH] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Q_REPORT_4]    Script Date: 01/06/2024 12:41:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_REPORT_4](
	[MaNCC] [nvarchar](4) NULL,
	[TenNCC] [nvarchar](40) NULL,
	[MaHang] [nvarchar](10) NULL,
	[SLNhap] [real] NULL,
	[DGNhap] [int] NULL,
	[THANHTIEN] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Q_TGTON]    Script Date: 01/06/2024 12:41:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_TGTON](
	[MaHang] [nvarchar](10) NULL,
	[TenHang] [nvarchar](60) NULL,
	[TGTonDK] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Q_THUNG]    Script Date: 01/06/2024 12:41:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_THUNG](
	[MaHang] [nvarchar](10) NULL,
	[TenHang] [nvarchar](60) NULL,
	[MANCC] [nvarchar](50) NULL,
	[DVT] [nvarchar](7) NULL,
	[SLTonDK] [real] NULL,
	[TGTonDK] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Q_TNHH]    Script Date: 01/06/2024 12:41:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_TNHH](
	[MaNCC] [nvarchar](4) NULL,
	[TenNCC] [nvarchar](40) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Q_TONGBAN_KH]    Script Date: 01/06/2024 12:41:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_TONGBAN_KH](
	[MaKH] [nvarchar](5) NULL,
	[TenKH] [nvarchar](50) NULL,
	[TONGTIENBAN] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Q_TONGCHI_NV02]    Script Date: 01/06/2024 12:41:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_TONGCHI_NV02](
	[MaNV] [nvarchar](2) NULL,
	[HoTen] [nvarchar](35) NULL,
	[TONGTIEN] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Q_TONGMUA_NCC]    Script Date: 01/06/2024 12:41:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_TONGMUA_NCC](
	[MaNCC] [nvarchar](4) NULL,
	[TenNCC] [nvarchar](40) NULL,
	[TONGTIENMUA] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Q_TP_DN]    Script Date: 01/06/2024 12:41:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_TP_DN](
	[MaNV] [nvarchar](2) NULL,
	[HoTen] [nvarchar](35) NULL,
	[ChucVu] [nvarchar](20) NULL,
	[TP_Tinh] [nvarchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_ChiTietBH]    Script Date: 01/06/2024 12:41:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ChiTietBH](
	[MaHDBH] [nvarchar](6) NOT NULL,
	[MaHang] [nvarchar](10) NOT NULL,
	[SLBan] [real] NOT NULL,
	[DGBan] [int] NULL,
	[CK] [int] NULL,
	[CP] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_ChiTietMH]    Script Date: 01/06/2024 12:41:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ChiTietMH](
	[MaHDMH] [nvarchar](6) NOT NULL,
	[MaHang] [nvarchar](10) NOT NULL,
	[SLNhap] [real] NOT NULL,
	[DGNhap] [int] NOT NULL,
	[CK] [int] NULL,
	[CP] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_HangHoa]    Script Date: 01/06/2024 12:41:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_HangHoa](
	[MaHang] [nvarchar](10) NOT NULL,
	[TenHang] [nvarchar](60) NOT NULL,
	[MANCC] [nvarchar](50) NULL,
	[DVT] [nvarchar](7) NOT NULL,
	[SLTonDK] [real] NULL,
	[TGTonDK] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_HoaDonBH]    Script Date: 01/06/2024 12:41:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_HoaDonBH](
	[MaHDBH] [nvarchar](6) NOT NULL,
	[NgayLHD] [datetime] NULL,
	[MaKH] [nvarchar](5) NOT NULL,
	[MaNV] [nvarchar](2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_HoaDonMH]    Script Date: 01/06/2024 12:41:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_HoaDonMH](
	[MaHDMH] [nvarchar](6) NOT NULL,
	[NgayNhap] [datetime] NULL,
	[MANV] [nvarchar](255) NULL,
	[MaNCC] [nvarchar](4) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_KhachHang]    Script Date: 01/06/2024 12:41:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_KhachHang](
	[MaKH] [nvarchar](5) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[DiaChiKH] [nvarchar](100) NOT NULL,
	[TP_Tinh] [nvarchar](50) NOT NULL,
	[DienThoaiKH] [nvarchar](10) NULL,
	[MST] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_NhaCungCap]    Script Date: 01/06/2024 12:41:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_NhaCungCap](
	[MaNCC] [nvarchar](4) NOT NULL,
	[TenNCC] [nvarchar](40) NOT NULL,
	[DiaChiNCC] [nvarchar](40) NOT NULL,
	[TP_Tinh] [nvarchar](30) NOT NULL,
	[DienThoaiNCC] [nvarchar](14) NULL,
	[MST] [nvarchar](50) NULL,
	[Web] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_NhanVien]    Script Date: 01/06/2024 12:41:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_NhanVien](
	[MaNV] [nvarchar](2) NOT NULL,
	[HoTen] [nvarchar](35) NOT NULL,
	[NgaySinh] [datetime] NULL,
	[Phai] [bit] NOT NULL,
	[ChucVu] [nvarchar](20) NOT NULL,
	[DiaChi] [nvarchar](60) NOT NULL,
	[TP_Tinh] [nvarchar](30) NOT NULL,
	[DienThoai] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PhieuChi]    Script Date: 01/06/2024 12:41:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PhieuChi](
	[MaPC] [nvarchar](6) NULL,
	[MaNV] [nvarchar](2) NULL,
	[MaNCC] [nvarchar](4) NOT NULL,
	[NgayChi] [datetime] NULL,
	[SoTien] [real] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PhieuThu]    Script Date: 01/06/2024 12:41:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PhieuThu](
	[MaPTT] [nvarchar](10) NULL,
	[MaKH] [nvarchar](5) NULL,
	[NgayTT] [datetime] NULL,
	[SoTienTT] [real] NOT NULL,
	[MaNV] [nvarchar](2) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Q_21_B1] ([NgayLHD], [TenHang], [SLBan]) VALUES (CAST(N'2004-04-06T00:00:00.000' AS DateTime), N'Power Cable', 5)
INSERT [dbo].[Q_21_B1] ([NgayLHD], [TenHang], [SLBan]) VALUES (CAST(N'2004-04-06T00:00:00.000' AS DateTime), N'Print Cable 5m', 5)
INSERT [dbo].[Q_21_B1] ([NgayLHD], [TenHang], [SLBan]) VALUES (CAST(N'2004-04-26T00:00:00.000' AS DateTime), N'Cable UTP', 10)
INSERT [dbo].[Q_21_B1] ([NgayLHD], [TenHang], [SLBan]) VALUES (CAST(N'2004-04-26T00:00:00.000' AS DateTime), N'Cable UTP 2', 5)
INSERT [dbo].[Q_21_B1] ([NgayLHD], [TenHang], [SLBan]) VALUES (CAST(N'2004-04-30T00:00:00.000' AS DateTime), N'Mực In Hp 24A-HP Lajerjest 1150', 3)
INSERT [dbo].[Q_21_B1] ([NgayLHD], [TenHang], [SLBan]) VALUES (CAST(N'2004-04-30T00:00:00.000' AS DateTime), N'Mực In HP 41A-HP Deskjet 840C, 760', 2)
GO
INSERT [dbo].[Q_CAONHAT_NCC] ([MaNCC], [TenNCC], [TONGTIENMUA]) VALUES (N'0008', N'Công Ty TNHH Đông An', 2780)
INSERT [dbo].[Q_CAONHAT_NCC] ([MaNCC], [TenNCC], [TONGTIENMUA]) VALUES (N'0006', N'Công Ty TNHH Thành Nhân', 22900)
INSERT [dbo].[Q_CAONHAT_NCC] ([MaNCC], [TenNCC], [TONGTIENMUA]) VALUES (N'0005', N'Dịch Vụ Tin Học A & T', 29220)
GO
INSERT [dbo].[Q_CAU12_B1] ([MaNCC], [TenNCC], [TONGTIENMUA]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', 158920)
INSERT [dbo].[Q_CAU12_B1] ([MaNCC], [TenNCC], [TONGTIENMUA]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', 120230)
INSERT [dbo].[Q_CAU12_B1] ([MaNCC], [TenNCC], [TONGTIENMUA]) VALUES (N'0003', N'Công Ty TNHH Tân Bách Khoa', 90910)
INSERT [dbo].[Q_CAU12_B1] ([MaNCC], [TenNCC], [TONGTIENMUA]) VALUES (N'0005', N'Dịch Vụ Tin Học A & T', 29220)
INSERT [dbo].[Q_CAU12_B1] ([MaNCC], [TenNCC], [TONGTIENMUA]) VALUES (N'0006', N'Công Ty TNHH Thành Nhân', 22900)
INSERT [dbo].[Q_CAU12_B1] ([MaNCC], [TenNCC], [TONGTIENMUA]) VALUES (N'0007', N'Công Ty TNHH  CTC', 0)
INSERT [dbo].[Q_CAU12_B1] ([MaNCC], [TenNCC], [TONGTIENMUA]) VALUES (N'0008', N'Công Ty TNHH Đông An', 2780)
GO
INSERT [dbo].[Q_CAU12_B2] ([MaNCC], [TenNCC], [TONGTIENCHI]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', 0)
INSERT [dbo].[Q_CAU12_B2] ([MaNCC], [TenNCC], [TONGTIENCHI]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', 60480)
INSERT [dbo].[Q_CAU12_B2] ([MaNCC], [TenNCC], [TONGTIENCHI]) VALUES (N'0003', N'Công Ty TNHH Tân Bách Khoa', 0)
INSERT [dbo].[Q_CAU12_B2] ([MaNCC], [TenNCC], [TONGTIENCHI]) VALUES (N'0005', N'Dịch Vụ Tin Học A & T', 0)
INSERT [dbo].[Q_CAU12_B2] ([MaNCC], [TenNCC], [TONGTIENCHI]) VALUES (N'0006', N'Công Ty TNHH Thành Nhân', 2000)
INSERT [dbo].[Q_CAU12_B2] ([MaNCC], [TenNCC], [TONGTIENCHI]) VALUES (N'0007', N'Công Ty TNHH  CTC', 1500)
INSERT [dbo].[Q_CAU12_B2] ([MaNCC], [TenNCC], [TONGTIENCHI]) VALUES (N'0008', N'Công Ty TNHH Đông An', 0)
GO
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-01-12T00:00:00.000' AS DateTime), N'Power Cable', 10, 40, 400)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-01-12T00:00:00.000' AS DateTime), N'Mực In Hp 24A-HP Lajerjest 1150', 20, 30, 600)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-01-12T00:00:00.000' AS DateTime), N'Maxtor 20 Gb-ATA133-5400 rpm-ChiNa', 10, 450, 4500)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-01-12T00:00:00.000' AS DateTime), N'Webcam Exonics 612-101 pixels,usb port', 2, 50, 100)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-01-26T00:00:00.000' AS DateTime), N'Mực In Hp 24A-HP Lajerjest 1150', 1, 120, 120)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-01-26T00:00:00.000' AS DateTime), N'Maxtor 40 Gb Plus-ATA133-7200rpm-Singapore', 5, 500, 2500)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-01-26T00:00:00.000' AS DateTime), N'Monitor 15" JVC', 2, 450, 900)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-02-03T00:00:00.000' AS DateTime), N'Mouse Mitoni', 1, 70, 70)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-02-03T00:00:00.000' AS DateTime), N'Speaker S-3300', 1, 150, 150)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2003-02-13T00:00:00.000' AS DateTime), N'Keyboard Gigabyte', 2, 230, 460)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2003-02-13T00:00:00.000' AS DateTime), N'SDRam 128 Mhr', 2, 135, 270)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-04-05T00:00:00.000' AS DateTime), N'Intel P4 2.66 Ghr', 1, 500, 500)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-04-05T00:00:00.000' AS DateTime), N'Samsung 120Gb S-ATA-7200-Korea', 1, 600, 600)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'07', CAST(N'2003-04-15T00:00:00.000' AS DateTime), N'FDD 1.44 SoNy', 1, 70, 70)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'07', CAST(N'2003-04-15T00:00:00.000' AS DateTime), N'SDRam 256 Mhr', 1, 320, 320)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-05-25T00:00:00.000' AS DateTime), N'Mực In Hp 24A-HP Lajerjest 1150', 2, 140, 280)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-05-25T00:00:00.000' AS DateTime), N'Keyboard Mitsumi', 2, 120, 240)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-05-25T00:00:00.000' AS DateTime), N'Webcam Exonics 612-101 pixels,usb port', 1, 100, 100)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-06-02T00:00:00.000' AS DateTime), N'Priter CanonLBP-1210', 2, 530, 1060)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-06-02T00:00:00.000' AS DateTime), N'GIGABYTE R7064T 64Mb-Chip Ati Radeon 7000-AGB', 2, 300, 600)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-06-25T00:00:00.000' AS DateTime), N'Keyboard Logitech', 1, 150, 150)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-06-25T00:00:00.000' AS DateTime), N'SDRam 128 Mhr', 1, 262, 262)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-05-30T00:00:00.000' AS DateTime), N'Intel P4 2.8 Ghr', 2, 420, 840)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-05-30T00:00:00.000' AS DateTime), N'Mouse Mitoni', 2, 80, 160)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-05-30T00:00:00.000' AS DateTime), N'SDRam 256 Mhr', 2, 600, 1200)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-06-04T00:00:00.000' AS DateTime), N'Intel P4 2.4 Ghr', 1, 420, 420)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-06-04T00:00:00.000' AS DateTime), N'Monitor 15" Likom', 1, 140, 140)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2003-07-01T00:00:00.000' AS DateTime), N'Fax Modem Acorp(ext)', 2, 120, 240)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2003-07-01T00:00:00.000' AS DateTime), N'ECS ATI R9200L 64Mb-Chip Ati 9200-AGB', 2, 150, 300)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2003-07-15T00:00:00.000' AS DateTime), N'Fujitsu 30 Ghr,ATA66-4200 rpm,for noterbook', 2, 530, 1060)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2003-07-15T00:00:00.000' AS DateTime), N'SIS 648 & SIS 963 L4S8A2', 2, 540, 1080)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2003-08-16T00:00:00.000' AS DateTime), N'Baracuda 40Gr-ATA-7200rpm-China', 5, 500, 2500)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2003-08-16T00:00:00.000' AS DateTime), N'Mouse Genius', 10, 80, 800)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-08-30T00:00:00.000' AS DateTime), N'Print Cable 5m', 20, 50, 1000)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-08-30T00:00:00.000' AS DateTime), N'Cable UTP', 100, 40, 4000)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-09-06T00:00:00.000' AS DateTime), N'Intel 845 P4IBAD2', 4, 560, 2240)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-09-06T00:00:00.000' AS DateTime), N'DDRam 256 Mhr', 2, 560, 1120)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2003-09-28T00:00:00.000' AS DateTime), N'MSI 32Mb MX400 D-32-D1DRam,Chip Geforce 2 MX-400-AGB', 1, 320, 320)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2003-09-28T00:00:00.000' AS DateTime), N'webcam Creative NX-352*288-USB port,Chỉnh xoay được 26 độ', 1, 230, 230)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2003-10-10T00:00:00.000' AS DateTime), N'Printer CanonBJC-2100SP', 1, 3200, 3200)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2003-10-10T00:00:00.000' AS DateTime), N'DDRam 512 Mhr', 1, 1002, 1002)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-10-30T00:00:00.000' AS DateTime), N'Maxtor 40 Gb-ATA133-5400rpm-Singapore', 2, 452, 904)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-10-30T00:00:00.000' AS DateTime), N'ASUS V9180SE-64Mb-Chip Geforce 4 MX440-AGB', 2, 250, 500)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2003-11-11T00:00:00.000' AS DateTime), N'Mouse Mitsumi', 5, 80, 400)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2003-11-11T00:00:00.000' AS DateTime), N'Priter CanonLBP-1210', 3, 1020, 3060)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2003-10-25T00:00:00.000' AS DateTime), N'Fax Modem Acorp', 1, 120, 120)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2003-10-25T00:00:00.000' AS DateTime), N'Via 266E P4VMM2', 1, 520, 520)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-11-30T00:00:00.000' AS DateTime), N'Labtec Headphone Elite 840', 2, 100, 200)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-11-30T00:00:00.000' AS DateTime), N'SDRam 128 Mhr', 2, 320, 640)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-12-12T00:00:00.000' AS DateTime), N'Mực In HP 41A-HP Deskjet 840C, 760', 1, 560, 560)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-12-12T00:00:00.000' AS DateTime), N'Priter Canon S200SPX', 1, 1200, 1200)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-01-01T00:00:00.000' AS DateTime), N'Cable UTP', 30, 41, 1230)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-01-01T00:00:00.000' AS DateTime), N'InTel 845GV L4IGVM6', 2, 530, 1060)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2004-01-15T00:00:00.000' AS DateTime), N'Intel 845 P4IBAD2', 1, 600, 600)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2004-01-15T00:00:00.000' AS DateTime), N'Mouse Vibird', 1, 100, 100)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2004-01-29T00:00:00.000' AS DateTime), N'D845 GVSR,Socket478,Bus533,S/P 3.06Ghz,Sound=Vga OnBoard', 1, 510, 510)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2004-01-29T00:00:00.000' AS DateTime), N'UPS Power Tree 600VA', 1, 400, 400)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2004-02-12T00:00:00.000' AS DateTime), N'Kềm bấm mạng RJ45', 1, 420, 420)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2004-02-12T00:00:00.000' AS DateTime), N'SDRam 256 Mhr', 1, 540, 540)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-02-26T00:00:00.000' AS DateTime), N'Keyboard Gigabyte', 1, 230, 230)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-02-26T00:00:00.000' AS DateTime), N'ASUS V9180SE-64Mb-Chip Geforce 4 MX440-AGB', 1, 320, 320)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-03-12T00:00:00.000' AS DateTime), N'VIA P4X400 & VT8235 L4VXAF', 5, 560, 2800)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2004-03-29T00:00:00.000' AS DateTime), N'Mouse Vibird', 1, 85, 85)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2004-04-06T00:00:00.000' AS DateTime), N'Power Cable', 5, 20, 100)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2004-04-06T00:00:00.000' AS DateTime), N'Print Cable 5m', 5, 10, 50)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2004-04-26T00:00:00.000' AS DateTime), N'Cable UTP', 10, 50, 500)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2004-04-26T00:00:00.000' AS DateTime), N'Cable UTP 2', 5, 500, 2500)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-04-30T00:00:00.000' AS DateTime), N'Mực In Hp 24A-HP Lajerjest 1150', 3, 45, 135)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-04-30T00:00:00.000' AS DateTime), N'Mực In HP 41A-HP Deskjet 840C, 760', 2, 50, 100)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2004-05-12T00:00:00.000' AS DateTime), N'Mực In Inktec 9014-Epson 480, 580, C20, C40', 2, 70, 140)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2004-05-12T00:00:00.000' AS DateTime), N'Priter Canon S200SPX', 1, 900, 900)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2004-05-29T00:00:00.000' AS DateTime), N'FDD 1.44 Mitsumi', 2, 80, 160)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2004-05-29T00:00:00.000' AS DateTime), N'Seagate 20Gb ATA133-5400rpm-China', 2, 560, 1120)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2004-06-01T00:00:00.000' AS DateTime), N'Fax Modem Acorp', 1, 350, 350)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2004-06-05T00:00:00.000' AS DateTime), N'Fax Modem Acorp(ext)', 1, 360, 360)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2004-06-05T00:00:00.000' AS DateTime), N'webcam Creative NX-352*288-USB port,Chỉnh xoay được 26 độ', 1, 230, 230)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2004-06-28T00:00:00.000' AS DateTime), N'Via 266E P4VMM2', 1, 530, 530)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2004-07-03T00:00:00.000' AS DateTime), N'Pin Cmos', 10, 15, 150)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2004-07-03T00:00:00.000' AS DateTime), N'GIGABYTE R7064T 64Mb-Chip Ati Radeon 7000-AGB', 2, 230, 460)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-07-15T00:00:00.000' AS DateTime), N'Keyboard Mitsumi', 1, 120, 120)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-07-15T00:00:00.000' AS DateTime), N'Mouse Genius', 1, 81, 81)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-07-30T00:00:00.000' AS DateTime), N'Keyboard Vibird', 1, 123, 123)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-07-30T00:00:00.000' AS DateTime), N'Speaker J-607', 1, 230, 230)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2004-08-12T00:00:00.000' AS DateTime), N'FDD 1.44 Panasonic', 2, 80, 160)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2004-08-28T00:00:00.000' AS DateTime), N'Mouse Vibird', 2, 80, 160)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2004-08-28T00:00:00.000' AS DateTime), N'Webcam Exonics 612-101 pixels,usb port', 2, 130, 260)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2004-08-30T00:00:00.000' AS DateTime), N'Power Cable', 1, 50, 50)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2004-08-30T00:00:00.000' AS DateTime), N'Webcam @Cam Nc-303', 1, 132, 132)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2004-09-01T00:00:00.000' AS DateTime), N'Print Cable 5m', 2, 120, 240)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', NULL, N'Cable UTP', 1000, 20, 20000)
GO
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2003-02-13T00:00:00.000' AS DateTime), N'SDRam 128 Mhr', 2, 135, 270)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-04-05T00:00:00.000' AS DateTime), N'Intel P4 2.66 Ghr', 1, 500, 500)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-04-05T00:00:00.000' AS DateTime), N'Samsung 120Gb S-ATA-7200-Korea', 1, 600, 600)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'07', CAST(N'2003-04-15T00:00:00.000' AS DateTime), N'FDD 1.44 SoNy', 1, 70, 70)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'07', CAST(N'2003-04-15T00:00:00.000' AS DateTime), N'SDRam 256 Mhr', 1, 320, 320)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-05-25T00:00:00.000' AS DateTime), N'Mực In Hp 24A-HP Lajerjest 1150', 2, 140, 280)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-05-25T00:00:00.000' AS DateTime), N'Keyboard Mitsumi', 2, 120, 240)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-05-25T00:00:00.000' AS DateTime), N'Webcam Exonics 612-101 pixels,usb port', 1, 100, 100)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-06-02T00:00:00.000' AS DateTime), N'Priter CanonLBP-1210', 2, 530, 1060)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-06-02T00:00:00.000' AS DateTime), N'GIGABYTE R7064T 64Mb-Chip Ati Radeon 7000-AGB', 2, 300, 600)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-06-25T00:00:00.000' AS DateTime), N'Keyboard Logitech', 1, 150, 150)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-06-25T00:00:00.000' AS DateTime), N'SDRam 128 Mhr', 1, 262, 262)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-05-30T00:00:00.000' AS DateTime), N'Intel P4 2.8 Ghr', 2, 420, 840)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-05-30T00:00:00.000' AS DateTime), N'Mouse Mitoni', 2, 80, 160)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-05-30T00:00:00.000' AS DateTime), N'SDRam 256 Mhr', 2, 600, 1200)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-06-04T00:00:00.000' AS DateTime), N'Intel P4 2.4 Ghr', 1, 420, 420)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-06-04T00:00:00.000' AS DateTime), N'Monitor 15" Likom', 1, 140, 140)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2003-07-01T00:00:00.000' AS DateTime), N'Fax Modem Acorp(ext)', 2, 120, 240)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2003-07-01T00:00:00.000' AS DateTime), N'ECS ATI R9200L 64Mb-Chip Ati 9200-AGB', 2, 150, 300)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2003-07-15T00:00:00.000' AS DateTime), N'Fujitsu 30 Ghr,ATA66-4200 rpm,for noterbook', 2, 530, 1060)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2003-07-15T00:00:00.000' AS DateTime), N'SIS 648 & SIS 963 L4S8A2', 2, 540, 1080)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2003-08-16T00:00:00.000' AS DateTime), N'Baracuda 40Gr-ATA-7200rpm-China', 5, 500, 2500)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2003-08-16T00:00:00.000' AS DateTime), N'Mouse Genius', 10, 80, 800)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-08-30T00:00:00.000' AS DateTime), N'Print Cable 5m', 20, 50, 1000)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-08-30T00:00:00.000' AS DateTime), N'Cable UTP', 100, 40, 4000)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-09-06T00:00:00.000' AS DateTime), N'Intel 845 P4IBAD2', 4, 560, 2240)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-09-06T00:00:00.000' AS DateTime), N'DDRam 256 Mhr', 2, 560, 1120)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2003-09-28T00:00:00.000' AS DateTime), N'MSI 32Mb MX400 D-32-D1DRam,Chip Geforce 2 MX-400-AGB', 1, 320, 320)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2003-09-28T00:00:00.000' AS DateTime), N'webcam Creative NX-352*288-USB port,Chỉnh xoay được 26 độ', 1, 230, 230)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2003-10-10T00:00:00.000' AS DateTime), N'Printer CanonBJC-2100SP', 1, 3200, 3200)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2003-10-10T00:00:00.000' AS DateTime), N'DDRam 512 Mhr', 1, 1002, 1002)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-10-30T00:00:00.000' AS DateTime), N'Maxtor 40 Gb-ATA133-5400rpm-Singapore', 2, 452, 904)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-10-30T00:00:00.000' AS DateTime), N'ASUS V9180SE-64Mb-Chip Geforce 4 MX440-AGB', 2, 250, 500)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2003-11-11T00:00:00.000' AS DateTime), N'Mouse Mitsumi', 5, 80, 400)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2003-11-11T00:00:00.000' AS DateTime), N'Priter CanonLBP-1210', 3, 1020, 3060)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2003-10-25T00:00:00.000' AS DateTime), N'Fax Modem Acorp', 1, 120, 120)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2003-10-25T00:00:00.000' AS DateTime), N'Via 266E P4VMM2', 1, 520, 520)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-11-30T00:00:00.000' AS DateTime), N'Labtec Headphone Elite 840', 2, 100, 200)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-11-30T00:00:00.000' AS DateTime), N'SDRam 128 Mhr', 2, 320, 640)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-12-12T00:00:00.000' AS DateTime), N'Mực In HP 41A-HP Deskjet 840C, 760', 1, 560, 560)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-12-12T00:00:00.000' AS DateTime), N'Priter Canon S200SPX', 1, 1200, 1200)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-01-01T00:00:00.000' AS DateTime), N'Cable UTP', 30, 41, 1230)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-01-01T00:00:00.000' AS DateTime), N'InTel 845GV L4IGVM6', 2, 530, 1060)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2004-01-15T00:00:00.000' AS DateTime), N'Intel 845 P4IBAD2', 1, 600, 600)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2004-01-15T00:00:00.000' AS DateTime), N'Mouse Vibird', 1, 100, 100)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2004-01-29T00:00:00.000' AS DateTime), N'D845 GVSR,Socket478,Bus533,S/P 3.06Ghz,Sound=Vga OnBoard', 1, 510, 510)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2004-01-29T00:00:00.000' AS DateTime), N'UPS Power Tree 600VA', 1, 400, 400)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2004-02-12T00:00:00.000' AS DateTime), N'Kềm bấm mạng RJ45', 1, 420, 420)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2004-02-12T00:00:00.000' AS DateTime), N'SDRam 256 Mhr', 1, 540, 540)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-02-26T00:00:00.000' AS DateTime), N'Keyboard Gigabyte', 1, 230, 230)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-02-26T00:00:00.000' AS DateTime), N'ASUS V9180SE-64Mb-Chip Geforce 4 MX440-AGB', 1, 320, 320)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-03-12T00:00:00.000' AS DateTime), N'VIA P4X400 & VT8235 L4VXAF', 5, 560, 2800)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2004-03-29T00:00:00.000' AS DateTime), N'Mouse Vibird', 1, 85, 85)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2004-04-06T00:00:00.000' AS DateTime), N'Power Cable', 5, 20, 100)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2004-04-06T00:00:00.000' AS DateTime), N'Print Cable 5m', 5, 10, 50)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2004-04-26T00:00:00.000' AS DateTime), N'Cable UTP', 10, 50, 500)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2004-04-26T00:00:00.000' AS DateTime), N'Cable UTP 2', 5, 500, 2500)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-04-30T00:00:00.000' AS DateTime), N'Mực In Hp 24A-HP Lajerjest 1150', 3, 45, 135)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-04-30T00:00:00.000' AS DateTime), N'Mực In HP 41A-HP Deskjet 840C, 760', 2, 50, 100)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2004-05-12T00:00:00.000' AS DateTime), N'Mực In Inktec 9014-Epson 480, 580, C20, C40', 2, 70, 140)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2004-05-12T00:00:00.000' AS DateTime), N'Priter Canon S200SPX', 1, 900, 900)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2004-05-29T00:00:00.000' AS DateTime), N'FDD 1.44 Mitsumi', 2, 80, 160)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2004-05-29T00:00:00.000' AS DateTime), N'Seagate 20Gb ATA133-5400rpm-China', 2, 560, 1120)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2004-06-01T00:00:00.000' AS DateTime), N'Fax Modem Acorp', 1, 350, 350)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2004-06-05T00:00:00.000' AS DateTime), N'Fax Modem Acorp(ext)', 1, 360, 360)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2004-06-05T00:00:00.000' AS DateTime), N'webcam Creative NX-352*288-USB port,Chỉnh xoay được 26 độ', 1, 230, 230)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2004-06-28T00:00:00.000' AS DateTime), N'Via 266E P4VMM2', 1, 530, 530)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2004-07-03T00:00:00.000' AS DateTime), N'Pin Cmos', 10, 15, 150)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2004-07-03T00:00:00.000' AS DateTime), N'GIGABYTE R7064T 64Mb-Chip Ati Radeon 7000-AGB', 2, 230, 460)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-07-15T00:00:00.000' AS DateTime), N'Keyboard Mitsumi', 1, 120, 120)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-07-15T00:00:00.000' AS DateTime), N'Mouse Genius', 1, 81, 81)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-07-30T00:00:00.000' AS DateTime), N'Keyboard Vibird', 1, 123, 123)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-07-30T00:00:00.000' AS DateTime), N'Speaker J-607', 1, 230, 230)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2004-08-12T00:00:00.000' AS DateTime), N'FDD 1.44 Panasonic', 2, 80, 160)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2004-08-28T00:00:00.000' AS DateTime), N'Mouse Vibird', 2, 80, 160)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2004-08-28T00:00:00.000' AS DateTime), N'Webcam Exonics 612-101 pixels,usb port', 2, 130, 260)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2004-08-30T00:00:00.000' AS DateTime), N'Power Cable', 1, 50, 50)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2004-08-30T00:00:00.000' AS DateTime), N'Webcam @Cam Nc-303', 1, 132, 132)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2004-09-01T00:00:00.000' AS DateTime), N'Print Cable 5m', 2, 120, 240)
INSERT [dbo].[Q_CHITIETBANHANG] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', NULL, N'Cable UTP', 1000, 20, 20000)
GO
INSERT [dbo].[Q_CONGNO_NCC] ([MaNCC], [TenNCC], [TONGNO]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', 158920)
INSERT [dbo].[Q_CONGNO_NCC] ([MaNCC], [TenNCC], [TONGNO]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', 59750)
INSERT [dbo].[Q_CONGNO_NCC] ([MaNCC], [TenNCC], [TONGNO]) VALUES (N'0003', N'Công Ty TNHH Tân Bách Khoa', 90910)
INSERT [dbo].[Q_CONGNO_NCC] ([MaNCC], [TenNCC], [TONGNO]) VALUES (N'0005', N'Dịch Vụ Tin Học A & T', 29220)
INSERT [dbo].[Q_CONGNO_NCC] ([MaNCC], [TenNCC], [TONGNO]) VALUES (N'0006', N'Công Ty TNHH Thành Nhân', 20900)
INSERT [dbo].[Q_CONGNO_NCC] ([MaNCC], [TenNCC], [TONGNO]) VALUES (N'0007', N'Công Ty TNHH  CTC', -1500)
INSERT [dbo].[Q_CONGNO_NCC] ([MaNCC], [TenNCC], [TONGNO]) VALUES (N'0008', N'Công Ty TNHH Đông An', 2780)
GO
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2003-09-28T00:00:00.000' AS DateTime), N'MSI 32Mb MX400 D-32-D1DRam,Chip Geforce 2 MX-400-AGB', 1, 320, 320)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2003-09-28T00:00:00.000' AS DateTime), N'webcam Creative NX-352*288-USB port,Chỉnh xoay được 26 độ', 1, 230, 230)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2003-10-10T00:00:00.000' AS DateTime), N'Printer CanonBJC-2100SP', 1, 3200, 3200)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2003-10-10T00:00:00.000' AS DateTime), N'DDRam 512 Mhr', 1, 1002, 1002)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-01-01T00:00:00.000' AS DateTime), N'Cable UTP', 30, 41, 1230)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-01-01T00:00:00.000' AS DateTime), N'InTel 845GV L4IGVM6', 2, 530, 1060)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-02-26T00:00:00.000' AS DateTime), N'Keyboard Gigabyte', 1, 230, 230)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-02-26T00:00:00.000' AS DateTime), N'ASUS V9180SE-64Mb-Chip Geforce 4 MX440-AGB', 1, 320, 320)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-03-12T00:00:00.000' AS DateTime), N'VIA P4X400 & VT8235 L4VXAF', 5, 560, 2800)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-04-30T00:00:00.000' AS DateTime), N'Mực In Hp 24A-HP Lajerjest 1150', 3, 45, 135)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-04-30T00:00:00.000' AS DateTime), N'Mực In HP 41A-HP Deskjet 840C, 760', 2, 50, 100)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-07-15T00:00:00.000' AS DateTime), N'Keyboard Mitsumi', 1, 120, 120)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-07-15T00:00:00.000' AS DateTime), N'Mouse Genius', 1, 81, 81)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-07-30T00:00:00.000' AS DateTime), N'Keyboard Vibird', 1, 123, 123)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-07-30T00:00:00.000' AS DateTime), N'Speaker J-607', 1, 230, 230)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-01-12T00:00:00.000' AS DateTime), N'Power Cable', 10, 40, 400)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-01-12T00:00:00.000' AS DateTime), N'Mực In Hp 24A-HP Lajerjest 1150', 20, 30, 600)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-01-12T00:00:00.000' AS DateTime), N'Maxtor 20 Gb-ATA133-5400 rpm-ChiNa', 10, 450, 4500)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-01-12T00:00:00.000' AS DateTime), N'Webcam Exonics 612-101 pixels,usb port', 2, 50, 100)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-02-03T00:00:00.000' AS DateTime), N'Mouse Mitoni', 1, 70, 70)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-02-03T00:00:00.000' AS DateTime), N'Speaker S-3300', 1, 150, 150)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-04-05T00:00:00.000' AS DateTime), N'Intel P4 2.66 Ghr', 1, 500, 500)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-04-05T00:00:00.000' AS DateTime), N'Samsung 120Gb S-ATA-7200-Korea', 1, 600, 600)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-06-02T00:00:00.000' AS DateTime), N'Priter CanonLBP-1210', 2, 530, 1060)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-06-02T00:00:00.000' AS DateTime), N'GIGABYTE R7064T 64Mb-Chip Ati Radeon 7000-AGB', 2, 300, 600)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-05-30T00:00:00.000' AS DateTime), N'Intel P4 2.8 Ghr', 2, 420, 840)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-05-30T00:00:00.000' AS DateTime), N'Mouse Mitoni', 2, 80, 160)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-05-30T00:00:00.000' AS DateTime), N'SDRam 256 Mhr', 2, 600, 1200)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-08-30T00:00:00.000' AS DateTime), N'Print Cable 5m', 20, 50, 1000)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-08-30T00:00:00.000' AS DateTime), N'Cable UTP', 100, 40, 4000)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-10-30T00:00:00.000' AS DateTime), N'Maxtor 40 Gb-ATA133-5400rpm-Singapore', 2, 452, 904)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-10-30T00:00:00.000' AS DateTime), N'ASUS V9180SE-64Mb-Chip Geforce 4 MX440-AGB', 2, 250, 500)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2004-01-15T00:00:00.000' AS DateTime), N'Intel 845 P4IBAD2', 1, 600, 600)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2004-01-15T00:00:00.000' AS DateTime), N'Mouse Vibird', 1, 100, 100)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2004-08-30T00:00:00.000' AS DateTime), N'Power Cable', 1, 50, 50)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2004-08-30T00:00:00.000' AS DateTime), N'Webcam @Cam Nc-303', 1, 132, 132)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', NULL, N'Cable UTP', 1000, 20, 20000)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-01-26T00:00:00.000' AS DateTime), N'Mực In Hp 24A-HP Lajerjest 1150', 1, 120, 120)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-01-26T00:00:00.000' AS DateTime), N'Maxtor 40 Gb Plus-ATA133-7200rpm-Singapore', 5, 500, 2500)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-01-26T00:00:00.000' AS DateTime), N'Monitor 15" JVC', 2, 450, 900)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-05-25T00:00:00.000' AS DateTime), N'Mực In Hp 24A-HP Lajerjest 1150', 2, 140, 280)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-05-25T00:00:00.000' AS DateTime), N'Keyboard Mitsumi', 2, 120, 240)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-05-25T00:00:00.000' AS DateTime), N'Webcam Exonics 612-101 pixels,usb port', 1, 100, 100)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-06-25T00:00:00.000' AS DateTime), N'Keyboard Logitech', 1, 150, 150)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-06-25T00:00:00.000' AS DateTime), N'SDRam 128 Mhr', 1, 262, 262)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-06-04T00:00:00.000' AS DateTime), N'Intel P4 2.4 Ghr', 1, 420, 420)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-06-04T00:00:00.000' AS DateTime), N'Monitor 15" Likom', 1, 140, 140)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-09-06T00:00:00.000' AS DateTime), N'Intel 845 P4IBAD2', 4, 560, 2240)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-09-06T00:00:00.000' AS DateTime), N'DDRam 256 Mhr', 2, 560, 1120)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-11-30T00:00:00.000' AS DateTime), N'Labtec Headphone Elite 840', 2, 100, 200)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-11-30T00:00:00.000' AS DateTime), N'SDRam 128 Mhr', 2, 320, 640)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-12-12T00:00:00.000' AS DateTime), N'Mực In HP 41A-HP Deskjet 840C, 760', 1, 560, 560)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-12-12T00:00:00.000' AS DateTime), N'Priter Canon S200SPX', 1, 1200, 1200)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2004-04-06T00:00:00.000' AS DateTime), N'Power Cable', 5, 20, 100)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2004-04-06T00:00:00.000' AS DateTime), N'Print Cable 5m', 5, 10, 50)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2004-04-26T00:00:00.000' AS DateTime), N'Cable UTP', 10, 50, 500)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2004-04-26T00:00:00.000' AS DateTime), N'Cable UTP 2', 5, 500, 2500)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2004-06-01T00:00:00.000' AS DateTime), N'Fax Modem Acorp', 1, 350, 350)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2003-02-13T00:00:00.000' AS DateTime), N'Keyboard Gigabyte', 2, 230, 460)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2003-02-13T00:00:00.000' AS DateTime), N'SDRam 128 Mhr', 2, 135, 270)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2003-11-11T00:00:00.000' AS DateTime), N'Mouse Mitsumi', 5, 80, 400)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2003-11-11T00:00:00.000' AS DateTime), N'Priter CanonLBP-1210', 3, 1020, 3060)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2003-10-25T00:00:00.000' AS DateTime), N'Fax Modem Acorp', 1, 120, 120)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2003-10-25T00:00:00.000' AS DateTime), N'Via 266E P4VMM2', 1, 520, 520)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2004-06-05T00:00:00.000' AS DateTime), N'Fax Modem Acorp(ext)', 1, 360, 360)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2004-06-05T00:00:00.000' AS DateTime), N'webcam Creative NX-352*288-USB port,Chỉnh xoay được 26 độ', 1, 230, 230)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2004-06-28T00:00:00.000' AS DateTime), N'Via 266E P4VMM2', 1, 530, 530)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2004-08-12T00:00:00.000' AS DateTime), N'FDD 1.44 Panasonic', 2, 80, 160)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2004-08-28T00:00:00.000' AS DateTime), N'Mouse Vibird', 2, 80, 160)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2004-08-28T00:00:00.000' AS DateTime), N'Webcam Exonics 612-101 pixels,usb port', 2, 130, 260)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2003-07-15T00:00:00.000' AS DateTime), N'Fujitsu 30 Ghr,ATA66-4200 rpm,for noterbook', 2, 530, 1060)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2003-07-15T00:00:00.000' AS DateTime), N'SIS 648 & SIS 963 L4S8A2', 2, 540, 1080)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2004-01-29T00:00:00.000' AS DateTime), N'D845 GVSR,Socket478,Bus533,S/P 3.06Ghz,Sound=Vga OnBoard', 1, 510, 510)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2004-01-29T00:00:00.000' AS DateTime), N'UPS Power Tree 600VA', 1, 400, 400)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2004-02-12T00:00:00.000' AS DateTime), N'Kềm bấm mạng RJ45', 1, 420, 420)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2004-02-12T00:00:00.000' AS DateTime), N'SDRam 256 Mhr', 1, 540, 540)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2004-07-03T00:00:00.000' AS DateTime), N'Pin Cmos', 10, 15, 150)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2004-07-03T00:00:00.000' AS DateTime), N'GIGABYTE R7064T 64Mb-Chip Ati Radeon 7000-AGB', 2, 230, 460)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2004-09-01T00:00:00.000' AS DateTime), N'Print Cable 5m', 2, 120, 240)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2003-07-01T00:00:00.000' AS DateTime), N'Fax Modem Acorp(ext)', 2, 120, 240)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2003-07-01T00:00:00.000' AS DateTime), N'ECS ATI R9200L 64Mb-Chip Ati 9200-AGB', 2, 150, 300)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2003-08-16T00:00:00.000' AS DateTime), N'Baracuda 40Gr-ATA-7200rpm-China', 5, 500, 2500)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2003-08-16T00:00:00.000' AS DateTime), N'Mouse Genius', 10, 80, 800)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2004-03-29T00:00:00.000' AS DateTime), N'Mouse Vibird', 1, 85, 85)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2004-05-12T00:00:00.000' AS DateTime), N'Mực In Inktec 9014-Epson 480, 580, C20, C40', 2, 70, 140)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2004-05-12T00:00:00.000' AS DateTime), N'Priter Canon S200SPX', 1, 900, 900)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2004-05-29T00:00:00.000' AS DateTime), N'FDD 1.44 Mitsumi', 2, 80, 160)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2004-05-29T00:00:00.000' AS DateTime), N'Seagate 20Gb ATA133-5400rpm-China', 2, 560, 1120)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'07', CAST(N'2003-04-15T00:00:00.000' AS DateTime), N'FDD 1.44 SoNy', 1, 70, 70)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'07', CAST(N'2003-04-15T00:00:00.000' AS DateTime), N'SDRam 256 Mhr', 1, 320, 320)
GO
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-04-30T00:00:00.000' AS DateTime), N'Mực In HP 41A-HP Deskjet 840C, 760', 2, 50, 100)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-07-15T00:00:00.000' AS DateTime), N'Keyboard Mitsumi', 1, 120, 120)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-07-15T00:00:00.000' AS DateTime), N'Mouse Genius', 1, 81, 81)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-07-30T00:00:00.000' AS DateTime), N'Keyboard Vibird', 1, 123, 123)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'01', CAST(N'2004-07-30T00:00:00.000' AS DateTime), N'Speaker J-607', 1, 230, 230)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-01-12T00:00:00.000' AS DateTime), N'Power Cable', 10, 40, 400)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-01-12T00:00:00.000' AS DateTime), N'Mực In Hp 24A-HP Lajerjest 1150', 20, 30, 600)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-01-12T00:00:00.000' AS DateTime), N'Maxtor 20 Gb-ATA133-5400 rpm-ChiNa', 10, 450, 4500)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-01-12T00:00:00.000' AS DateTime), N'Webcam Exonics 612-101 pixels,usb port', 2, 50, 100)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-02-03T00:00:00.000' AS DateTime), N'Mouse Mitoni', 1, 70, 70)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-02-03T00:00:00.000' AS DateTime), N'Speaker S-3300', 1, 150, 150)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-04-05T00:00:00.000' AS DateTime), N'Intel P4 2.66 Ghr', 1, 500, 500)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-04-05T00:00:00.000' AS DateTime), N'Samsung 120Gb S-ATA-7200-Korea', 1, 600, 600)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-06-02T00:00:00.000' AS DateTime), N'Priter CanonLBP-1210', 2, 530, 1060)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-06-02T00:00:00.000' AS DateTime), N'GIGABYTE R7064T 64Mb-Chip Ati Radeon 7000-AGB', 2, 300, 600)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-05-30T00:00:00.000' AS DateTime), N'Intel P4 2.8 Ghr', 2, 420, 840)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-05-30T00:00:00.000' AS DateTime), N'Mouse Mitoni', 2, 80, 160)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-05-30T00:00:00.000' AS DateTime), N'SDRam 256 Mhr', 2, 600, 1200)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-08-30T00:00:00.000' AS DateTime), N'Print Cable 5m', 20, 50, 1000)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-08-30T00:00:00.000' AS DateTime), N'Cable UTP', 100, 40, 4000)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-10-30T00:00:00.000' AS DateTime), N'Maxtor 40 Gb-ATA133-5400rpm-Singapore', 2, 452, 904)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2003-10-30T00:00:00.000' AS DateTime), N'ASUS V9180SE-64Mb-Chip Geforce 4 MX440-AGB', 2, 250, 500)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2004-01-15T00:00:00.000' AS DateTime), N'Intel 845 P4IBAD2', 1, 600, 600)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2004-01-15T00:00:00.000' AS DateTime), N'Mouse Vibird', 1, 100, 100)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2004-08-30T00:00:00.000' AS DateTime), N'Power Cable', 1, 50, 50)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', CAST(N'2004-08-30T00:00:00.000' AS DateTime), N'Webcam @Cam Nc-303', 1, 132, 132)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'02', NULL, N'Cable UTP', 1000, 20, 20000)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-01-26T00:00:00.000' AS DateTime), N'Mực In Hp 24A-HP Lajerjest 1150', 1, 120, 120)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-01-26T00:00:00.000' AS DateTime), N'Maxtor 40 Gb Plus-ATA133-7200rpm-Singapore', 5, 500, 2500)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-01-26T00:00:00.000' AS DateTime), N'Monitor 15" JVC', 2, 450, 900)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-05-25T00:00:00.000' AS DateTime), N'Mực In Hp 24A-HP Lajerjest 1150', 2, 140, 280)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-05-25T00:00:00.000' AS DateTime), N'Keyboard Mitsumi', 2, 120, 240)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-05-25T00:00:00.000' AS DateTime), N'Webcam Exonics 612-101 pixels,usb port', 1, 100, 100)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-06-25T00:00:00.000' AS DateTime), N'Keyboard Logitech', 1, 150, 150)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-06-25T00:00:00.000' AS DateTime), N'SDRam 128 Mhr', 1, 262, 262)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-06-04T00:00:00.000' AS DateTime), N'Intel P4 2.4 Ghr', 1, 420, 420)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-06-04T00:00:00.000' AS DateTime), N'Monitor 15" Likom', 1, 140, 140)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-09-06T00:00:00.000' AS DateTime), N'Intel 845 P4IBAD2', 4, 560, 2240)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-09-06T00:00:00.000' AS DateTime), N'DDRam 256 Mhr', 2, 560, 1120)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-11-30T00:00:00.000' AS DateTime), N'Labtec Headphone Elite 840', 2, 100, 200)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-11-30T00:00:00.000' AS DateTime), N'SDRam 128 Mhr', 2, 320, 640)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-12-12T00:00:00.000' AS DateTime), N'Mực In HP 41A-HP Deskjet 840C, 760', 1, 560, 560)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2003-12-12T00:00:00.000' AS DateTime), N'Priter Canon S200SPX', 1, 1200, 1200)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2004-04-06T00:00:00.000' AS DateTime), N'Power Cable', 5, 20, 100)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2004-04-06T00:00:00.000' AS DateTime), N'Print Cable 5m', 5, 10, 50)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2004-04-26T00:00:00.000' AS DateTime), N'Cable UTP', 10, 50, 500)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2004-04-26T00:00:00.000' AS DateTime), N'Cable UTP 2', 5, 500, 2500)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'03', CAST(N'2004-06-01T00:00:00.000' AS DateTime), N'Fax Modem Acorp', 1, 350, 350)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2003-02-13T00:00:00.000' AS DateTime), N'Keyboard Gigabyte', 2, 230, 460)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2003-02-13T00:00:00.000' AS DateTime), N'SDRam 128 Mhr', 2, 135, 270)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2003-11-11T00:00:00.000' AS DateTime), N'Mouse Mitsumi', 5, 80, 400)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2003-11-11T00:00:00.000' AS DateTime), N'Priter CanonLBP-1210', 3, 1020, 3060)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2003-10-25T00:00:00.000' AS DateTime), N'Fax Modem Acorp', 1, 120, 120)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2003-10-25T00:00:00.000' AS DateTime), N'Via 266E P4VMM2', 1, 520, 520)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2004-06-05T00:00:00.000' AS DateTime), N'Fax Modem Acorp(ext)', 1, 360, 360)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2004-06-05T00:00:00.000' AS DateTime), N'webcam Creative NX-352*288-USB port,Chỉnh xoay được 26 độ', 1, 230, 230)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2004-06-28T00:00:00.000' AS DateTime), N'Via 266E P4VMM2', 1, 530, 530)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2004-08-12T00:00:00.000' AS DateTime), N'FDD 1.44 Panasonic', 2, 80, 160)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2004-08-28T00:00:00.000' AS DateTime), N'Mouse Vibird', 2, 80, 160)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'04', CAST(N'2004-08-28T00:00:00.000' AS DateTime), N'Webcam Exonics 612-101 pixels,usb port', 2, 130, 260)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2003-07-15T00:00:00.000' AS DateTime), N'Fujitsu 30 Ghr,ATA66-4200 rpm,for noterbook', 2, 530, 1060)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2003-07-15T00:00:00.000' AS DateTime), N'SIS 648 & SIS 963 L4S8A2', 2, 540, 1080)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2004-01-29T00:00:00.000' AS DateTime), N'D845 GVSR,Socket478,Bus533,S/P 3.06Ghz,Sound=Vga OnBoard', 1, 510, 510)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2004-01-29T00:00:00.000' AS DateTime), N'UPS Power Tree 600VA', 1, 400, 400)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2004-02-12T00:00:00.000' AS DateTime), N'Kềm bấm mạng RJ45', 1, 420, 420)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2004-02-12T00:00:00.000' AS DateTime), N'SDRam 256 Mhr', 1, 540, 540)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2004-07-03T00:00:00.000' AS DateTime), N'Pin Cmos', 10, 15, 150)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2004-07-03T00:00:00.000' AS DateTime), N'GIGABYTE R7064T 64Mb-Chip Ati Radeon 7000-AGB', 2, 230, 460)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'05', CAST(N'2004-09-01T00:00:00.000' AS DateTime), N'Print Cable 5m', 2, 120, 240)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2003-07-01T00:00:00.000' AS DateTime), N'Fax Modem Acorp(ext)', 2, 120, 240)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2003-07-01T00:00:00.000' AS DateTime), N'ECS ATI R9200L 64Mb-Chip Ati 9200-AGB', 2, 150, 300)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2003-08-16T00:00:00.000' AS DateTime), N'Baracuda 40Gr-ATA-7200rpm-China', 5, 500, 2500)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2003-08-16T00:00:00.000' AS DateTime), N'Mouse Genius', 10, 80, 800)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2004-03-29T00:00:00.000' AS DateTime), N'Mouse Vibird', 1, 85, 85)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2004-05-12T00:00:00.000' AS DateTime), N'Mực In Inktec 9014-Epson 480, 580, C20, C40', 2, 70, 140)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2004-05-12T00:00:00.000' AS DateTime), N'Priter Canon S200SPX', 1, 900, 900)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2004-05-29T00:00:00.000' AS DateTime), N'FDD 1.44 Mitsumi', 2, 80, 160)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'06', CAST(N'2004-05-29T00:00:00.000' AS DateTime), N'Seagate 20Gb ATA133-5400rpm-China', 2, 560, 1120)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'07', CAST(N'2003-04-15T00:00:00.000' AS DateTime), N'FDD 1.44 SoNy', 1, 70, 70)
INSERT [dbo].[Q_LIETKE_BC] ([MaNV], [NgayLHD], [TenHang], [SLBan], [DGBan], [THANHTIEN]) VALUES (N'07', CAST(N'2003-04-15T00:00:00.000' AS DateTime), N'SDRam 256 Mhr', 1, 320, 320)
GO
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'HDD0065', 10, 200, 2000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'MB00211', 10, 450, 4500)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'OTH0033', 10, 15, 150)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'CPU0050', 10, 500, 5000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'FM00010', 20, 210, 4200)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'MB00190', 20, 460, 9200)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'KB00038', 100, 120, 12000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'MB00065', 5, 500, 2500)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'MB00137', 20, 420, 8400)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'FM00030', 20, 130, 2600)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'MB00192', 8, 530, 4240)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'MOT0041', 10, 450, 4500)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'MB00284', 30, 600, 18000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'MOT0055', 10, 450, 4500)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'VGA0120', 30, 32, 960)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'CPU0053', 10, 500, 5000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'HDD0025', 10, 450, 4500)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'MB00211', 10, 520, 5200)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'CAR0075', 100, 100, 10000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'CAR0078', 20, 120, 2400)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'MB00137', 3, 420, 1260)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'KB00038', 10, 112, 1120)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'MB00190', 5, 620, 3100)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'RAM0015', 100, 200, 20000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'CAB0004', 1000, 5, 5000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'CAR0075', 20, 10, 200)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'MB00248', 2, 560, 1120)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'MB00284', 5, 530, 2650)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'RAM0015', 10, 450, 4500)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'RAM0018', 20, 456, 9120)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'CAB0001', 10, 100, 1000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'CAB0019', 50, 50, 2500)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'HDD0025', 20, 240, 4800)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'MB00190', 6, 530, 3180)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'FM00030', 20, 121, 2420)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'MB00248', 10, 520, 5200)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'OTH0033', 100, 15, 1500)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'CAB0004', 100, 5, 500)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'MB00137', 5, 500, 2500)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'MOT00130', 10, 400, 4000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'KB00025', 4, 120, 480)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'MB00248', 5, 530, 2650)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'MOT0015', 10, 400, 4000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'HDD0071', 5, 550, 2750)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'KB00038', 20, 200, 4000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'CPU0025', 20, 450, 9000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'FDD0005', 100, 70, 7000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'CAB0019', 10, 1000, 10000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'CAR0078', 100, 100, 10000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'KB00038', 200, 120, 24000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'CAB0018', 20, 200, 4000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'CPU0026', 5, 450, 2250)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'CAB0018', 100, 50, 5000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'CAB0019', 10, 600, 6000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'CAB0004', 5, 500, 2500)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0003', N'Công Ty TNHH Tân Bách Khoa', N'CAB0018', 30, 30, 900)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0003', N'Công Ty TNHH Tân Bách Khoa', N'KB00025', 40, 120, 4800)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0003', N'Công Ty TNHH Tân Bách Khoa', N'HDD0069', 10, 350, 3500)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0003', N'Công Ty TNHH Tân Bách Khoa', N'KB00038', 10, 120, 1200)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0003', N'Công Ty TNHH Tân Bách Khoa', N'HDD0060', 10, 450, 4500)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0003', N'Công Ty TNHH Tân Bách Khoa', N'OTH0007', 10, 79, 790)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0003', N'Công Ty TNHH Tân Bách Khoa', N'MOS0028', 100, 100, 10000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0003', N'Công Ty TNHH Tân Bách Khoa', N'WEC0026', 10, 250, 2500)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0003', N'Công Ty TNHH Tân Bách Khoa', N'HDD0059', 30, 600, 18000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0003', N'Công Ty TNHH Tân Bách Khoa', N'HDD0071', 50, 800, 40000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0003', N'Công Ty TNHH Tân Bách Khoa', N'CPU0025', 20, 56, 1120)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0003', N'Công Ty TNHH Tân Bách Khoa', N'FM00010', 20, 120, 2400)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0003', N'Công Ty TNHH Tân Bách Khoa', N'HPH0010', 5, 90, 450)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0003', N'Công Ty TNHH Tân Bách Khoa', N'SPK0048', 5, 150, 750)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0005', N'Dịch Vụ Tin Học A & T', N'HDD0069', 10, 300, 3000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0005', N'Dịch Vụ Tin Học A & T', N'MB00211', 20, 500, 10000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0005', N'Dịch Vụ Tin Học A & T', N'OTH0048', 3, 100, 300)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0005', N'Dịch Vụ Tin Học A & T', N'CAB0018', 40, 20, 800)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0005', N'Dịch Vụ Tin Học A & T', N'CAR0078', 20, 101, 2020)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0005', N'Dịch Vụ Tin Học A & T', N'HDD0025', 10, 230, 2300)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0005', N'Dịch Vụ Tin Học A & T', N'KB00038', 20, 120, 2400)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0005', N'Dịch Vụ Tin Học A & T', N'MOT0014', 5, 320, 1600)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0005', N'Dịch Vụ Tin Học A & T', N'FDD0005', 10, 120, 1200)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0005', N'Dịch Vụ Tin Học A & T', N'MB00137', 10, 560, 5600)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0006', N'Công Ty TNHH Thành Nhân', N'RAM0015', 10, 130, 1300)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0006', N'Công Ty TNHH Thành Nhân', N'RAM0018', 20, 200, 4000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0006', N'Công Ty TNHH Thành Nhân', N'WEC0010', 30, 120, 3600)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0006', N'Công Ty TNHH Thành Nhân', N'HDD0019', 20, 450, 9000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0006', N'Công Ty TNHH Thành Nhân', N'MOT0113', 10, 500, 5000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0008', N'Công Ty TNHH Đông An', N'CAR00135', 10, 78, 780)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0008', N'Công Ty TNHH Đông An', N'OTH0036', 40, 50, 2000)
GO
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'VGA0120', 30, 32, 960)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'CPU0053', 10, 500, 5000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'HDD0025', 10, 450, 4500)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'MB00211', 10, 520, 5200)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'CAR0075', 100, 100, 10000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'CAR0078', 20, 120, 2400)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'MB00137', 3, 420, 1260)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'KB00038', 10, 112, 1120)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'MB00190', 5, 620, 3100)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'RAM0015', 100, 200, 20000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'CAB0004', 1000, 5, 5000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'CAR0075', 20, 10, 200)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'MB00248', 2, 560, 1120)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'MB00284', 5, 530, 2650)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'RAM0015', 10, 450, 4500)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'RAM0018', 20, 456, 9120)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'CAB0001', 10, 100, 1000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'CAB0019', 50, 50, 2500)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'HDD0025', 20, 240, 4800)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'MB00190', 6, 530, 3180)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'FM00030', 20, 121, 2420)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'MB00248', 10, 520, 5200)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'OTH0033', 100, 15, 1500)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'CAB0004', 100, 5, 500)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'MB00137', 5, 500, 2500)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'MOT00130', 10, 400, 4000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'KB00025', 4, 120, 480)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'MB00248', 5, 530, 2650)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'MOT0015', 10, 400, 4000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'HDD0071', 5, 550, 2750)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'KB00038', 20, 200, 4000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'CPU0025', 20, 450, 9000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'FDD0005', 100, 70, 7000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'CAB0019', 10, 1000, 10000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'CAR0078', 100, 100, 10000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'KB00038', 200, 120, 24000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'CAB0018', 20, 200, 4000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'CPU0026', 5, 450, 2250)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'CAB0018', 100, 50, 5000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'CAB0019', 10, 600, 6000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'CAB0004', 5, 500, 2500)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0003', N'Công Ty TNHH Tân Bách Khoa', N'CAB0018', 30, 30, 900)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0003', N'Công Ty TNHH Tân Bách Khoa', N'KB00025', 40, 120, 4800)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0003', N'Công Ty TNHH Tân Bách Khoa', N'HDD0069', 10, 350, 3500)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0003', N'Công Ty TNHH Tân Bách Khoa', N'KB00038', 10, 120, 1200)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0003', N'Công Ty TNHH Tân Bách Khoa', N'HDD0060', 10, 450, 4500)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0003', N'Công Ty TNHH Tân Bách Khoa', N'OTH0007', 10, 79, 790)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0003', N'Công Ty TNHH Tân Bách Khoa', N'MOS0028', 100, 100, 10000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0003', N'Công Ty TNHH Tân Bách Khoa', N'WEC0026', 10, 250, 2500)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0003', N'Công Ty TNHH Tân Bách Khoa', N'HDD0059', 30, 600, 18000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0003', N'Công Ty TNHH Tân Bách Khoa', N'HDD0071', 50, 800, 40000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0003', N'Công Ty TNHH Tân Bách Khoa', N'CPU0025', 20, 56, 1120)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0003', N'Công Ty TNHH Tân Bách Khoa', N'FM00010', 20, 120, 2400)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0003', N'Công Ty TNHH Tân Bách Khoa', N'HPH0010', 5, 90, 450)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0003', N'Công Ty TNHH Tân Bách Khoa', N'SPK0048', 5, 150, 750)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0005', N'Dịch Vụ Tin Học A & T', N'HDD0069', 10, 300, 3000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0005', N'Dịch Vụ Tin Học A & T', N'MB00211', 20, 500, 10000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0005', N'Dịch Vụ Tin Học A & T', N'OTH0048', 3, 100, 300)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0005', N'Dịch Vụ Tin Học A & T', N'CAB0018', 40, 20, 800)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0005', N'Dịch Vụ Tin Học A & T', N'CAR0078', 20, 101, 2020)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0005', N'Dịch Vụ Tin Học A & T', N'HDD0025', 10, 230, 2300)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0005', N'Dịch Vụ Tin Học A & T', N'KB00038', 20, 120, 2400)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0005', N'Dịch Vụ Tin Học A & T', N'MOT0014', 5, 320, 1600)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0005', N'Dịch Vụ Tin Học A & T', N'FDD0005', 10, 120, 1200)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0005', N'Dịch Vụ Tin Học A & T', N'MB00137', 10, 560, 5600)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0006', N'Công Ty TNHH Thành Nhân', N'RAM0015', 10, 130, 1300)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0006', N'Công Ty TNHH Thành Nhân', N'RAM0018', 20, 200, 4000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0006', N'Công Ty TNHH Thành Nhân', N'WEC0010', 30, 120, 3600)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0006', N'Công Ty TNHH Thành Nhân', N'HDD0019', 20, 450, 9000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0006', N'Công Ty TNHH Thành Nhân', N'MOT0113', 10, 500, 5000)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0008', N'Công Ty TNHH Đông An', N'CAR00135', 10, 78, 780)
INSERT [dbo].[Q_REPORT_4] ([MaNCC], [TenNCC], [MaHang], [SLNhap], [DGNhap], [THANHTIEN]) VALUES (N'0008', N'Công Ty TNHH Đông An', N'OTH0036', 40, 50, 2000)
GO
INSERT [dbo].[Q_TGTON] ([MaHang], [TenHang], [TGTonDK]) VALUES (N'cpu0025', N'Intel P4 1.7Ghr', 115)
INSERT [dbo].[Q_TGTON] ([MaHang], [TenHang], [TGTonDK]) VALUES (N'cpu0027', N'Intel P4 1.8 Ghr', 117)
INSERT [dbo].[Q_TGTON] ([MaHang], [TenHang], [TGTonDK]) VALUES (N'hdd0038', N'Hitachi 30 Ghr,ATA66-420 rpm', 128)
INSERT [dbo].[Q_TGTON] ([MaHang], [TenHang], [TGTonDK]) VALUES (N'hdd0060', N'Hitachi 40 Ghr,ATA66-4200rpm-for noterbook', 140)
INSERT [dbo].[Q_TGTON] ([MaHang], [TenHang], [TGTonDK]) VALUES (N'hdd0069', N'Fujitsu 30 Ghr,ATA66-4200 rpm,for noterbook', 128)
INSERT [dbo].[Q_TGTON] ([MaHang], [TenHang], [TGTonDK]) VALUES (N'hdd0080', N'Maxtor 120Gb S-ATA-7200rpm', 117)
INSERT [dbo].[Q_TGTON] ([MaHang], [TenHang], [TGTonDK]) VALUES (N'mot0041', N'Monitor 17" ProLink', 105)
GO
INSERT [dbo].[Q_THUNG] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cab0018', N'Cable UTP', NULL, N'Thùng', 0, 0)
INSERT [dbo].[Q_THUNG] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cab0019', N'Cable UTP 2', NULL, N'Thùng', 0, 0)
INSERT [dbo].[Q_THUNG] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'car00135', N'Mực In Hp 24A-HP Lajerjest 1150', NULL, N'Thùng', 0, 0)
GO
INSERT [dbo].[Q_TONGBAN_KH] ([MaKH], [TenKH], [TONGTIENBAN]) VALUES (N'00002', N'Trần Thị Thiên Thanh', 3520)
INSERT [dbo].[Q_TONGBAN_KH] ([MaKH], [TenKH], [TONGTIENBAN]) VALUES (N'00003', N'Nguyễn Thị Tuyết Nhung', 20220)
INSERT [dbo].[Q_TONGBAN_KH] ([MaKH], [TenKH], [TONGTIENBAN]) VALUES (N'00004', N'Đặng Anh Ngữ', 730)
INSERT [dbo].[Q_TONGBAN_KH] ([MaKH], [TenKH], [TONGTIENBAN]) VALUES (N'00005', N'Nguyễn Thị Thái Yến', 1720)
INSERT [dbo].[Q_TONGBAN_KH] ([MaKH], [TenKH], [TONGTIENBAN]) VALUES (N'00006', N'Nguyễn Minh Tân', 3390)
INSERT [dbo].[Q_TONGBAN_KH] ([MaKH], [TenKH], [TONGTIENBAN]) VALUES (N'00007', N'Phạm Thành Nhân', 240)
INSERT [dbo].[Q_TONGBAN_KH] ([MaKH], [TenKH], [TONGTIENBAN]) VALUES (N'00008', N'Võ Thị Mai', 1660)
INSERT [dbo].[Q_TONGBAN_KH] ([MaKH], [TenKH], [TONGTIENBAN]) VALUES (N'00009', N'Phạm Huỳnh Thanh Mai', 412)
INSERT [dbo].[Q_TONGBAN_KH] ([MaKH], [TenKH], [TONGTIENBAN]) VALUES (N'00010', N'Quốc Tiến Dũng', 2200)
INSERT [dbo].[Q_TONGBAN_KH] ([MaKH], [TenKH], [TONGTIENBAN]) VALUES (N'00012', N'Nguyễn Thị Mai', 1100)
INSERT [dbo].[Q_TONGBAN_KH] ([MaKH], [TenKH], [TONGTIENBAN]) VALUES (N'00013', N'Mai Thị Thanh Nhàn', 2290)
INSERT [dbo].[Q_TONGBAN_KH] ([MaKH], [TenKH], [TONGTIENBAN]) VALUES (N'00014', N'Nguyễn Phước Tuấn', 3830)
INSERT [dbo].[Q_TONGBAN_KH] ([MaKH], [TenKH], [TONGTIENBAN]) VALUES (N'00015', N'Phan Thanh Mai', 5235)
INSERT [dbo].[Q_TONGBAN_KH] ([MaKH], [TenKH], [TONGTIENBAN]) VALUES (N'00016', N'Lý Đức Bình', 3360)
INSERT [dbo].[Q_TONGBAN_KH] ([MaKH], [TenKH], [TONGTIENBAN]) VALUES (N'00018', N'Phạm Ngọc Thanh', 751)
INSERT [dbo].[Q_TONGBAN_KH] ([MaKH], [TenKH], [TONGTIENBAN]) VALUES (N'00019', N'Văn Thị Nữ', 4792)
INSERT [dbo].[Q_TONGBAN_KH] ([MaKH], [TenKH], [TONGTIENBAN]) VALUES (N'00020', N'Ngô Quang Huy', 1404)
INSERT [dbo].[Q_TONGBAN_KH] ([MaKH], [TenKH], [TONGTIENBAN]) VALUES (N'00021', N'Phạm Thị Thanh Mai', 703)
INSERT [dbo].[Q_TONGBAN_KH] ([MaKH], [TenKH], [TONGTIENBAN]) VALUES (N'00023', N'Nguyễn Văn Thanh', 4500)
INSERT [dbo].[Q_TONGBAN_KH] ([MaKH], [TenKH], [TONGTIENBAN]) VALUES (N'00024', N'Quốc Anh Dũng', 640)
INSERT [dbo].[Q_TONGBAN_KH] ([MaKH], [TenKH], [TONGTIENBAN]) VALUES (N'00025', N'Mai Thị Thanh', 840)
INSERT [dbo].[Q_TONGBAN_KH] ([MaKH], [TenKH], [TONGTIENBAN]) VALUES (N'00026', N'Thái Thị Thanh Trúc', 3040)
INSERT [dbo].[Q_TONGBAN_KH] ([MaKH], [TenKH], [TONGTIENBAN]) VALUES (N'00027', N'Quốc Thi Minh Tâm', 2290)
INSERT [dbo].[Q_TONGBAN_KH] ([MaKH], [TenKH], [TONGTIENBAN]) VALUES (N'00028', N'Ông Quốc Dũng', 700)
INSERT [dbo].[Q_TONGBAN_KH] ([MaKH], [TenKH], [TONGTIENBAN]) VALUES (N'00029', N'Ngô Minh Tâm', 910)
INSERT [dbo].[Q_TONGBAN_KH] ([MaKH], [TenKH], [TONGTIENBAN]) VALUES (N'00030', N'Thái Ngọc Ninh', 960)
INSERT [dbo].[Q_TONGBAN_KH] ([MaKH], [TenKH], [TONGTIENBAN]) VALUES (N'00031', N'Trương Chí Dũng', 1580)
INSERT [dbo].[Q_TONGBAN_KH] ([MaKH], [TenKH], [TONGTIENBAN]) VALUES (N'00032', N'Vò Ngọc Minh', 2982)
INSERT [dbo].[Q_TONGBAN_KH] ([MaKH], [TenKH], [TONGTIENBAN]) VALUES (N'00033', N'Nguyễn Ngọc Sơn', 245)
INSERT [dbo].[Q_TONGBAN_KH] ([MaKH], [TenKH], [TONGTIENBAN]) VALUES (N'24544', N'Nguyễn Thị Hồng Loan', 5600)
GO
INSERT [dbo].[Q_TONGCHI_NV02] ([MaNV], [HoTen], [TONGTIEN]) VALUES (N'02', N'nguyễn thị MAI', 60480)
GO
INSERT [dbo].[Q_TONGMUA_NCC] ([MaNCC], [TenNCC], [TONGTIENMUA]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', 158920)
INSERT [dbo].[Q_TONGMUA_NCC] ([MaNCC], [TenNCC], [TONGTIENMUA]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', 120230)
INSERT [dbo].[Q_TONGMUA_NCC] ([MaNCC], [TenNCC], [TONGTIENMUA]) VALUES (N'0003', N'Công Ty TNHH Tân Bách Khoa', 90910)
INSERT [dbo].[Q_TONGMUA_NCC] ([MaNCC], [TenNCC], [TONGTIENMUA]) VALUES (N'0005', N'Dịch Vụ Tin Học A & T', 29220)
INSERT [dbo].[Q_TONGMUA_NCC] ([MaNCC], [TenNCC], [TONGTIENMUA]) VALUES (N'0006', N'Công Ty TNHH Thành Nhân', 22900)
INSERT [dbo].[Q_TONGMUA_NCC] ([MaNCC], [TenNCC], [TONGTIENMUA]) VALUES (N'0008', N'Công Ty TNHH Đông An', 2780)
GO
INSERT [dbo].[Q_TP_DN] ([MaNV], [HoTen], [ChucVu], [TP_Tinh]) VALUES (N'01', N'Phạm Thành Tài', N'Trưởng Phòng', N'Đồng Nai')
GO
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000001', N'CAB0001', 10, 40, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000001', N'CAR00135', 20, 30, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000001', N'HDD0007', 10, 450, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000001', N'WEC0010', 2, 50, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000002', N'CAR00135', 1, 120, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000002', N'HDD0025', 5, 500, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000002', N'MOT0047', 2, 450, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000003', N'MOS0061', 1, 70, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000003', N'SPK0049', 1, 150, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000004', N'KB00025', 2, 230, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000004', N'RAM0006', 2, 135, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000005', N'CPU0050', 1, 500, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000005', N'HDD0075', 1, 600, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000006', N'FDD0002', 1, 70, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000006', N'RAM0007', 1, 320, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000007', N'CAR00135', 2, 140, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000007', N'KB00038', 2, 120, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000007', N'WEC0010', 1, 100, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000008', N'PRT0028', 2, 530, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000008', N'VGA0103', 2, 300, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000009', N'KH00031', 1, 150, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000009', N'RAM0006', 1, 262, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000010', N'CPU0055', 2, 420, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000010', N'MOS0061', 2, 80, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000010', N'RAM0007', 2, 600, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000011', N'CPU0038', 1, 420, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000011', N'MOT0050', 1, 140, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000012', N'FM00010', 2, 120, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000012', N'VGA0104', 2, 150, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000013', N'HDD0069', 2, 530, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000013', N'MB00137', 2, 540, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000014', N'HDD0019', 5, 500, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000014', N'MOS0005', 10, 80, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000015', N'CAB0004', 20, 50, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000015', N'CAB0018', 100, 40, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000016', N'MB00190', 4, 560, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000016', N'RAM0015', 2, 560, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000018', N'VGA0120', 1, 320, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000018', N'WEC0031', 1, 230, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000019', N'PRT0004', 1, 3200, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000019', N'RAM0018', 1, 1002, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000020', N'HDD0040', 2, 452, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000020', N'VGA0096', 2, 250, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000023', N'MOS0028', 5, 80, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000023', N'PRT0028', 3, 1020, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000024', N'FM00030', 1, 120, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000024', N'MB00065', 1, 520, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000025', N'HPH0010', 2, 100, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000025', N'RAM0006', 2, 320, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000026', N'CAR0050', 1, 560, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000026', N'PRT0023', 1, 1200, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000027', N'CAB0018', 30, 41, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000027', N'MB00192', 2, 530, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000028', N'MB00190', 1, 600, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000028', N'MOS0062', 1, 100, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000029', N'MB00248', 1, 510, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000029', N'UPS0003', 1, 400, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000030', N'OTH0007', 1, 420, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000030', N'RAM0007', 1, 540, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000031', N'KB00025', 1, 230, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000031', N'VGA0096', 1, 320, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000032', N'MB00211', 5, 560, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000033', N'MOS0062', 1, 85, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000034', N'CAB0001', 5, 20, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000034', N'CAB0004', 5, 10, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000035', N'CAB0018', 10, 50, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000035', N'CAB0019', 5, 500, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000036', N'CAR00135', 3, 45, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000036', N'CAR0050', 2, 50, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000037', N'CAR0075', 2, 70, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000037', N'PRT0023', 1, 900, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000039', N'FDD0005', 2, 80, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000039', N'HDD0002', 2, 560, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000040', N'FM00030', 1, 350, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000041', N'FM00010', 1, 360, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000041', N'WEC0031', 1, 230, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000042', N'MB00065', 1, 530, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000043', N'OTH0033', 10, 15, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000043', N'VGA0103', 2, 230, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000044', N'KB00038', 1, 120, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000044', N'MOS0005', 1, 81, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000045', N'KB00024', 1, 123, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000045', N'SPK0060', 1, 230, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000046', N'FDD0003', 2, 80, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000047', N'MOS0062', 2, 80, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000047', N'WEC0010', 2, 130, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000048', N'CAB0001', 1, 50, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000048', N'WEC0034', 1, 132, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000049', N'CAB0004', 2, 120, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'0090', N'CAB0018', 1000, 20, NULL, NULL)
GO
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000004', N'RAM0006', 2, 135, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000005', N'CPU0050', 1, 500, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000005', N'HDD0075', 1, 600, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000006', N'FDD0002', 1, 70, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000006', N'RAM0007', 1, 320, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000007', N'CAR00135', 2, 140, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000007', N'KB00038', 2, 120, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000007', N'WEC0010', 1, 100, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000008', N'PRT0028', 2, 530, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000008', N'VGA0103', 2, 300, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000009', N'KH00031', 1, 150, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000009', N'RAM0006', 1, 262, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000010', N'CPU0055', 2, 420, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000010', N'MOS0061', 2, 80, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000010', N'RAM0007', 2, 600, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000011', N'CPU0038', 1, 420, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000011', N'MOT0050', 1, 140, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000012', N'FM00010', 2, 120, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000012', N'VGA0104', 2, 150, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000013', N'HDD0069', 2, 530, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000013', N'MB00137', 2, 540, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000014', N'HDD0019', 5, 500, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000014', N'MOS0005', 10, 80, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000015', N'CAB0004', 20, 50, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000015', N'CAB0018', 100, 40, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000016', N'MB00190', 4, 560, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000016', N'RAM0015', 2, 560, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000018', N'VGA0120', 1, 320, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000018', N'WEC0031', 1, 230, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000019', N'PRT0004', 1, 3200, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000019', N'RAM0018', 1, 1002, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000020', N'HDD0040', 2, 452, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000020', N'VGA0096', 2, 250, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000023', N'MOS0028', 5, 80, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000023', N'PRT0028', 3, 1020, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000024', N'FM00030', 1, 120, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000024', N'MB00065', 1, 520, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000025', N'HPH0010', 2, 100, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000025', N'RAM0006', 2, 320, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000026', N'CAR0050', 1, 560, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000026', N'PRT0023', 1, 1200, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000027', N'CAB0018', 30, 41, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000027', N'MB00192', 2, 530, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000028', N'MB00190', 1, 600, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000028', N'MOS0062', 1, 100, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000029', N'MB00248', 1, 510, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000029', N'UPS0003', 1, 400, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000030', N'OTH0007', 1, 420, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000030', N'RAM0007', 1, 540, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000031', N'KB00025', 1, 230, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000031', N'VGA0096', 1, 320, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000032', N'MB00211', 5, 560, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000033', N'MOS0062', 1, 85, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000034', N'CAB0001', 5, 20, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000034', N'CAB0004', 5, 10, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000035', N'CAB0018', 10, 50, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000035', N'CAB0019', 5, 500, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000036', N'CAR00135', 3, 45, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000036', N'CAR0050', 2, 50, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000037', N'CAR0075', 2, 70, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000037', N'PRT0023', 1, 900, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000039', N'FDD0005', 2, 80, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000039', N'HDD0002', 2, 560, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000040', N'FM00030', 1, 350, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000041', N'FM00010', 1, 360, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000041', N'WEC0031', 1, 230, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000042', N'MB00065', 1, 530, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000043', N'OTH0033', 10, 15, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000043', N'VGA0103', 2, 230, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000044', N'KB00038', 1, 120, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000044', N'MOS0005', 1, 81, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000045', N'KB00024', 1, 123, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000045', N'SPK0060', 1, 230, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000046', N'FDD0003', 2, 80, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000047', N'MOS0062', 2, 80, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000047', N'WEC0010', 2, 130, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000048', N'CAB0001', 1, 50, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000048', N'WEC0034', 1, 132, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'000049', N'CAB0004', 2, 120, NULL, NULL)
INSERT [dbo].[T_ChiTietBH] ([MaHDBH], [MaHang], [SLBan], [DGBan], [CK], [CP]) VALUES (N'0090', N'CAB0018', 1000, 20, NULL, NULL)
GO
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000001', N'CAB0019', 50, 50, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000001', N'HDD0025', 20, 240, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000001', N'MB00190', 6, 530, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000002', N'HDD0069', 10, 300, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000002', N'MB00211', 20, 500, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000002', N'OTH0048', 3, 100, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000003', N'CAB0018', 40, 20, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000003', N'CAR0078', 20, 101, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000003', N'HDD0025', 10, 230, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000004', N'RAM0015', 10, 130, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000004', N'RAM0018', 20, 200, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000004', N'WEC0010', 30, 120, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000005', N'CAR00135', 10, 78, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000005', N'OTH0036', 40, 50, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000006', N'KB00038', 20, 120, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000006', N'MOT0014', 5, 320, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000007', N'CAB0018', 30, 30, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000007', N'KB00025', 40, 120, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000008', N'FM00030', 20, 121, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000008', N'MB00248', 10, 520, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000008', N'OTH0033', 100, 15, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000009', N'HDD0065', 10, 200, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000009', N'MB00211', 10, 450, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000009', N'OTH0033', 10, 15, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000010', N'CAB0004', 100, 5, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000010', N'MB00137', 5, 500, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000010', N'MOT00130', 10, 400, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000011', N'CPU0050', 10, 500, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000011', N'FM00010', 20, 210, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000011', N'MB00190', 20, 460, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000013', N'KB00025', 4, 120, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000013', N'MB00248', 5, 530, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000013', N'MOT0015', 10, 400, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000014', N'HDD0071', 5, 550, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000014', N'KB00038', 20, 200, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000015', N'KB00038', 100, 120, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000015', N'MB00065', 5, 500, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000015', N'MB00137', 20, 420, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000016', N'FM00030', 20, 130, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000016', N'MB00192', 8, 530, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000016', N'MOT0041', 10, 450, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000017', N'MB00284', 30, 600, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000017', N'MOT0055', 10, 450, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000017', N'VGA0120', 30, 32, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000018', N'HDD0069', 10, 350, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000018', N'KB00038', 10, 120, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000019', N'HDD0060', 10, 450, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000019', N'OTH0007', 10, 79, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000020', N'CPU0025', 20, 450, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000020', N'FDD0005', 100, 70, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000021', N'CPU0053', 10, 500, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000021', N'HDD0025', 10, 450, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000021', N'MB00211', 10, 520, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000022', N'CAR0075', 100, 100, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000022', N'CAR0078', 20, 120, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000022', N'MB00137', 3, 420, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000023', N'KB00038', 10, 112, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000023', N'MB00190', 5, 620, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000023', N'RAM0015', 100, 200, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000024', N'CAB0004', 1000, 5, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000024', N'CAR0075', 20, 10, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000024', N'MB00248', 2, 560, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000025', N'MOS0028', 100, 100, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000025', N'WEC0026', 10, 250, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000026', N'MB00284', 5, 530, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000026', N'RAM0015', 10, 450, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000026', N'RAM0018', 20, 456, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000027', N'CAB0019', 10, 1000, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000027', N'CAR0078', 100, 100, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000027', N'KB00038', 200, 120, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000028', N'CAB0018', 20, 200, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000028', N'CPU0026', 5, 450, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000029', N'HDD0019', 20, 450, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000029', N'MOT0113', 10, 500, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000030', N'HDD0059', 30, 600, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000030', N'HDD0071', 50, 800, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000031', N'CPU0025', 20, 56, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000031', N'FM00010', 20, 120, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000032', N'FDD0005', 10, 120, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000032', N'MB00137', 10, 560, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000035', N'HPH0010', 5, 90, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000035', N'SPK0048', 5, 150, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000036', N'CAB0018', 100, 50, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000036', N'CAB0019', 10, 600, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000037', N'CAB0001', 10, 100, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000038', N'CAB0004', 5, 500, NULL, NULL)
GO
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000006', N'KB00038', 20, 120, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000006', N'MOT0014', 5, 320, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000007', N'CAB0018', 30, 30, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000007', N'KB00025', 40, 120, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000008', N'FM00030', 20, 121, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000008', N'MB00248', 10, 520, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000008', N'OTH0033', 100, 15, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000009', N'HDD0065', 10, 200, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000009', N'MB00211', 10, 450, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000009', N'OTH0033', 10, 15, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000010', N'CAB0004', 100, 5, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000010', N'MB00137', 5, 500, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000010', N'MOT00130', 10, 400, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000011', N'CPU0050', 10, 500, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000011', N'FM00010', 20, 210, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000011', N'MB00190', 20, 460, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000013', N'KB00025', 4, 120, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000013', N'MB00248', 5, 530, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000013', N'MOT0015', 10, 400, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000014', N'HDD0071', 5, 550, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000014', N'KB00038', 20, 200, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000015', N'KB00038', 100, 120, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000015', N'MB00065', 5, 500, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000015', N'MB00137', 20, 420, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000016', N'FM00030', 20, 130, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000016', N'MB00192', 8, 530, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000016', N'MOT0041', 10, 450, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000017', N'MB00284', 30, 600, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000017', N'MOT0055', 10, 450, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000017', N'VGA0120', 30, 32, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000018', N'HDD0069', 10, 350, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000018', N'KB00038', 10, 120, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000019', N'HDD0060', 10, 450, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000019', N'OTH0007', 10, 79, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000020', N'CPU0025', 20, 450, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000020', N'FDD0005', 100, 70, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000021', N'CPU0053', 10, 500, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000021', N'HDD0025', 10, 450, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000021', N'MB00211', 10, 520, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000022', N'CAR0075', 100, 100, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000022', N'CAR0078', 20, 120, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000022', N'MB00137', 3, 420, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000023', N'KB00038', 10, 112, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000023', N'MB00190', 5, 620, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000023', N'RAM0015', 100, 200, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000024', N'CAB0004', 1000, 5, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000024', N'CAR0075', 20, 10, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000024', N'MB00248', 2, 560, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000025', N'MOS0028', 100, 100, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000025', N'WEC0026', 10, 250, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000026', N'MB00284', 5, 530, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000026', N'RAM0015', 10, 450, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000026', N'RAM0018', 20, 456, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000027', N'CAB0019', 10, 1000, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000027', N'CAR0078', 100, 100, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000027', N'KB00038', 200, 120, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000028', N'CAB0018', 20, 200, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000028', N'CPU0026', 5, 450, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000029', N'HDD0019', 20, 450, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000029', N'MOT0113', 10, 500, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000030', N'HDD0059', 30, 600, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000030', N'HDD0071', 50, 800, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000031', N'CPU0025', 20, 56, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000031', N'FM00010', 20, 120, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000032', N'FDD0005', 10, 120, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000032', N'MB00137', 10, 560, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000035', N'HPH0010', 5, 90, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000035', N'SPK0048', 5, 150, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000036', N'CAB0018', 100, 50, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000036', N'CAB0019', 10, 600, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000037', N'CAB0001', 10, 100, NULL, NULL)
INSERT [dbo].[T_ChiTietMH] ([MaHDMH], [MaHang], [SLNhap], [DGNhap], [CK], [CP]) VALUES (N'000038', N'CAB0004', 5, 500, NULL, NULL)
GO
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cab0001', N'Power Cable', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cab0004', N'Print Cable 5m', NULL, N'Sợi', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cab0018', N'Cable UTP', NULL, N'Thùng', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cab0019', N'Cable UTP 2', NULL, N'Thùng', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'car00135', N'Mực In Hp 24A-HP Lajerjest 1150', NULL, N'Thùng', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'car0050', N'Mực In HP 41A-HP Deskjet 840C, 760', NULL, N'Lọ', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'car0075', N'Mực In Inktec 9014-Epson 480, 580, C20, C40', NULL, N'Lọ', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'car0078', N'Mực In Inktec 9017-Epson 680', NULL, N'Lọ', 1, 6)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'car0134', N'Mực In HP 13A-Hp laserjet 1300', NULL, N'Lọ', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cas0107', N'Case Digital2702D', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cas0108', N'Case Digital2705A', NULL, N'Cái', 1, 18)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cas0109', N'Case Digital2708B', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cas0110', N'Case Digital2721B', NULL, N'Cái', 1, 18)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cdr0003', N'CD 52X Sansung', NULL, N'Cái', 4, 18)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cdr0006', N'CD 52X Actima', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cdr002', N'CD 52X LG', NULL, N'Cái', 6, 19)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cdr0022', N'CD 54X Mitsumi', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cpu0012', N'Celeron 1.2 Ghr', NULL, N'Con', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cpu0014', N'Celeron 1.3Ghr', NULL, N'Con', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cpu0025', N'Intel P4 1.7Ghr', NULL, N'Con', 1, 115)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cpu0026', N'Intel P4 2.0 Ghr', NULL, N'Con', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cpu0027', N'Intel P4 1.8 Ghr', NULL, N'Con', 1, 117)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cpu0030', N'Celeron 1.7 Ghr', NULL, N'Con', 5, 55)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cpu0038', N'Intel P4 2.4 Ghr', NULL, N'Con', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cpu0048', N'Celeron 1.8Ghr', NULL, N'Con', 4, 66.5)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cpu0049', N'Celeron 2.0Ghr', NULL, N'Con', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cpu0050', N'Intel P4 2.66 Ghr', NULL, N'Con', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cpu0053', N'Intel P4 2.6 Ghr', NULL, N'Con', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cpu0055', N'Intel P4 2.8 Ghr', NULL, N'Con', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'Cpu0056', N'Celeron 2.4Ghr', NULL, N'Con', 1, 79)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cpu0058', N'Intel P4 3.0 Ghr', NULL, N'Con', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'fdd0002', N'FDD 1.44 SoNy', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'fdd0003', N'FDD 1.44 Panasonic', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'fdd0005', N'FDD 1.44 Mitsumi', NULL, N'Cái', 10, 7)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'fdd0006', N'FDD External Mitsumi,USB', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'fdd0009', N'FDD External Nec,USB', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'fm00010', N'Fax Modem Acorp(ext)', NULL, N'Cái', 2, 24.5)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'fm00030', N'Fax Modem Acorp', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'fm00031', N'Fax Modem Intel', NULL, N'Cái', 4, 12)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hdd0002', N'Seagate 20Gb ATA133-5400rpm-China', NULL, N'Cái', 4, 51.5)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hdd0003', N'Baracuda 30Gb-ATA100-7200rpm-Singapor', NULL, N'Cái', 5, 60)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hdd0007', N'Maxtor 20 Gb-ATA133-5400 rpm-ChiNa', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hdd0013', N'Seagete 40Gb ATA133-5400rpm-Singapore', NULL, N'Cái', 6, 55)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hdd0019', N'Baracuda 40Gr-ATA-7200rpm-China', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hdd0025', N'Maxtor 40 Gb Plus-ATA133-7200rpm-Singapore', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hdd0038', N'Hitachi 30 Ghr,ATA66-420 rpm', NULL, N'Cái', 1, 128)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hdd0040', N'Maxtor 40 Gb-ATA133-5400rpm-Singapore', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hdd0043', N'Maxtor 30 Gb-ATA133-5400rpm-Singapor', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hdd0048', N'Maxtor 30 Gb Plus-ATA133-7200rpm-7200rpm', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hdd0059', N'Maxtor 80 Gb Plus-ATA133-7200rpm-Singapor', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hdd0060', N'Hitachi 40 Ghr,ATA66-4200rpm-for noterbook', NULL, N'Cái', 2, 140)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hdd0065', N'Maxtor 18.4Gb-SCSI 10000rpm', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hdd0069', N'Fujitsu 30 Ghr,ATA66-4200 rpm,for noterbook', NULL, N'Cái', 1, 128)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hdd0071', N'Seagete 80 Gb S.ATA-7200-China', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hdd0075', N'Samsung 120Gb S-ATA-7200-Korea', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hdd0080', N'Maxtor 120Gb S-ATA-7200rpm', NULL, N'Cái', 1, 117)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hph0002', N'headPhone có Micro', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hph0010', N'Labtec Headphone Elite 840', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'kb00024', N'Keyboard Vibird', NULL, N'Cái', 4, 5)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'kb00025', N'Keyboard Gigabyte', NULL, N'Cái', 1, 6)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'kb00038', N'Keyboard Mitsumi', NULL, N'Cái', 12, 6)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'kh00031', N'Keyboard Logitech', NULL, N'Cái', NULL, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mb00065', N'Via 266E P4VMM2', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mb00137', N'SIS 648 & SIS 963 L4S8A2', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mb00190', N'Intel 845 P4IBAD2', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mb00192', N'InTel 845GV L4IGVM6', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mb00211', N'VIA P4X400 & VT8235 L4VXAF', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mb00248', N'D845 GVSR,Socket478,Bus533,S/P 3.06Ghz,Sound=Vga OnBoard', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mb00284', N'Intel 845GVMRZ', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mos0005', N'Mouse Genius', NULL, N'Con', 6, 2.5)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mos0028', N'Mouse Mitsumi', NULL, N'Con', 20, 3.5)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mos0061', N'Mouse Mitoni', NULL, N'Con', 1, 3.5)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mos0062', N'Mouse Vibird', NULL, N'Con', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mot00130', N'Monitor 17" ACERAC713', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mot0014', N'Monitor 15" Proview', NULL, N'Cái', 2, 79)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mot0015', N'Monitor 17" Proview', NULL, N'Cái', 1, 99)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mot0041', N'Monitor 17" ProLink', NULL, N'Cái', 1, 105)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'Mot0047', N'Monitor 15" JVC', NULL, N'Cái', 1, 82)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mot0050', N'Monitor 15" Likom', NULL, N'Cái', 2, 78)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mot0055', N'Monitor 17" likom', NULL, N'Cái', 4, 99)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mot0113', N'Monitor 15" E-Machines-15W', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'oth0007', N'Kềm bấm mạng RJ45', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'oth0033', N'Pin Cmos', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'oth0036', N'Bóp đựng đĩa 48 cái', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'oth0048', N'Bộ đồ nghề', NULL, N'Hộp', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'prt0004', N'Printer CanonBJC-2100SP', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'prt0023', N'Priter Canon S200SPX', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'prt0028', N'Priter CanonLBP-1210', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'prt0030', N'Printer Canon LBP-1120', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'ram0006', N'SDRam 128 Mhr', NULL, N'Thanh', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'ram0007', N'SDRam 256 Mhr', NULL, N'Thanh', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'Ram0015', N'DDRam 256 Mhr', NULL, N'Thanh', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'ram0016', N'DDRam 128 Mhr', NULL, N'Thanh', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'ram0018', N'DDRam 512 Mhr', NULL, N'Thanh', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'spk0048', N'Speaker S-3000', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'spk0049', N'Speaker S-3300', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'spk0050', N'Speaker S-3600', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'spk0060', N'Speaker J-607', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'swt0012', N'Switch 16ports 10/100Mbps', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'swt0020', N'Switch 8ports 1000Mbps', NULL, N'Cái', 0, 0)
GO
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'ups0003', N'UPS Power Tree 600VA', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'ups0004', N'UPS Sunpac 600VA', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'vga0055', N'Mercury 64Mb-Chip Geforce2 MX-400-AGB', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'vga0096', N'ASUS V9180SE-64Mb-Chip Geforce 4 MX440-AGB', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'vga0103', N'GIGABYTE R7064T 64Mb-Chip Ati Radeon 7000-AGB', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'vga0104', N'ECS ATI R9200L 64Mb-Chip Ati 9200-AGB', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'vga0120', N'MSI 32Mb MX400 D-32-D1DRam,Chip Geforce 2 MX-400-AGB', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'wec0010', N'Webcam Exonics 612-101 pixels,usb port', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'wec0026', N'Webcam Creative NX Pro', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'wec0031', N'webcam Creative NX-352*288-USB port,Chỉnh xoay được 26 độ', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'wec0034', N'Webcam @Cam Nc-303', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cab0001', N'Power Cable', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cab0004', N'Print Cable 5m', NULL, N'Sợi', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cab0018', N'Cable UTP', NULL, N'Thùng', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cab0019', N'Cable UTP 2', NULL, N'Thùng', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'car00135', N'Mực In Hp 24A-HP Lajerjest 1150', NULL, N'Thùng', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'car0050', N'Mực In HP 41A-HP Deskjet 840C, 760', NULL, N'Lọ', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'car0075', N'Mực In Inktec 9014-Epson 480, 580, C20, C40', NULL, N'Lọ', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'car0078', N'Mực In Inktec 9017-Epson 680', NULL, N'Lọ', 1, 6)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'car0134', N'Mực In HP 13A-Hp laserjet 1300', NULL, N'Lọ', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cas0107', N'Case Digital2702D', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cas0108', N'Case Digital2705A', NULL, N'Cái', 1, 18)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cas0109', N'Case Digital2708B', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cas0110', N'Case Digital2721B', NULL, N'Cái', 1, 18)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cdr0003', N'CD 52X Sansung', NULL, N'Cái', 4, 18)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cdr0006', N'CD 52X Actima', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cdr002', N'CD 52X LG', NULL, N'Cái', 6, 19)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cdr0022', N'CD 54X Mitsumi', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cpu0012', N'Celeron 1.2 Ghr', NULL, N'Con', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cpu0014', N'Celeron 1.3Ghr', NULL, N'Con', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cpu0025', N'Intel P4 1.7Ghr', NULL, N'Con', 1, 115)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cpu0026', N'Intel P4 2.0 Ghr', NULL, N'Con', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cpu0027', N'Intel P4 1.8 Ghr', NULL, N'Con', 1, 117)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cpu0030', N'Celeron 1.7 Ghr', NULL, N'Con', 5, 55)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cpu0038', N'Intel P4 2.4 Ghr', NULL, N'Con', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cpu0048', N'Celeron 1.8Ghr', NULL, N'Con', 4, 66.5)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cpu0049', N'Celeron 2.0Ghr', NULL, N'Con', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cpu0050', N'Intel P4 2.66 Ghr', NULL, N'Con', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cpu0053', N'Intel P4 2.6 Ghr', NULL, N'Con', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cpu0055', N'Intel P4 2.8 Ghr', NULL, N'Con', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'Cpu0056', N'Celeron 2.4Ghr', NULL, N'Con', 1, 79)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'cpu0058', N'Intel P4 3.0 Ghr', NULL, N'Con', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'fdd0002', N'FDD 1.44 SoNy', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'fdd0003', N'FDD 1.44 Panasonic', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'fdd0005', N'FDD 1.44 Mitsumi', NULL, N'Cái', 10, 7)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'fdd0006', N'FDD External Mitsumi,USB', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'fdd0009', N'FDD External Nec,USB', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'fm00010', N'Fax Modem Acorp(ext)', NULL, N'Cái', 2, 24.5)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'fm00030', N'Fax Modem Acorp', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'fm00031', N'Fax Modem Intel', NULL, N'Cái', 4, 12)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hdd0002', N'Seagate 20Gb ATA133-5400rpm-China', NULL, N'Cái', 4, 51.5)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hdd0003', N'Baracuda 30Gb-ATA100-7200rpm-Singapor', NULL, N'Cái', 5, 60)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hdd0007', N'Maxtor 20 Gb-ATA133-5400 rpm-ChiNa', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hdd0013', N'Seagete 40Gb ATA133-5400rpm-Singapore', NULL, N'Cái', 6, 55)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hdd0019', N'Baracuda 40Gr-ATA-7200rpm-China', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hdd0025', N'Maxtor 40 Gb Plus-ATA133-7200rpm-Singapore', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hdd0038', N'Hitachi 30 Ghr,ATA66-420 rpm', NULL, N'Cái', 1, 128)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hdd0040', N'Maxtor 40 Gb-ATA133-5400rpm-Singapore', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hdd0043', N'Maxtor 30 Gb-ATA133-5400rpm-Singapor', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hdd0048', N'Maxtor 30 Gb Plus-ATA133-7200rpm-7200rpm', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hdd0059', N'Maxtor 80 Gb Plus-ATA133-7200rpm-Singapor', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hdd0060', N'Hitachi 40 Ghr,ATA66-4200rpm-for noterbook', NULL, N'Cái', 2, 140)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hdd0065', N'Maxtor 18.4Gb-SCSI 10000rpm', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hdd0069', N'Fujitsu 30 Ghr,ATA66-4200 rpm,for noterbook', NULL, N'Cái', 1, 128)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hdd0071', N'Seagete 80 Gb S.ATA-7200-China', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hdd0075', N'Samsung 120Gb S-ATA-7200-Korea', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hdd0080', N'Maxtor 120Gb S-ATA-7200rpm', NULL, N'Cái', 1, 117)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hph0002', N'headPhone có Micro', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'hph0010', N'Labtec Headphone Elite 840', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'kb00024', N'Keyboard Vibird', NULL, N'Cái', 4, 5)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'kb00025', N'Keyboard Gigabyte', NULL, N'Cái', 1, 6)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'kb00038', N'Keyboard Mitsumi', NULL, N'Cái', 12, 6)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'kh00031', N'Keyboard Logitech', NULL, N'Cái', NULL, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mb00065', N'Via 266E P4VMM2', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mb00137', N'SIS 648 & SIS 963 L4S8A2', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mb00190', N'Intel 845 P4IBAD2', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mb00192', N'InTel 845GV L4IGVM6', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mb00211', N'VIA P4X400 & VT8235 L4VXAF', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mb00248', N'D845 GVSR,Socket478,Bus533,S/P 3.06Ghz,Sound=Vga OnBoard', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mb00284', N'Intel 845GVMRZ', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mos0005', N'Mouse Genius', NULL, N'Con', 6, 2.5)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mos0028', N'Mouse Mitsumi', NULL, N'Con', 20, 3.5)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mos0061', N'Mouse Mitoni', NULL, N'Con', 1, 3.5)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mos0062', N'Mouse Vibird', NULL, N'Con', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mot00130', N'Monitor 17" ACERAC713', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mot0014', N'Monitor 15" Proview', NULL, N'Cái', 2, 79)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mot0015', N'Monitor 17" Proview', NULL, N'Cái', 1, 99)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mot0041', N'Monitor 17" ProLink', NULL, N'Cái', 1, 105)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'Mot0047', N'Monitor 15" JVC', NULL, N'Cái', 1, 82)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mot0050', N'Monitor 15" Likom', NULL, N'Cái', 2, 78)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mot0055', N'Monitor 17" likom', NULL, N'Cái', 4, 99)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'mot0113', N'Monitor 15" E-Machines-15W', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'oth0007', N'Kềm bấm mạng RJ45', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'oth0033', N'Pin Cmos', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'oth0036', N'Bóp đựng đĩa 48 cái', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'oth0048', N'Bộ đồ nghề', NULL, N'Hộp', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'prt0004', N'Printer CanonBJC-2100SP', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'prt0023', N'Priter Canon S200SPX', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'prt0028', N'Priter CanonLBP-1210', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'prt0030', N'Printer Canon LBP-1120', NULL, N'Cái', 0, 0)
GO
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'ram0006', N'SDRam 128 Mhr', NULL, N'Thanh', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'ram0007', N'SDRam 256 Mhr', NULL, N'Thanh', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'Ram0015', N'DDRam 256 Mhr', NULL, N'Thanh', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'ram0016', N'DDRam 128 Mhr', NULL, N'Thanh', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'ram0018', N'DDRam 512 Mhr', NULL, N'Thanh', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'spk0048', N'Speaker S-3000', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'spk0049', N'Speaker S-3300', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'spk0050', N'Speaker S-3600', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'spk0060', N'Speaker J-607', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'swt0012', N'Switch 16ports 10/100Mbps', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'swt0020', N'Switch 8ports 1000Mbps', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'ups0003', N'UPS Power Tree 600VA', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'ups0004', N'UPS Sunpac 600VA', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'vga0055', N'Mercury 64Mb-Chip Geforce2 MX-400-AGB', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'vga0096', N'ASUS V9180SE-64Mb-Chip Geforce 4 MX440-AGB', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'vga0103', N'GIGABYTE R7064T 64Mb-Chip Ati Radeon 7000-AGB', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'vga0104', N'ECS ATI R9200L 64Mb-Chip Ati 9200-AGB', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'vga0120', N'MSI 32Mb MX400 D-32-D1DRam,Chip Geforce 2 MX-400-AGB', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'wec0010', N'Webcam Exonics 612-101 pixels,usb port', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'wec0026', N'Webcam Creative NX Pro', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'wec0031', N'webcam Creative NX-352*288-USB port,Chỉnh xoay được 26 độ', NULL, N'Cái', 0, 0)
INSERT [dbo].[T_HangHoa] ([MaHang], [TenHang], [MANCC], [DVT], [SLTonDK], [TGTonDK]) VALUES (N'wec0034', N'Webcam @Cam Nc-303', NULL, N'Cái', 0, 0)
GO
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000001', CAST(N'2003-01-12T00:00:00.000' AS DateTime), N'24544', N'02')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000002', CAST(N'2003-01-26T00:00:00.000' AS DateTime), N'00002', N'03')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000003', CAST(N'2003-02-03T00:00:00.000' AS DateTime), N'00003', N'02')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000004', CAST(N'2003-02-13T00:00:00.000' AS DateTime), N'00004', N'04')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000005', CAST(N'2003-04-05T00:00:00.000' AS DateTime), N'00005', N'02')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000006', CAST(N'2003-04-15T00:00:00.000' AS DateTime), N'00006', N'07')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000007', CAST(N'2003-05-25T00:00:00.000' AS DateTime), N'00005', N'03')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000008', CAST(N'2003-06-02T00:00:00.000' AS DateTime), N'00008', N'02')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000009', CAST(N'2003-06-25T00:00:00.000' AS DateTime), N'00009', N'03')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000010', CAST(N'2003-05-30T00:00:00.000' AS DateTime), N'00010', N'02')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000011', CAST(N'2003-06-04T00:00:00.000' AS DateTime), N'00012', N'03')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000012', CAST(N'2003-07-01T00:00:00.000' AS DateTime), N'00012', N'06')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000013', CAST(N'2003-07-15T00:00:00.000' AS DateTime), N'00013', N'05')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000014', CAST(N'2003-08-16T00:00:00.000' AS DateTime), N'00014', N'06')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000015', CAST(N'2003-08-30T00:00:00.000' AS DateTime), N'00015', N'02')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000016', CAST(N'2003-09-06T00:00:00.000' AS DateTime), N'00016', N'03')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000018', CAST(N'2003-09-28T00:00:00.000' AS DateTime), N'00018', N'01')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000019', CAST(N'2003-10-10T00:00:00.000' AS DateTime), N'00019', N'01')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000020', CAST(N'2003-10-30T00:00:00.000' AS DateTime), N'00020', N'02')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000023', CAST(N'2003-11-11T00:00:00.000' AS DateTime), N'00023', N'04')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000024', CAST(N'2003-10-25T00:00:00.000' AS DateTime), N'00024', N'04')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000025', CAST(N'2003-11-30T00:00:00.000' AS DateTime), N'00025', N'03')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000026', CAST(N'2003-12-12T00:00:00.000' AS DateTime), N'00026', N'03')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000027', CAST(N'2004-01-01T00:00:00.000' AS DateTime), N'00027', N'01')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000028', CAST(N'2004-01-15T00:00:00.000' AS DateTime), N'00028', N'02')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000029', CAST(N'2004-01-29T00:00:00.000' AS DateTime), N'00029', N'05')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000030', CAST(N'2004-02-12T00:00:00.000' AS DateTime), N'00030', N'05')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000031', CAST(N'2004-02-26T00:00:00.000' AS DateTime), N'00031', N'01')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000032', CAST(N'2004-03-12T00:00:00.000' AS DateTime), N'00032', N'01')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000033', CAST(N'2004-03-29T00:00:00.000' AS DateTime), N'00033', N'06')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000034', CAST(N'2004-04-06T00:00:00.000' AS DateTime), N'00013', N'03')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000035', CAST(N'2004-04-26T00:00:00.000' AS DateTime), N'00006', N'03')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000036', CAST(N'2004-04-30T00:00:00.000' AS DateTime), N'00015', N'01')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000037', CAST(N'2004-05-12T00:00:00.000' AS DateTime), N'00023', N'06')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000039', CAST(N'2004-05-29T00:00:00.000' AS DateTime), N'00026', N'06')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000040', CAST(N'2004-06-01T00:00:00.000' AS DateTime), N'00021', N'03')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000041', CAST(N'2004-06-05T00:00:00.000' AS DateTime), N'00019', N'04')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000042', CAST(N'2004-06-28T00:00:00.000' AS DateTime), N'00014', N'04')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000043', CAST(N'2004-07-03T00:00:00.000' AS DateTime), N'00031', N'05')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000044', CAST(N'2004-07-15T00:00:00.000' AS DateTime), N'00018', N'01')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000045', CAST(N'2004-07-30T00:00:00.000' AS DateTime), N'00021', N'01')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000046', CAST(N'2004-08-12T00:00:00.000' AS DateTime), N'00033', N'04')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000047', CAST(N'2004-08-28T00:00:00.000' AS DateTime), N'00031', N'04')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000048', CAST(N'2004-08-30T00:00:00.000' AS DateTime), N'00032', N'02')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'000049', CAST(N'2004-09-01T00:00:00.000' AS DateTime), N'00007', N'05')
INSERT [dbo].[T_HoaDonBH] ([MaHDBH], [NgayLHD], [MaKH], [MaNV]) VALUES (N'0090', NULL, N'00003', N'02')
GO
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000001', CAST(N'2003-01-15T00:00:00.000' AS DateTime), NULL, N'0002')
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000002', CAST(N'2003-01-06T00:00:00.000' AS DateTime), NULL, N'0005')
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000003', CAST(N'2003-02-13T00:00:00.000' AS DateTime), NULL, N'0005')
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000004', CAST(N'2003-03-04T00:00:00.000' AS DateTime), NULL, N'0006')
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000005', CAST(N'2003-05-09T00:00:00.000' AS DateTime), NULL, N'0008')
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000006', CAST(N'2003-04-25T00:00:00.000' AS DateTime), NULL, N'0005')
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000007', CAST(N'2003-06-23T00:00:00.000' AS DateTime), NULL, N'0003')
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000008', CAST(N'2003-07-12T00:00:00.000' AS DateTime), NULL, N'0002')
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000009', CAST(N'2003-07-03T00:00:00.000' AS DateTime), NULL, N'0001')
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000010', CAST(N'2003-08-16T00:00:00.000' AS DateTime), NULL, N'0002')
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000011', CAST(N'2003-09-03T00:00:00.000' AS DateTime), NULL, N'0001')
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000013', CAST(N'2003-10-14T00:00:00.000' AS DateTime), NULL, N'0002')
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000014', CAST(N'2003-11-30T00:00:00.000' AS DateTime), NULL, N'0002')
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000015', CAST(N'2003-12-12T00:00:00.000' AS DateTime), NULL, N'0001')
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000016', CAST(N'2004-01-01T00:00:00.000' AS DateTime), NULL, N'0001')
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000017', CAST(N'2004-01-12T00:00:00.000' AS DateTime), NULL, N'0001')
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000018', CAST(N'2004-02-02T00:00:00.000' AS DateTime), NULL, N'0003')
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000019', CAST(N'2004-03-15T00:00:00.000' AS DateTime), NULL, N'0003')
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000020', CAST(N'2004-04-12T00:00:00.000' AS DateTime), NULL, N'0002')
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000021', CAST(N'2004-05-23T00:00:00.000' AS DateTime), NULL, N'0001')
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000022', CAST(N'2004-05-01T00:00:00.000' AS DateTime), NULL, N'0001')
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000023', CAST(N'2004-05-05T00:00:00.000' AS DateTime), NULL, N'0001')
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000024', CAST(N'2004-06-06T00:00:00.000' AS DateTime), NULL, N'0001')
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000025', CAST(N'2004-06-30T00:00:00.000' AS DateTime), NULL, N'0003')
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000026', CAST(N'2004-07-03T00:00:00.000' AS DateTime), NULL, N'0001')
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000027', CAST(N'2004-08-07T00:00:00.000' AS DateTime), NULL, N'0002')
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000028', CAST(N'2004-08-12T00:00:00.000' AS DateTime), NULL, N'0002')
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000029', CAST(N'2004-08-20T00:00:00.000' AS DateTime), NULL, N'0006')
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000030', CAST(N'2004-08-25T00:00:00.000' AS DateTime), NULL, N'0003')
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000031', CAST(N'2004-08-29T00:00:00.000' AS DateTime), NULL, N'0003')
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000032', CAST(N'2004-08-29T00:00:00.000' AS DateTime), NULL, N'0005')
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000035', CAST(N'2004-08-26T00:00:00.000' AS DateTime), NULL, N'0003')
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000036', CAST(N'2004-08-30T00:00:00.000' AS DateTime), NULL, N'0002')
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000037', CAST(N'2004-09-01T00:00:00.000' AS DateTime), NULL, N'0001')
INSERT [dbo].[T_HoaDonMH] ([MaHDMH], [NgayNhap], [MANV], [MaNCC]) VALUES (N'000038', CAST(N'2004-09-02T00:00:00.000' AS DateTime), NULL, N'0002')
GO
INSERT [dbo].[T_KhachHang] ([MaKH], [TenKH], [DiaChiKH], [TP_Tinh], [DienThoaiKH], [MST]) VALUES (N'00002', N'Trần Thị Thiên Thanh', N'Phường Hố Nai', N'Biên Hoà - Đồng Nai', N'061887685', NULL)
INSERT [dbo].[T_KhachHang] ([MaKH], [TenKH], [DiaChiKH], [TP_Tinh], [DienThoaiKH], [MST]) VALUES (N'00003', N'Nguyễn Thị Tuyết Nhung', N'Kp8 Phường Quyết Thắng-TP Biên Hòa', N'Đồng Nai', N'02648698', NULL)
INSERT [dbo].[T_KhachHang] ([MaKH], [TenKH], [DiaChiKH], [TP_Tinh], [DienThoaiKH], [MST]) VALUES (N'00004', N'Đặng Anh Ngữ', N'Phường Tân Hoà-TP Biên Hòa', N'Biên Hoà - Đồng Nai', N'061897756', NULL)
INSERT [dbo].[T_KhachHang] ([MaKH], [TenKH], [DiaChiKH], [TP_Tinh], [DienThoaiKH], [MST]) VALUES (N'00005', N'Nguyễn Thị Thái Yến', N'Phường Hố Nai-TP-Biên Hòa', N'Biên Hoà - Đồng Nai', N'061897254', NULL)
INSERT [dbo].[T_KhachHang] ([MaKH], [TenKH], [DiaChiKH], [TP_Tinh], [DienThoaiKH], [MST]) VALUES (N'00006', N'Nguyễn Minh Tân', N'Long Thành-Đồng Nai', N'Biên Hoà - Đồng Nai', NULL, NULL)
INSERT [dbo].[T_KhachHang] ([MaKH], [TenKH], [DiaChiKH], [TP_Tinh], [DienThoaiKH], [MST]) VALUES (N'00007', N'Phạm Thành Nhân', N'124 QL1-Biên Hòa', N'Biên Hoà - Đồng Nai', N'061856477', NULL)
INSERT [dbo].[T_KhachHang] ([MaKH], [TenKH], [DiaChiKH], [TP_Tinh], [DienThoaiKH], [MST]) VALUES (N'00008', N'Võ Thị Mai', N'Công Ty VeDan Việt Nam-Khu Công Nghiệp Gò aĐN', N'Đồng Nai', N'061848777', NULL)
INSERT [dbo].[T_KhachHang] ([MaKH], [TenKH], [DiaChiKH], [TP_Tinh], [DienThoaiKH], [MST]) VALUES (N'00009', N'Phạm Huỳnh Thanh Mai', N'Công Ty TACERA-Khu Công Nghiệp Gò Dầu-LT-ĐN', N'Đồng Nai', N'061845323', NULL)
INSERT [dbo].[T_KhachHang] ([MaKH], [TenKH], [DiaChiKH], [TP_Tinh], [DienThoaiKH], [MST]) VALUES (N'00010', N'Quốc Tiến Dũng', N'Công Ty HuaLon Việt Nam-Khu Công Nghiệp 2-NT-ĐN', N'Đồng Nai', N'061845564', NULL)
INSERT [dbo].[T_KhachHang] ([MaKH], [TenKH], [DiaChiKH], [TP_Tinh], [DienThoaiKH], [MST]) VALUES (N'00011', N'Huỳnh Thanh Mai', N'Ấp 2 An Phước-LT-ĐN', N'Đồng Nai', N'061845612', NULL)
INSERT [dbo].[T_KhachHang] ([MaKH], [TenKH], [DiaChiKH], [TP_Tinh], [DienThoaiKH], [MST]) VALUES (N'00012', N'Nguyễn Thị Mai', N'Ấp 3 Long Thọ-LT-ĐN', N'Đồng Nai', NULL, NULL)
INSERT [dbo].[T_KhachHang] ([MaKH], [TenKH], [DiaChiKH], [TP_Tinh], [DienThoaiKH], [MST]) VALUES (N'00013', N'Mai Thị Thanh Nhàn', N'Ấp Long Phú Phước Thái-LT-ĐN', N'Đồng Nai', N'061865932', NULL)
INSERT [dbo].[T_KhachHang] ([MaKH], [TenKH], [DiaChiKH], [TP_Tinh], [DienThoaiKH], [MST]) VALUES (N'00014', N'Nguyễn Phước Tuấn', N'Long Đức-LT-ĐN', N'Đồng Nai', N'061545321', NULL)
INSERT [dbo].[T_KhachHang] ([MaKH], [TenKH], [DiaChiKH], [TP_Tinh], [DienThoaiKH], [MST]) VALUES (N'00015', N'Phan Thanh Mai', N'Phước An-NT-ĐN', N'Đồng Nai', NULL, NULL)
INSERT [dbo].[T_KhachHang] ([MaKH], [TenKH], [DiaChiKH], [TP_Tinh], [DienThoaiKH], [MST]) VALUES (N'00016', N'Lý Đức Bình', N'Phước Thiền-NT-ĐN', N'Đồng Nai', N'845698', NULL)
INSERT [dbo].[T_KhachHang] ([MaKH], [TenKH], [DiaChiKH], [TP_Tinh], [DienThoaiKH], [MST]) VALUES (N'00017', N'Võ Minh Tâm', N'Long Thành-Đồng Nai', N'Đồng Nai', NULL, NULL)
INSERT [dbo].[T_KhachHang] ([MaKH], [TenKH], [DiaChiKH], [TP_Tinh], [DienThoaiKH], [MST]) VALUES (N'00018', N'Phạm Ngọc Thanh', N'Long Thọ NT_ĐN', N'Đồng Nai', NULL, NULL)
INSERT [dbo].[T_KhachHang] ([MaKH], [TenKH], [DiaChiKH], [TP_Tinh], [DienThoaiKH], [MST]) VALUES (N'00019', N'Văn Thị Nữ', N'Phú Mỹ-Bà Rịa Vũng Tàu', N'Vũng Tàu', N'836412', NULL)
INSERT [dbo].[T_KhachHang] ([MaKH], [TenKH], [DiaChiKH], [TP_Tinh], [DienThoaiKH], [MST]) VALUES (N'00020', N'Ngô Quang Huy', N'Phước Thái-LT-ĐN', N'Đồng Nai', N'061 845211', NULL)
INSERT [dbo].[T_KhachHang] ([MaKH], [TenKH], [DiaChiKH], [TP_Tinh], [DienThoaiKH], [MST]) VALUES (N'00021', N'Phạm Thị Thanh Mai', N'Khu Văn Hải-Thị Trấn Long Thành', N'Đồng Nai', N'061 545612', NULL)
INSERT [dbo].[T_KhachHang] ([MaKH], [TenKH], [DiaChiKH], [TP_Tinh], [DienThoaiKH], [MST]) VALUES (N'00022', N'Văn Sỹ Hùng', N'QL15-BH-ĐN', N'Đồng Nai', N'061865147', NULL)
INSERT [dbo].[T_KhachHang] ([MaKH], [TenKH], [DiaChiKH], [TP_Tinh], [DienThoaiKH], [MST]) VALUES (N'00023', N'Nguyễn Văn Thanh', N'Phước Khánh-NT-ĐN', N'Đồng Nai', N'061 865291', NULL)
INSERT [dbo].[T_KhachHang] ([MaKH], [TenKH], [DiaChiKH], [TP_Tinh], [DienThoaiKH], [MST]) VALUES (N'00024', N'Quốc Anh Dũng', N'phú Mỹ-BR Vũng Tàu', N'Vũng Tàu', N'065 895632', NULL)
INSERT [dbo].[T_KhachHang] ([MaKH], [TenKH], [DiaChiKH], [TP_Tinh], [DienThoaiKH], [MST]) VALUES (N'00025', N'Mai Thị Thanh', N'Mỹ Xuân-BR Vũng Tàu', N'Vũng Tàu', NULL, NULL)
INSERT [dbo].[T_KhachHang] ([MaKH], [TenKH], [DiaChiKH], [TP_Tinh], [DienThoaiKH], [MST]) VALUES (N'00026', N'Thái Thị Thanh Trúc', N'Hố Nai-Biên Hòa', N'Biên Hòa', N'061 865123', NULL)
INSERT [dbo].[T_KhachHang] ([MaKH], [TenKH], [DiaChiKH], [TP_Tinh], [DienThoaiKH], [MST]) VALUES (N'00027', N'Quốc Thi Minh Tâm', N'An PhướcLT-ĐN', N'Đồng Nai', NULL, NULL)
INSERT [dbo].[T_KhachHang] ([MaKH], [TenKH], [DiaChiKH], [TP_Tinh], [DienThoaiKH], [MST]) VALUES (N'00028', N'Ông Quốc Dũng', N'An Phước-LT-ĐN', N'Đồng Nai', NULL, NULL)
INSERT [dbo].[T_KhachHang] ([MaKH], [TenKH], [DiaChiKH], [TP_Tinh], [DienThoaiKH], [MST]) VALUES (N'00029', N'Ngô Minh Tâm', N'Long Thọ-LT-ĐN', N'Đồng Nai', NULL, NULL)
INSERT [dbo].[T_KhachHang] ([MaKH], [TenKH], [DiaChiKH], [TP_Tinh], [DienThoaiKH], [MST]) VALUES (N'00030', N'Thái Ngọc Ninh', N'Khu Văn Hải-LT-ĐN', N'Đồng Nai', NULL, NULL)
INSERT [dbo].[T_KhachHang] ([MaKH], [TenKH], [DiaChiKH], [TP_Tinh], [DienThoaiKH], [MST]) VALUES (N'00031', N'Trương Chí Dũng', N'long Đức-LT-ĐN', N'Đồng Nai', NULL, NULL)
INSERT [dbo].[T_KhachHang] ([MaKH], [TenKH], [DiaChiKH], [TP_Tinh], [DienThoaiKH], [MST]) VALUES (N'00032', N'Vò Ngọc Minh', N'An Phước-LT-ĐN', N'Đồng Nai', NULL, NULL)
INSERT [dbo].[T_KhachHang] ([MaKH], [TenKH], [DiaChiKH], [TP_Tinh], [DienThoaiKH], [MST]) VALUES (N'00033', N'Nguyễn Ngọc Sơn', N'An Lợi-LT-ĐN', N'Đồng Nai', NULL, NULL)
INSERT [dbo].[T_KhachHang] ([MaKH], [TenKH], [DiaChiKH], [TP_Tinh], [DienThoaiKH], [MST]) VALUES (N'24544', N'Nguyễn Thị Hồng Loan', N'Phường Tân Biên', N'Biên Hoà - Đồng Nai', N'061986543', NULL)
GO
INSERT [dbo].[T_NhaCungCap] ([MaNCC], [TenNCC], [DiaChiNCC], [TP_Tinh], [DienThoaiNCC], [MST], [Web]) VALUES (N'0001', N'Công Ty TNHH Thiên Long', N'158 Bàn Cờ-Q3-TPHCM', N'TP.HCM', N'08 8358605', NULL, NULL)
INSERT [dbo].[T_NhaCungCap] ([MaNCC], [TenNCC], [DiaChiNCC], [TP_Tinh], [DienThoaiNCC], [MST], [Web]) VALUES (N'0002', N'Siêu Thị Máy Tính Nguyễn Hoàng', N'Phường Cư Trinh-Q1-TPHCM', N'TP.HCM', N'8489203404', NULL, NULL)
INSERT [dbo].[T_NhaCungCap] ([MaNCC], [TenNCC], [DiaChiNCC], [TP_Tinh], [DienThoaiNCC], [MST], [Web]) VALUES (N'0003', N'Công Ty TNHH Tân Bách Khoa', N'171-Quốc Lộ 1-Biên Hòa-ĐN', N'Biên Hòa - Đồng Nai', N'061 825880', NULL, NULL)
INSERT [dbo].[T_NhaCungCap] ([MaNCC], [TenNCC], [DiaChiNCC], [TP_Tinh], [DienThoaiNCC], [MST], [Web]) VALUES (N'0005', N'Dịch Vụ Tin Học A & T', N'14 Lê Văn Tám-TP Vũng Tàu', N'TP Vũng Tàu', N'64 530053', NULL, NULL)
INSERT [dbo].[T_NhaCungCap] ([MaNCC], [TenNCC], [DiaChiNCC], [TP_Tinh], [DienThoaiNCC], [MST], [Web]) VALUES (N'0006', N'Công Ty TNHH Thành Nhân', N'174 Bùi Thi Xuân-Q1-TPHCM', N'TP.HCM', N'8489250259', NULL, NULL)
INSERT [dbo].[T_NhaCungCap] ([MaNCC], [TenNCC], [DiaChiNCC], [TP_Tinh], [DienThoaiNCC], [MST], [Web]) VALUES (N'0007', N'Công Ty TNHH  CTC', N'112 Khu Phước Hải-LT-ĐN', N'Biên Hòa - Đồng Nai', N'061859600', NULL, NULL)
INSERT [dbo].[T_NhaCungCap] ([MaNCC], [TenNCC], [DiaChiNCC], [TP_Tinh], [DienThoaiNCC], [MST], [Web]) VALUES (N'0008', N'Công Ty TNHH Đông An', N'130 Khu Phước Long-LT-ĐN', N'Biên Hòa - Đồng Nai', N'061 845232', NULL, NULL)
GO
INSERT [dbo].[T_NhanVien] ([MaNV], [HoTen], [NgaySinh], [Phai], [ChucVu], [DiaChi], [TP_Tinh], [DienThoai]) VALUES (N'01', N'Phạm Thành Tài', CAST(N'1978-03-16T00:00:00.000' AS DateTime), 1, N'Trưởng Phòng', N'115 QL15-Phường Quyết Thắng-Biên Hòa', N'Đồng Nai', N'0918144523')
INSERT [dbo].[T_NhanVien] ([MaNV], [HoTen], [NgaySinh], [Phai], [ChucVu], [DiaChi], [TP_Tinh], [DienThoai]) VALUES (N'02', N'nguyễn thị MAI', CAST(N'1990-08-18T00:00:00.000' AS DateTime), 0, N'Quản lý', N'Hố Nai 1', N'Biên Hoà - Đồng Nai', N'061887569')
INSERT [dbo].[T_NhanVien] ([MaNV], [HoTen], [NgaySinh], [Phai], [ChucVu], [DiaChi], [TP_Tinh], [DienThoai]) VALUES (N'03', N'Huỳnh thái SANG', NULL, 1, N'Nhân viên', N'Tân Biên', N'Biên Hoà - Đồng Nai', N'(065)41346')
INSERT [dbo].[T_NhanVien] ([MaNV], [HoTen], [NgaySinh], [Phai], [ChucVu], [DiaChi], [TP_Tinh], [DienThoai]) VALUES (N'04', N'Mai thị bích tuyền', NULL, 0, N'Nhân viên', N'233/5 - KP8 Tân Biên', N'Biên Hoà - Đồng Nai', NULL)
INSERT [dbo].[T_NhanVien] ([MaNV], [HoTen], [NgaySinh], [Phai], [ChucVu], [DiaChi], [TP_Tinh], [DienThoai]) VALUES (N'05', N'NGUYỄN THỊ KIM CHI', NULL, 0, N'', N'230 Long Tân-NT-ĐN', N'Biên Hoà - Đồng Nai', N'061518477')
INSERT [dbo].[T_NhanVien] ([MaNV], [HoTen], [NgaySinh], [Phai], [ChucVu], [DiaChi], [TP_Tinh], [DienThoai]) VALUES (N'06', N'Nguyễn Tấn Trung', NULL, 1, N'Nhân Viên', N'1/02 QL51-LT-ĐN', N'Đồng Nai', N'061545789')
INSERT [dbo].[T_NhanVien] ([MaNV], [HoTen], [NgaySinh], [Phai], [ChucVu], [DiaChi], [TP_Tinh], [DienThoai]) VALUES (N'07', N'Nguyễn Võ Thị Mai', NULL, 0, N'Nhân Viên', N'Ap 1 An Phước-LT-ĐN', N'Đồng Nai', N'061841235')
INSERT [dbo].[T_NhanVien] ([MaNV], [HoTen], [NgaySinh], [Phai], [ChucVu], [DiaChi], [TP_Tinh], [DienThoai]) VALUES (N'08', N'Võ Minh Quân', NULL, 1, N'Nhân Viên', N'Thôn 3 Long Khánh-Đồng Nai', N'Đồng Nai', N'061826333')
GO
INSERT [dbo].[T_PhieuChi] ([MaPC], [MaNV], [MaNCC], [NgayChi], [SoTien]) VALUES (N'000001', N'02', N'0002', CAST(N'2004-02-03T00:00:00.000' AS DateTime), 40480)
INSERT [dbo].[T_PhieuChi] ([MaPC], [MaNV], [MaNCC], [NgayChi], [SoTien]) VALUES (N'000002', N'03', N'0006', CAST(N'2004-09-16T00:00:00.000' AS DateTime), 2000)
INSERT [dbo].[T_PhieuChi] ([MaPC], [MaNV], [MaNCC], [NgayChi], [SoTien]) VALUES (N'000003', N'06', N'0007', CAST(N'2004-10-23T00:00:00.000' AS DateTime), 1500)
INSERT [dbo].[T_PhieuChi] ([MaPC], [MaNV], [MaNCC], [NgayChi], [SoTien]) VALUES (N'000004', N'02', N'0002', CAST(N'2005-08-19T00:00:00.000' AS DateTime), 20000)
GO
INSERT [dbo].[T_PhieuThu] ([MaPTT], [MaKH], [NgayTT], [SoTienTT], [MaNV]) VALUES (N'0000000001', N'24544', CAST(N'2004-01-03T00:00:00.000' AS DateTime), 4600, N'02')
GO
USE [master]
GO
ALTER DATABASE [ctyXYZ] SET  READ_WRITE 
GO
