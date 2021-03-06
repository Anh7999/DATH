USE [Bus2]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 4/17/2021 9:35:13 PM ******/
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
/****** Object:  Table [dbo].[Ben]    Script Date: 4/17/2021 9:35:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ben](
	[MaBen] [int] IDENTITY(1,1) NOT NULL,
	[TenBen] [nvarchar](50) NULL,
	[lat] [varchar](50) NULL,
	[long] [varchar](50) NULL,
 CONSTRAINT [pk_Ben] PRIMARY KEY CLUSTERED 
(
	[MaBen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietLoTrinh]    Script Date: 4/17/2021 9:35:13 PM ******/
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
/****** Object:  Table [dbo].[ChiTietVeBan]    Script Date: 4/17/2021 9:35:13 PM ******/
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
/****** Object:  Table [dbo].[LoaiViPham]    Script Date: 4/17/2021 9:35:13 PM ******/
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
/****** Object:  Table [dbo].[TaiXe]    Script Date: 4/17/2021 9:35:13 PM ******/
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
/****** Object:  Table [dbo].[TuyenXe]    Script Date: 4/17/2021 9:35:13 PM ******/
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
/****** Object:  Table [dbo].[VeXe]    Script Date: 4/17/2021 9:35:13 PM ******/
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
/****** Object:  Table [dbo].[ViPham]    Script Date: 4/17/2021 9:35:13 PM ******/
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
/****** Object:  Table [dbo].[Xe]    Script Date: 4/17/2021 9:35:13 PM ******/
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

INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1, N'Công Trường Mê Linh(BD1)', N'10.7750378', N'106.7038201')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (2, N'Bến Bạch Đằng', N'10.7726011', N'106.7041854')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (3, N'Cục Hải Quan Thành Phố', N'10.7824454', N'106.7035155')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (4, N'Chợ Cũ', N'10.7718364', N'106.7009099')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (5, N'Trường Cao Thắng', N'10.7710483', N'106.6996643')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (6, N'Trạm Trung Chuyển Trên Đường Hàm Nghi', N'10.7710588', N'106.6996643')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (7, N'Bảo Tàng Mỹ Thuật', N'10.7698661', N'106.697141')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (8, N'Trường Ernst Thalmann', N'10.7690192', N'106.6934412')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (9, N'KTX Trần Hưng Đạo', N'10.7672313', N'106.6926473')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (10, N'Rạp Hưng Đạo', N'10.788425', N'106.604966')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (11, N'Bệnh Viện Răng Hàm Mặt', N'10.758014', N'106.6582581')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (12, N'Trần Đình Xu', N'10.761602', N'106.6876433')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (13, N'Tổng Cty Samco', N'10.7612208', N'106.6894366')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (14, N'Nguyển Biểu', N'10.7543661', N'106.6820212')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (15, N'Trường Cao Đẳng Kinh Tế Đôi NGoại', N'10.7544537', N'106.6491902')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (16, N'Trần Bình Trọng', N'10.754822', N'106.679532')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (17, N'Bệnh Viện Trấn Thương Chỉnh Hình', N'10.754172', N'106.6761446')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (18, N'Rạp Đồng Tháp', N'10.7542701', N'106.6739492')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (19, N'Rạp Đống Đa', N'10.7536328', N'106.6718466')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (20, N'Đồng Khánh', N'10.7531311', N'106.6696023')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (21, N'Nhà Văn Hóa Quận 5', N'10.7545027', N'106.657999')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (22, N'Ngô Quyền', N'10.7583171', N'106.6635976')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (23, N'Tản Đà', N'10.7540846', N'106.6618621')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (24, N' Triệu Quang Phục', N'10.7510512', N'106.6593057')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (25, N'Bưu Điện Quận 5', N'10.750228', N'106.6570593')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (26, N'Hải Thượng Lãn Ông', N'10.7508848', N'106.6588268')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (27, N'Chợ Kim Biên', N'10.7505136', N'106.6536936')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (28, N'Bến Xe Chợ Lớn(KT1)', N'10.751249', N'106.6490525')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (29, N'Bến Xe Buýt Sài Gòn(BD3)', N'10.7679037', N'106.6878735')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (30, N'Tôn Thất Tùng', N'10.7674323', N'106.6871233')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (31, N'Nguyễn Thị Nghĩa', N'10.7703196', N'106.6919109')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (32, N'Chợ Đường', N'10.8966825', N'106.6869557')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (33, N'Chùa Báo Ân', N'10.8988218', N'106.6885489')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (34, N'Cầu Phú Long', N'10.8894634', N'106.6911273')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (35, N'Cầu Ông Dung', N'10.8900327', N'106.6834174')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (36, N'Cây Xăng Thanh Bình', N'10.8672899', N'106.7272257')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (37, N'Trường Nguyễn Văn Thệ', N'10.8766872', N'106.6736911')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (38, N'Trường Điện Lực 2', N'10.8552696', N'106.6843102')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (39, N'Chợ Thạnh Xuân', N'10.8790845', N'106.675532')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (40, N'Ga ra Thanh Hậu', N'10.8655772', N'106.6101149')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (41, N'Vườn Kiếng Quang Dũng', N'10.8654113', N'106.6779673')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (42, N'Cây Xăng Tài Lộc', N'10.8683153', N'106.6761303')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (43, N'Đình Thần Giao Khẩu', N'10.8652302', N'106.6782859')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (44, N'Ngã Tư Ga', N'10.861311', N'106.6780057')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (45, N'Nhà Hàng Bến Xưa', N'10.8525832', N'106.675555')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (46, N'Cầu An Lộc', N'10.8503528', N'106.6764965')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (47, N'Bến Đò', N'11.1087214', N'106.5248207')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (48, N'Ngã Tư An Nhơn', N'11.0876173', N'106.4710113')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (49, N'Đài Liệt Sĩ', N'10.8608813', N'106.6900513')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (50, N'Cư Xá Lam Sơn', N'10.8266038', N'106.6449508')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (51, N'Ngã Tư Phan Văn Trị', N'10.8265005', N'106.6712158')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (52, N'Cầu Vượt Ngã Sáu Gò Vấp', N'10.8264743', N'106.6777819')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (53, N'Ngã Ba Phạm Ngũ Lão', N'10.765264', N'106.681431')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (54, N'Cầu Vượt Nguyễn Thái Sơn - Nguyễn Kiệm', N'10.813817', N'106.6760643')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (55, N'Trường Cao Đẳng Hảo Quan', N'10.8478849', N'106.7888239')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (56, N'Chùa Vạn Hạnh', N'10.8102887', N'106.6763619')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (57, N'Coop Mart Nguyễn Kiệm', N'10.8087023', N'106.6759265')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (58, N' Ngã Ba Hồ Văn Huê', N'10.8030399', N'106.6746021')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (59, N'Nhà Truyền Thông', N'10.8355169', N'106.6133867')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (60, N'Ngã Tư Phú Nhuận', N'10.7997183', N'106.6779493')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (61, N'Trường Cao Đẳng Kinh Tế Đối Ngoại', N'10.7996707', N'106.6828841')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (62, N'Chợ Phú Nhuận', N'10.7944314', N'106.6810602')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (63, N'Cầu Kiều', N'10.7925115', N'106.6839332')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (64, N'Chợ Tân Định', N'10.7898802', N'106.6878471')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (65, N'Nhà Thờ Tân ĐỊnh', N'10.7882705', N'106.688447')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (66, N'Công Viên Lê Văn Tám', N'10.7871793', N'106.6904643')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (67, N'Sở Công Thương', N'10.7841232', N'106.6940532')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (68, N'Bưu ĐIện Thành Phố', N'10.7798633', N'106.6977187')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (69, N'Bệnh Viện Nhi Đồng 2', N'10.7808477', N'106.7001303')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (70, N'Nhà Hát Thành Phố', N'10.7766405', N'106.7009767')
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

INSERT [dbo].[Xe] ([MaXe], [BienSo], [LoaiXe], [TinhTrangXe], [MaTuyen], [MaTaiXe], [lat], [long]) VALUES (1, N'51B-305.09', NULL, N'Đang Sử Dụng', 2, 1, N'10.7713448', N'106.6958658')
INSERT [dbo].[Xe] ([MaXe], [BienSo], [LoaiXe], [TinhTrangXe], [MaTuyen], [MaTaiXe], [lat], [long]) VALUES (3, N'51B-305.29', NULL, N'Đang Sử Dụng', 2, 3, N'10.7901463', N'106.7074553')
INSERT [dbo].[Xe] ([MaXe], [BienSo], [LoaiXe], [TinhTrangXe], [MaTuyen], [MaTaiXe], [lat], [long]) VALUES (5, N'51B-308.79', NULL, N'Đang Sử Dụng', 3, 3, N'10.7679037', N'106.6878735')
INSERT [dbo].[Xe] ([MaXe], [BienSo], [LoaiXe], [TinhTrangXe], [MaTuyen], [MaTaiXe], [lat], [long]) VALUES (6, NULL, NULL, NULL, 1, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Xe] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Ben__31C2674FCC931E22]    Script Date: 4/17/2021 9:35:13 PM ******/
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
