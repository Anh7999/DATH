USE [Bus2]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 4/17/2021 7:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[MaTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[TenTaiKhoan] [varchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[QueQuan] [nvarchar](50) NULL,
	[SDT] [varchar](11) NULL,
	[GioiTinh] [bit] NULL,
	[NgaySinh] [datetime] NULL,
 CONSTRAINT [pk_Account] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ben]    Script Date: 4/17/2021 7:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ben](
	[MaBen] [int] IDENTITY(1,1) NOT NULL,
	[TenBen] [nvarchar](50) NULL,
 CONSTRAINT [pk_Ben] PRIMARY KEY CLUSTERED 
(
	[MaBen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietLoTrinh]    Script Date: 4/17/2021 7:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietLoTrinh](
	[ThuTu] [int] NOT NULL,
	[MaTuyen] [int] NOT NULL,
	[MaBen] [int] NOT NULL,
 CONSTRAINT [pk_ChiTietLoTrinh] PRIMARY KEY CLUSTERED 
(
	[MaTuyen] ASC,
	[MaBen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietVeBan]    Script Date: 4/17/2021 7:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietVeBan](
	[NgayBan] [datetime] NULL,
	[SoLuongVeBan] [int] NULL,
	[MaVe] [int] NOT NULL,
	[MaXe] [int] NOT NULL,
 CONSTRAINT [pk_ChiTietVeBan] PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC,
	[MaXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiViPham]    Script Date: 4/17/2021 7:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiViPham](
	[MaLoaiViPham] [int] IDENTITY(1,1) NOT NULL,
	[TenViPham] [nvarchar](50) NULL,
	[HinhPhat] [nvarchar](100) NULL,
 CONSTRAINT [pk_LoaiViPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiViPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiXe]    Script Date: 4/17/2021 7:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiXe](
	[MaTaiXe] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [bit] NULL,
	[SDT] [varchar](11) NULL,
	[Gmail] [varchar](50) NULL,
	[HinhAnh] [varchar](500) NULL,
	[QueQuan] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[NgayBatDauHopDong] [datetime] NULL,
	[NgayKetThucHopDong] [datetime] NULL,
	[Luong] [float] NULL,
	[BangLai] [nvarchar](50) NULL,
	[ChucVu] [nvarchar](50) NULL,
 CONSTRAINT [pk_TaiXe] PRIMARY KEY CLUSTERED 
(
	[MaTaiXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TuyenXe]    Script Date: 4/17/2021 7:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TuyenXe](
	[MaTuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenTuyen] [nvarchar](100) NULL,
	[ThoiGianBatDau] [time](7) NULL,
	[ThoiGianKetThuc] [time](7) NULL,
	[LoaiTuyen] [nvarchar](50) NOT NULL,
	[SoTuyen] [int] NOT NULL,
 CONSTRAINT [pk_TuyenXe] PRIMARY KEY CLUSTERED 
(
	[MaTuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VeXe]    Script Date: 4/17/2021 7:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VeXe](
	[MaVe] [int] IDENTITY(1,1) NOT NULL,
	[LoaiVe] [nvarchar](50) NULL,
	[Gia] [float] NULL,
 CONSTRAINT [pk_VeXe] PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ViPham]    Script Date: 4/17/2021 7:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ViPham](
	[MaViPham] [int] IDENTITY(1,1) NOT NULL,
	[NgayViPham] [datetime] NULL,
	[MaTaiXe] [int] NOT NULL,
	[MaLoaiViPham] [int] NOT NULL,
 CONSTRAINT [pk_ViPham] PRIMARY KEY CLUSTERED 
(
	[MaViPham] ASC,
	[MaTaiXe] ASC,
	[MaLoaiViPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Xe]    Script Date: 4/17/2021 7:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Xe](
	[MaXe] [int] IDENTITY(1,1) NOT NULL,
	[BienSo] [varchar](50) NULL,
	[LoaiXe] [varchar](50) NULL,
	[TinhTrangXe] [nvarchar](500) NULL,
	[MaTuyen] [int] NOT NULL,
	[MaTaiXe] [int] NOT NULL,
	[lat] [varchar](50) NULL,
	[long] [varchar](50) NULL,
 CONSTRAINT [pk_Xe] PRIMARY KEY CLUSTERED 
(
	[MaXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [Email], [QueQuan], [SDT], [GioiTinh], [NgaySinh]) VALUES (1, N'anh', N'123456', N'anh@gmail.com', N'Hồ Chí Minh', N'123456789', 1, CAST(N'1999-07-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Account] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [Email], [QueQuan], [SDT], [GioiTinh], [NgaySinh]) VALUES (2, N'phuoc', N'123456', N'phuoc@gmail.com', N'Hồ Chí Minh', N'123456789', 1, CAST(N'1999-12-09T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Ben] ON 

INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (58, N' Ngã Ba Hồ Văn Huê')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (24, N' Triệu Quang Phục')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (7, N'Bảo Tàng Mỹ Thuật')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (2, N'Bến Bạch Đằng')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (47, N'Bến Đò')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (29, N'Bến Xe Buýt Sài Gòn(BD3)')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (28, N'Bến Xe Chợ Lớn(KT1)')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (69, N'Bệnh Viện Nhi ĐỒng 2')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (11, N'Bệnh Viện Răng Hàm Mặt')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (17, N'Bệnh Viện Trấn Thương Chỉnh Hình')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (25, N'Bưu Điện Quận 5')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (68, N'Bưu ĐIện Thành Phố')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (46, N'Cầu An Lộc')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (63, N'Cầu Kiều')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (35, N'Cầu Ông Dung')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (34, N'Cầu Phú Long')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (52, N'Cầu Vượt Ngã Sáu Gò Vấp')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (54, N'Cầu Vượt Nguyễn Thái Sơn - Nguyễn Kiệm')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (42, N'Cây Xăng Tài Lộc')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (36, N'Cây Xăng Thanh Bình')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (4, N'Chợ Cũ')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (32, N'Chợ Đường')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (27, N'Chợ Kim Biên')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (62, N'Chợ Phú Nhuận')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (64, N'Chợ Tân Định')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (39, N'Chợ Thạnh Xuân')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (33, N'Chùa Báo Ân')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (56, N'Chùa Vạn Hạnh')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (1, N'Công Trường Mê Linh(BD1)')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (66, N'Công Viên Lê Văn Tám')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (57, N'Coop Mart Nguyễn Kiệm')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (50, N'Cư Xá Lam Sơn')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (3, N'Cục Hải Quan Thành Phố')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (49, N'Đài Liệt Sĩ')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (43, N'Đình Thần Giao Khẩu')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (20, N'Đồng Khánh')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (40, N'Ga ra Thanh Hậu')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (26, N'Hải Thượng Lãn Ông''')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (9, N'KTX Trần Hưng Đạo')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (53, N'Ngã Ba Phạm Ngũ Lão')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (48, N'Ngã Tư An Nhơn')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (44, N'Ngã Tư Ga')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (51, N'Ngã Tư Phan Văn Trị')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (60, N'Ngã Tư Phú Nhuận')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (22, N'Ngô Quyền')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (14, N'Nguyển Biểu')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (31, N'Nguyễn Thị Nghĩa')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (45, N'Nhà Hàng Bến Xưa')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (70, N'Nhà Hát Thành Phố')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (65, N'Nhà Thờ Tân ĐỊnh')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (59, N'Nhà Truyền Thông')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (21, N'Nhà Văn Hóa Quận 5')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (19, N'Rạp Đống Đa')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (18, N'Rạp Đồng Tháp')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (10, N'Rạp Hưng Đạo')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (67, N'Sở Công Thương')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (23, N'Tản Đà')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (30, N'Tôn Thất Tùng')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (13, N'Tổng Cty Samco')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (6, N'Trạm Trung Chuyển Trên Đường Hàm Nghi')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (16, N'Trần Bình Trọng')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (12, N'Trần Đình Xu')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (55, N'Trường Cao Đẳng Hảo Quan')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (15, N'Trường Cao Đẳng Kinh Tế Đôi NGoại')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (61, N'Trường Cao Đẳng Kinh Tế Đối Ngoại')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (5, N'Trường Cao Thắng')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (38, N'Trường Điện Lực 2')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (8, N'Trường Ernst Thalmann')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (37, N'Trường Nguyễn Văn Thệ')
INSERT [dbo].[Ben] ([MaBen], [TenBen]) VALUES (41, N'Vườn Kiếng Quang Dũng')
SET IDENTITY_INSERT [dbo].[Ben] OFF
GO
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (1, 1, 1)
GO
INSERT [dbo].[ChiTietVeBan] ([NgayBan], [SoLuongVeBan], [MaVe], [MaXe]) VALUES (CAST(N'2021-04-12T00:00:00.000' AS DateTime), 10, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[LoaiViPham] ON 

INSERT [dbo].[LoaiViPham] ([MaLoaiViPham], [TenViPham], [HinhPhat]) VALUES (1, N'Vượt Đền Đỏ', N'Cảnh Cáo')
INSERT [dbo].[LoaiViPham] ([MaLoaiViPham], [TenViPham], [HinhPhat]) VALUES (2, N'Bấm Điện Thoại Khi Di Chuyển', N'Trừ Lương')
SET IDENTITY_INSERT [dbo].[LoaiViPham] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiXe] ON 

INSERT [dbo].[TaiXe] ([MaTaiXe], [HoTen], [NgaySinh], [GioiTinh], [SDT], [Gmail], [HinhAnh], [QueQuan], [DiaChi], [NgayBatDauHopDong], [NgayKetThucHopDong], [Luong], [BangLai], [ChucVu]) VALUES (1, N'Nguyễn Đại Phước', CAST(N'1999-01-01T00:00:00.000' AS DateTime), 1, N'0967981541', N'daiphuoc@gmail.com', NULL, N'Hồ Chí Minh', N'Hồ Chí Minh', NULL, NULL, 8000000, N'B1', N'Tài Xế')
INSERT [dbo].[TaiXe] ([MaTaiXe], [HoTen], [NgaySinh], [GioiTinh], [SDT], [Gmail], [HinhAnh], [QueQuan], [DiaChi], [NgayBatDauHopDong], [NgayKetThucHopDong], [Luong], [BangLai], [ChucVu]) VALUES (2, N'Nguyễn Trung Anh', CAST(N'1999-01-01T00:00:00.000' AS DateTime), 1, N'0967981541', N'trunganh@gmail.com', NULL, N'Hồ Chí Minh', N'Hồ Chí Minh', NULL, NULL, 5000000, NULL, N'Phụ Xe')
INSERT [dbo].[TaiXe] ([MaTaiXe], [HoTen], [NgaySinh], [GioiTinh], [SDT], [Gmail], [HinhAnh], [QueQuan], [DiaChi], [NgayBatDauHopDong], [NgayKetThucHopDong], [Luong], [BangLai], [ChucVu]) VALUES (3, N'Nguyễn Văn A', CAST(N'1999-01-01T00:00:00.000' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Tài Xế')
SET IDENTITY_INSERT [dbo].[TaiXe] OFF
GO
SET IDENTITY_INSERT [dbo].[TuyenXe] ON 

INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [ThoiGianBatDau], [ThoiGianKetThuc], [LoaiTuyen], [SoTuyen]) VALUES (1, N'MeTro1', CAST(N'05:30:00' AS Time), CAST(N'22:30:00' AS Time), N'Cố Định', 50)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [ThoiGianBatDau], [ThoiGianKetThuc], [LoaiTuyen], [SoTuyen]) VALUES (2, N'Tuyến Xe 01', CAST(N'05:00:00' AS Time), CAST(N'20:30:00' AS Time), N'Cố Định', 50)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [ThoiGianBatDau], [ThoiGianKetThuc], [LoaiTuyen], [SoTuyen]) VALUES (3, N'Tuyến Xe 03', CAST(N'04:55:00' AS Time), CAST(N'20:45:00' AS Time), N'Cố Định', 50)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [ThoiGianBatDau], [ThoiGianKetThuc], [LoaiTuyen], [SoTuyen]) VALUES (4, N'Tuyến Xe 04', CAST(N'05:30:00' AS Time), CAST(N'20:15:00' AS Time), N'Cố Định', 50)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [ThoiGianBatDau], [ThoiGianKetThuc], [LoaiTuyen], [SoTuyen]) VALUES (5, N'Tuyến Xe 05', CAST(N'05:00:00' AS Time), CAST(N'17:50:00' AS Time), N'Cố Định', 50)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [ThoiGianBatDau], [ThoiGianKetThuc], [LoaiTuyen], [SoTuyen]) VALUES (6, N'Tuyến Xe 06', CAST(N'04:55:00' AS Time), CAST(N'20:30:00' AS Time), N'Cố Định', 50)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [ThoiGianBatDau], [ThoiGianKetThuc], [LoaiTuyen], [SoTuyen]) VALUES (7, N'Tuyến Xe 07', CAST(N'05:00:00' AS Time), CAST(N'19:30:00' AS Time), N'Cố Định', 50)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [ThoiGianBatDau], [ThoiGianKetThuc], [LoaiTuyen], [SoTuyen]) VALUES (8, N'Tuyến Xe 08', CAST(N'04:40:00' AS Time), CAST(N'20:30:00' AS Time), N'Cố Định', 50)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [ThoiGianBatDau], [ThoiGianKetThuc], [LoaiTuyen], [SoTuyen]) VALUES (9, N'Tuyến Xe 09', CAST(N'05:25:00' AS Time), CAST(N'19:10:00' AS Time), N'Cố Định', 50)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [ThoiGianBatDau], [ThoiGianKetThuc], [LoaiTuyen], [SoTuyen]) VALUES (10, N'Tuyến Xe 10', CAST(N'05:00:00' AS Time), CAST(N'18:45:00' AS Time), N'Cố Định', 50)
SET IDENTITY_INSERT [dbo].[TuyenXe] OFF
GO
SET IDENTITY_INSERT [dbo].[VeXe] ON 

