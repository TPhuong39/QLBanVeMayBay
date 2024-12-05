CREATE DATABASE DB_BanVeMayBay;
GO
USE DB_BanVeMayBay;
GO
/****** Object:  Table [dbo].[CHUYENBAY] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUYENBAY](
	[MaCB] [nchar](10) NOT NULL,
	[NoiDi] [nvarchar](250) NOT NULL,
	[NoiDen] [nvarchar](250) NOT NULL,
	[GioKhoiHanh] [datetime] NULL,
	[MaSBDi] [nchar](3) NOT NULL,
	[MaSBDen] [nchar](3) NOT NULL,
	[MaMB] [int] NOT NULL,
 CONSTRAINT [PK_CHUYENBAY] PRIMARY KEY CLUSTERED 
(
	[MaCB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTHD] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHD](
	[MaHD] [int] NOT NULL,
	[MaVe] [nchar](10) NOT NULL,
	[GiaTien] [int] NULL,
 CONSTRAINT [PK_CTHD] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ghe] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ghe](
	[MaGhe] [nchar](10) NOT NULL,
	[LoaiGhe] [nvarchar](50) NULL,
 CONSTRAINT [PK_Ghe] PRIMARY KEY CLUSTERED 
(
	[MaGhe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[NgayLap] [datetime] NOT NULL,
	[TongTien] [int] NULL,
	[MaKM] [nchar](10) NULL,
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHUYENMAI]******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHUYENMAI](
	[MaKM] [nchar](10) NOT NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[DieuKienSD] [nvarchar](250) NULL,
	[GiaTriKhuyenMai] [float] NOT NULL,
 CONSTRAINT [PK_KHUYENMAI] PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAYBAY]******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAYBAY](
	[MaMB] [int] NOT NULL,
	[LoaiMB] [nvarchar](50) NULL,
 CONSTRAINT [PK_MAYBAY] PRIMARY KEY CLUSTERED 
(
	[MaMB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [nchar](10) NOT NULL,
	[TenNV] [nvarchar](250) NOT NULL,
	[ChucVu] [nvarchar](250) NOT NULL,
	[SDT] [char](10) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[NgaySinh] [datetime] NOT NULL,
	[Luong] [int] NOT NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nchar](10) NOT NULL,
	[Password] [nchar](13) NOT NULL,
	[RoleName] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANBAY]******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANBAY](
	[MaSB] [nchar](3) NOT NULL,
	[TenTP] [nvarchar](250) NULL,
 CONSTRAINT [PK_SANBAY] PRIMARY KEY CLUSTERED 
(
	[MaSB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ve]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ve](
	[MaVe] [nchar](10) NOT NULL,
	[GiaTien] [int] NULL,
	[TrangThai] [int] NOT NULL,
	[MaGhe] [nchar](10) NOT NULL,
	[MaCB] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Ve_1] PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CHUYENBAY] ([MaCB], [NoiDi], [NoiDen], [GioKhoiHanh], [MaSBDi], [MaSBDen], [MaMB]) VALUES (N'CB01      ', N'H? Chí Minh', N'?à L?t', CAST(N'2023-10-28T12:35:57.000' AS DateTime), N'TSN', N'SDL', 320)
GO
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'A1        ', N'Vip')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'A2        ', N'Vip')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'A3        ', N'Vip')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'A4        ', N'Vip')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'B1        ', N'Vip')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'B2        ', N'Vip')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'B3        ', N'Vip')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'B4        ', N'Vip')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'C1        ', N'Vip')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'C2        ', N'Vip')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'C3        ', N'Vip')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'C4        ', N'Vip')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'D1        ', N'Vip')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'D2        ', N'Vip')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'D3        ', N'Vip')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'D4        ', N'Vip')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'E1        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'E2        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'E3        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'E4        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'F1        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'F2        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'F3        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'F4        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'G1        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'G2        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'G3        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'G4        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'H1        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'H2        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'H3        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'H4        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'I1        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'I2        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'I3        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'I4        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'K1        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'K2        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'K3        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'K4        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'L1        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'L2        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'L3        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'L4        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'M1        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'M2        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'M3        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'M4        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'N1        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'N2        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'N3        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'N4        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'O1        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'O2        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'O3        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'O4        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'P1        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'P2        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'P3        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'P4        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'Q1        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'Q2        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'Q3        ', N'Th??ng')
INSERT [dbo].[Ghe] ([MaGhe], [LoaiGhe]) VALUES (N'Q4        ', N'Th??ng')
GO
INSERT [dbo].[KHUYENMAI] ([MaKM], [NgayBatDau], [NgayKetThuc], [DieuKienSD], [GiaTriKhuyenMai]) VALUES (N'KM2       ', CAST(N'2023-10-24' AS Date), CAST(N'2023-11-30' AS Date), N'Mua 2 vé tr? lên', 600000)
INSERT [dbo].[KHUYENMAI] ([MaKM], [NgayBatDau], [NgayKetThuc], [DieuKienSD], [GiaTriKhuyenMai]) VALUES (N'KM3       ', CAST(N'2023-10-25' AS Date), CAST(N'2023-12-31' AS Date), N'Hoá ??n trên 1tr9', 200000)
GO
INSERT [dbo].[MAYBAY] ([MaMB], [LoaiMB]) VALUES (320, N'Airbus A320')
INSERT [dbo].[MAYBAY] ([MaMB], [LoaiMB]) VALUES (340, N'Airbus A340')
INSERT [dbo].[MAYBAY] ([MaMB], [LoaiMB]) VALUES (747, N'Boeing 747')
GO
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [ChucVu], [SDT], [DiaChi], [NgaySinh], [Luong]) VALUES (N'NV01      ', N'Nguy?n V?n Tèo', N'Nhân Viên Thu Ngân', N'0376657100', N'Q7,TPHCM', CAST(N'1998-07-14T09:47:30.000' AS DateTime), 7000000)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [ChucVu], [SDT], [DiaChi], [NgaySinh], [Luong]) VALUES (N'NV03      ', N'Nguy?n Minh Tu?n', N'Nhân Viên Thu Ngân', N'425563232 ', N'Gò V?p, TP.HCM', CAST(N'1997-08-07T00:00:00.000' AS DateTime), 12000000)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [ChucVu], [SDT], [DiaChi], [NgaySinh], [Luong]) VALUES (N'NV03QL    ', N'Nguy?n Téo', N'Qu?n Lý', N'0312246244', N'Q9,HCM', CAST(N'1996-09-12T00:00:00.000' AS DateTime), 18000000)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [ChucVu], [SDT], [DiaChi], [NgaySinh], [Luong]) VALUES (N'NV05      ', N'Nguy?n Minh Tu?n', N'Nhân Viên Thu Ngân', N'0425563232', N'Gò V?p, TP.HCM', CAST(N'1997-08-07T00:00:00.000' AS DateTime), 13000000)
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [Username], [Password], [RoleName]) VALUES (12, N'NV03      ', N'NV03         ', N'Nhân Viên                                         ')
INSERT [dbo].[Role] ([RoleID], [Username], [Password], [RoleName]) VALUES (13, N'NV03QL    ', N'NV03QL       ', N'Qu?n Lý                                           ')
INSERT [dbo].[Role] ([RoleID], [Username], [Password], [RoleName]) VALUES (14, N'NV01      ', N'NV01         ', N'Nhân Viên Thu Ngân                                ')
INSERT [dbo].[Role] ([RoleID], [Username], [Password], [RoleName]) VALUES (18, N'NV05      ', N'NV05         ', N'Nhân Viên Thu Ngân                                ')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
INSERT [dbo].[SANBAY] ([MaSB], [TenTP]) VALUES (N'SCR', N'Cam Ranh')
INSERT [dbo].[SANBAY] ([MaSB], [TenTP]) VALUES (N'SDL', N'?à L?t')
INSERT [dbo].[SANBAY] ([MaSB], [TenTP]) VALUES (N'SDN', N'?à N?ng')
INSERT [dbo].[SANBAY] ([MaSB], [TenTP]) VALUES (N'SHP', N'H?i Phòng')
INSERT [dbo].[SANBAY] ([MaSB], [TenTP]) VALUES (N'SHT', N'Hà T?nh')
INSERT [dbo].[SANBAY] ([MaSB], [TenTP]) VALUES (N'SNB', N'Hà N?i')
INSERT [dbo].[SANBAY] ([MaSB], [TenTP]) VALUES (N'SNT', N'Nha Trang')
INSERT [dbo].[SANBAY] ([MaSB], [TenTP]) VALUES (N'SPQ', N'Phú Qu?c')
INSERT [dbo].[SANBAY] ([MaSB], [TenTP]) VALUES (N'SSP', N'SaPa')
INSERT [dbo].[SANBAY] ([MaSB], [TenTP]) VALUES (N'STH', N'Thanh Hóa')
INSERT [dbo].[SANBAY] ([MaSB], [TenTP]) VALUES (N'TSN', N'H? Chí Minh')
GO
ALTER TABLE [dbo].[CHUYENBAY]  WITH CHECK ADD  CONSTRAINT [FK_CHUYENBAY_MAYBAY] FOREIGN KEY([MaMB])
REFERENCES [dbo].[MAYBAY] ([MaMB])
GO
ALTER TABLE [dbo].[CHUYENBAY] CHECK CONSTRAINT [FK_CHUYENBAY_MAYBAY]
GO
ALTER TABLE [dbo].[CHUYENBAY]  WITH CHECK ADD  CONSTRAINT [FK_CHUYENBAY_SANBAY] FOREIGN KEY([MaSBDi])
REFERENCES [dbo].[SANBAY] ([MaSB])
GO
ALTER TABLE [dbo].[CHUYENBAY] CHECK CONSTRAINT [FK_CHUYENBAY_SANBAY]
GO
ALTER TABLE [dbo].[CHUYENBAY]  WITH CHECK ADD  CONSTRAINT [FK_CHUYENBAY_SANBAY1] FOREIGN KEY([MaSBDen])
REFERENCES [dbo].[SANBAY] ([MaSB])
GO
ALTER TABLE [dbo].[CHUYENBAY] CHECK CONSTRAINT [FK_CHUYENBAY_SANBAY1]
GO
ALTER TABLE [dbo].[CTHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_HOADON] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HOADON] ([MaHD])
GO
ALTER TABLE [dbo].[CTHD] CHECK CONSTRAINT [FK_CTHD_HOADON]
GO
ALTER TABLE [dbo].[CTHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_Ve] FOREIGN KEY([MaVe])
REFERENCES [dbo].[Ve] ([MaVe])
GO
ALTER TABLE [dbo].[CTHD] CHECK CONSTRAINT [FK_CTHD_Ve]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_KHUYENMAI] FOREIGN KEY([MaKM])
REFERENCES [dbo].[KHUYENMAI] ([MaKM])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_KHUYENMAI]
GO
ALTER TABLE [dbo].[Role]  WITH CHECK ADD  CONSTRAINT [FK_Role_NHANVIEN1] FOREIGN KEY([Username])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[Role] CHECK CONSTRAINT [FK_Role_NHANVIEN1]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_CHUYENBAY] FOREIGN KEY([MaCB])
REFERENCES [dbo].[CHUYENBAY] ([MaCB])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_CHUYENBAY]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_Ghe] FOREIGN KEY([MaGhe])
REFERENCES [dbo].[Ghe] ([MaGhe])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_Ghe]
GO