INSERT [dbo].[VeXe] ([MaVe], [LoaiVe], [Gia]) VALUES (1, N'Vé Thường', 7000)
INSERT [dbo].[VeXe] ([MaVe], [LoaiVe], [Gia]) VALUES (2, N'Vé Học Sinh, Sinh Viên', 3000)
SET IDENTITY_INSERT [dbo].[VeXe] OFF
GO
SET IDENTITY_INSERT [dbo].[ViPham] ON 

INSERT [dbo].[ViPham] ([MaViPham], [NgayViPham], [MaTaiXe], [MaLoaiViPham]) VALUES (1, CAST(N'2021-04-12T00:00:00.000' AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[ViPham] OFF
GO
SET IDENTITY_INSERT [dbo].[Xe] ON 

INSERT [dbo].[Xe] ([MaXe], [BienSo], [LoaiXe], [TinhTrangXe], [MaTuyen], [MaTaiXe], [lat], [long]) VALUES (1, N'51B-305.09', NULL, N'Đang Sử Dụng', 2, 1, NULL, NULL)
INSERT [dbo].[Xe] ([MaXe], [BienSo], [LoaiXe], [TinhTrangXe], [MaTuyen], [MaTaiXe], [lat], [long]) VALUES (3, N'51B-305.29', NULL, N'Đang Sử Dụng', 2, 3, NULL, NULL)
INSERT [dbo].[Xe] ([MaXe], [BienSo], [LoaiXe], [TinhTrangXe], [MaTuyen], [MaTaiXe], [lat], [long]) VALUES (5, N'51B-308.79', NULL, N'Đang Sử Dụng', 3, 3, NULL, NULL)
INSERT [dbo].[Xe] ([MaXe], [BienSo], [LoaiXe], [TinhTrangXe], [MaTuyen], [MaTaiXe], [lat], [long]) VALUES (6, NULL, NULL, NULL, 1, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Xe] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Ben__31C2674FCC931E22]    Script Date: 4/17/2021 7:43:58 PM ******/
ALTER TABLE [dbo].[Ben] ADD UNIQUE NONCLUSTERED 
(
	[TenBen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietLoTrinh]  WITH CHECK ADD  CONSTRAINT [Relationship8] FOREIGN KEY([MaTuyen])
REFERENCES [dbo].[TuyenXe] ([MaTuyen])
GO
ALTER TABLE [dbo].[ChiTietLoTrinh] CHECK CONSTRAINT [Relationship8]
GO
ALTER TABLE [dbo].[ChiTietLoTrinh]  WITH CHECK ADD  CONSTRAINT [Relationship9] FOREIGN KEY([MaBen])
REFERENCES [dbo].[Ben] ([MaBen])
GO
ALTER TABLE [dbo].[ChiTietLoTrinh] CHECK CONSTRAINT [Relationship9]
GO
ALTER TABLE [dbo].[ChiTietVeBan]  WITH CHECK ADD  CONSTRAINT [Relationship14] FOREIGN KEY([MaVe])
REFERENCES [dbo].[VeXe] ([MaVe])
GO
ALTER TABLE [dbo].[ChiTietVeBan] CHECK CONSTRAINT [Relationship14]
GO
ALTER TABLE [dbo].[ChiTietVeBan]  WITH CHECK ADD  CONSTRAINT [Relationship15] FOREIGN KEY([MaXe])
REFERENCES [dbo].[Xe] ([MaXe])
GO
ALTER TABLE [dbo].[ChiTietVeBan] CHECK CONSTRAINT [Relationship15]
GO
ALTER TABLE [dbo].[ViPham]  WITH CHECK ADD  CONSTRAINT [Relationship16] FOREIGN KEY([MaTaiXe])
REFERENCES [dbo].[TaiXe] ([MaTaiXe])
GO
ALTER TABLE [dbo].[ViPham] CHECK CONSTRAINT [Relationship16]
GO
ALTER TABLE [dbo].[ViPham]  WITH CHECK ADD  CONSTRAINT [Relationship17] FOREIGN KEY([MaLoaiViPham])
REFERENCES [dbo].[LoaiViPham] ([MaLoaiViPham])
GO
ALTER TABLE [dbo].[ViPham] CHECK CONSTRAINT [Relationship17]
GO
ALTER TABLE [dbo].[Xe]  WITH CHECK ADD  CONSTRAINT [Relationship5] FOREIGN KEY([MaTuyen])
REFERENCES [dbo].[TuyenXe] ([MaTuyen])
GO
ALTER TABLE [dbo].[Xe] CHECK CONSTRAINT [Relationship5]
GO
ALTER TABLE [dbo].[Xe]  WITH CHECK ADD  CONSTRAINT [Relationship7] FOREIGN KEY([MaTaiXe])
REFERENCES [dbo].[TaiXe] ([MaTaiXe])
GO
ALTER TABLE [dbo].[Xe] CHECK CONSTRAINT [Relationship7]
GO
