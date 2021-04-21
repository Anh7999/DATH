USE [Bus2]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 4/21/2021 12:20:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[MaTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[TenTaiKhoan] [varchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[QueQuan] [nvarchar](50) NULL,
	[SDT] [varchar](11) NULL,
	[GioiTinh] [bit] NULL,
	[NgaySinh] [datetime] NULL,
	[Access] [int] NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ben]    Script Date: 4/21/2021 12:20:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ben](
	[MaBen] [int] IDENTITY(1,1) NOT NULL,
	[TenBen] [nvarchar](50) NULL,
	[lat] [varchar](50) NULL,
	[long] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietLoTrinh]    Script Date: 4/21/2021 12:20:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietLoTrinh](
	[ThuTu] [int] NOT NULL,
	[MaTuyen] [int] NOT NULL,
	[MaBen] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTuyen] ASC,
	[MaBen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietVeBan]    Script Date: 4/21/2021 12:20:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietVeBan](
	[NgayBan] [datetime] NULL,
	[NgayHetHan] [datetime] NULL,
	[SoLuongVeBan] [int] NULL,
	[MaVe] [int] NOT NULL,
	[MaXe] [int] NOT NULL,
	[MaTaiKhoan] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC,
	[MaXe] ASC,
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichTrinh]    Script Date: 4/21/2021 12:20:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichTrinh](
	[NgayXuatBen] [datetime] NOT NULL,
	[MaTaiXe] [int] NOT NULL,
	[MaTuyen] [int] NOT NULL,
	[NgayHoanThanh] [datetime] NULL,
	[SoTuyen] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[NgayXuatBen] ASC,
	[MaTaiXe] ASC,
	[MaTuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiViPham]    Script Date: 4/21/2021 12:20:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiViPham](
	[MaLoaiViPham] [int] IDENTITY(1,1) NOT NULL,
	[TenViPham] [nvarchar](50) NULL,
	[HinhPhat] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiViPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiXe]    Script Date: 4/21/2021 12:20:54 PM ******/
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
PRIMARY KEY CLUSTERED 
(
	[MaTaiXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TuyenXe]    Script Date: 4/21/2021 12:20:54 PM ******/
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
PRIMARY KEY CLUSTERED 
(
	[MaTuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VeXe]    Script Date: 4/21/2021 12:20:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VeXe](
	[MaVe] [int] IDENTITY(1,1) NOT NULL,
	[LoaiVe] [nvarchar](50) NULL,
	[Gia] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ViPham]    Script Date: 4/21/2021 12:20:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ViPham](
	[MaViPham] [int] IDENTITY(1,1) NOT NULL,
	[NgayViPham] [datetime] NULL,
	[MaTaiXe] [int] NOT NULL,
	[MaLoaiViPham] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaViPham] ASC,
	[MaTaiXe] ASC,
	[MaLoaiViPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Xe]    Script Date: 4/21/2021 12:20:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Xe](
	[MaXe] [int] IDENTITY(1,1) NOT NULL,
	[BienSo] [varchar](50) NULL,
	[LoaiXe] [varchar](50) NULL,
	[TinhTrangXe] [nvarchar](500) NULL,
	[long] [varchar](50) NULL,
	[lat] [varchar](50) NULL,
	[MaTuyen] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([MaTaiKhoan], [HoTen], [TenTaiKhoan], [MatKhau], [Email], [QueQuan], [SDT], [GioiTinh], [NgaySinh], [Access], [Status]) VALUES (1, N'TrungAnh', N'anh', N'123456', N'anh@gmail.com', N'Hồ Chí Minh', N'123456789', 1, CAST(N'1999-07-09T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[Account] ([MaTaiKhoan], [HoTen], [TenTaiKhoan], [MatKhau], [Email], [QueQuan], [SDT], [GioiTinh], [NgaySinh], [Access], [Status]) VALUES (2, N'Đại Phước', N'phuoc', N'123456', N'phuoc@gmail.com', N'Hồ Chí Minh', N'123456789', 1, CAST(N'1999-12-09T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[Account] ([MaTaiKhoan], [HoTen], [TenTaiKhoan], [MatKhau], [Email], [QueQuan], [SDT], [GioiTinh], [NgaySinh], [Access], [Status]) VALUES (3, N'user', N'user', N'123456', N'user@gmail.com', N'Hồ Chí Minh', N'123456789', 1, CAST(N'1999-12-09T00:00:00.000' AS DateTime), 2, 2)
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
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1001, N'Bến Xe Bus Xài Gòn', N'10.7709595', N'106.6810598')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1005, N'Nam Kỳ Khởi Nghĩa', N'10.777273', N'106.6961443')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1006, N'Giao Lộ Hàm Nghi - Tôn Thất Đạm', N'10.7712536', N'106.6978987')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1007, N'Hồ Tùng Mậu', N'10.7717705', N'106.7017667')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1020, N'Thạnh Lộc', N'10.8681892', N'106.6882528')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1021, N'Bến Xe Bus Thạnh Lộc', N'10.8682154', N'106.6816867')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1025, N'Đền Thờ Ấn Giáo, Pasteur', N'10.7735468', N'106.6992001')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1026, N'Lê Thánh Tôn', N'10.7762805', N'106.6987906')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1027, N'Lý Tự Trọng', N'10.7771652', N'106.6981205')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1028, N'Lê Duẫn', N'10.7781924', N'106.6962784')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1029, N'Nguyễn Thị Minh Khai', N'10.7785426', N'106.6959468')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1030, N'Đại Học Kiến Trúc', N'10.7817167', N'106.6924185')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1031, N'Điện Biên Phủ', N'10.7941531', N'106.698454')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1032, N'Võ Thị Sáu', N'10.7847645', N'106.6867022')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1033, N'Nhà Thiếu Nhi Thành Phố', N'10.7837095', N'106.6865191')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1034, N'Viện Pasteur', N'10.7862433', N'106.6864822')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1035, N'Trần Quốc Toản', N'10.7874245', N'106.6861123')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1036, N'Lý Chính Thắng', N'10.7834128', N'106.6819051')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1037, N'Chùa Vĩnh Nghiêm', N'10.7903953', N'106.6800914')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1038, N'Ngã Tư Trần Huy Liệu', N'10.7932813', N'106.6769783')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1039, N'Trung Tâm Văn Hóa Quận Phú Nhuận', N'10.7955153', N'106.6739573')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1040, N'Cổng Xe Lửa', N'10.7906639', N'106.6694518')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1041, N'Bệnh Viện Quận Phú Nhuận', N'10.7982873', N'106.6685553')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1042, N'Cây Xăng Quân Khu 7', N'10.7993531', N'106.6671959')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1043, N'Cổng Trước SVĐ Quân Khu 7', N'10.8008636', N'106.6666831')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1044, N'Công Viên Hoàng Văn Thụ', N'10.8023453', N'106.6620722')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1045, N'Vòng Xoay Lăng Cha Cả', N'10.8017292', N'106.6604234')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1046, N'Siêu Thị Maximark Cộng Hòa', N'10.7885143', N'106.7634629')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1047, N'Nhà Hát Quân Đội', N'10.8012863', N'106.6545323')
GO
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1048, N'Ngân Hàng Quân Đội', N'10.8009203', N'106.6486079')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1049, N'Công Ty Lô Hội', N'10.8009775', N'106.6478062')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1050, N'Ngã Tư Hoàng Hoa Thám', N'10.8012416', N'106.6453164')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1051, N'Ngã Ba Bình Giã', N'10.7976536', N'106.6424463')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1052, N'ETown', N'10.8023997', N'106.6379601')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1053, N'Thượng Uyển', N'10.8296083', N'106.6300603')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1054, N'Mũi Tàu Cộng Hòa', N'10.8082993', N'106.6324615')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1055, N'Ngã Ba Chế Lan Viên', N'10.8114205', N'106.624863')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1056, N'UBND Phường 15', N'10.8185047', N'106.6295751')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1057, N'Khu Công Nghiệp Tân Bình', N'10.8230111', N'106.6272057')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1058, N'Cầu Tham Lương - Siêu Thị Thiên Hòa', N'10.8262158', N'106.6235449')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1059, N'Chùa Vĩnh Phước', N'10.8320924', N'106.6197423')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1060, N'Chùa Lạc Quang', N'10.8329663', N'106.6197424')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1061, N'Bitis', N'10.7962161', N'106.7305647')
INSERT [dbo].[Ben] ([MaBen], [TenBen], [lat], [long]) VALUES (1062, N'Bến Xe An Sương', N'10.8437429', N'106.6111841')
SET IDENTITY_INSERT [dbo].[Ben] OFF
GO
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (1, 2, 1)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (2, 2, 2)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (3, 2, 3)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (4, 2, 4)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (5, 2, 5)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (6, 2, 6)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (7, 2, 7)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (8, 2, 8)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (9, 2, 9)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (10, 2, 10)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (11, 2, 11)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (12, 2, 12)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (13, 2, 13)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (14, 2, 14)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (15, 2, 15)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (16, 2, 16)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (17, 2, 17)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (18, 2, 18)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (19, 2, 19)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (20, 2, 20)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (21, 2, 21)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (22, 2, 22)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (23, 2, 23)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (24, 2, 24)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (25, 2, 25)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (26, 2, 26)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (27, 2, 27)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (28, 2, 28)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (36, 3, 1)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (35, 3, 2)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (34, 3, 4)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (33, 3, 6)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (32, 3, 8)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (29, 3, 29)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (30, 3, 30)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (31, 3, 31)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (40, 3, 67)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (39, 3, 68)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (38, 3, 69)
INSERT [dbo].[ChiTietLoTrinh] ([ThuTu], [MaTuyen], [MaBen]) VALUES (37, 3, 70)
GO
INSERT [dbo].[ChiTietVeBan] ([NgayBan], [NgayHetHan], [SoLuongVeBan], [MaVe], [MaXe], [MaTaiKhoan]) VALUES (CAST(N'2021-04-21T00:00:00.000' AS DateTime), CAST(N'2021-05-21T00:00:00.000' AS DateTime), 1, 1, 3, 3)
GO
INSERT [dbo].[LichTrinh] ([NgayXuatBen], [MaTaiXe], [MaTuyen], [NgayHoanThanh], [SoTuyen]) VALUES (CAST(N'2021-04-21T00:00:00.000' AS DateTime), 1, 2, CAST(N'2021-04-21T00:00:00.000' AS DateTime), 40)
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

INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [ThoiGianBatDau], [ThoiGianKetThuc], [LoaiTuyen]) VALUES (1, N'MeTro1', CAST(N'05:30:00' AS Time), CAST(N'22:30:00' AS Time), N'Cố Định')
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [ThoiGianBatDau], [ThoiGianKetThuc], [LoaiTuyen]) VALUES (2, N'Tuyến Xe 01', CAST(N'05:00:00' AS Time), CAST(N'20:30:00' AS Time), N'Cố Định')
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [ThoiGianBatDau], [ThoiGianKetThuc], [LoaiTuyen]) VALUES (3, N'Tuyến Xe 03', CAST(N'04:55:00' AS Time), CAST(N'20:45:00' AS Time), N'Cố Định')
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [ThoiGianBatDau], [ThoiGianKetThuc], [LoaiTuyen]) VALUES (4, N'Tuyến Xe 04', CAST(N'05:30:00' AS Time), CAST(N'20:15:00' AS Time), N'Cố Định')
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [ThoiGianBatDau], [ThoiGianKetThuc], [LoaiTuyen]) VALUES (5, N'Tuyến Xe 05', CAST(N'05:00:00' AS Time), CAST(N'17:50:00' AS Time), N'Cố Định')
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [ThoiGianBatDau], [ThoiGianKetThuc], [LoaiTuyen]) VALUES (6, N'Tuyến Xe 06', CAST(N'04:55:00' AS Time), CAST(N'20:30:00' AS Time), N'Cố Định')
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [ThoiGianBatDau], [ThoiGianKetThuc], [LoaiTuyen]) VALUES (7, N'Tuyến Xe 07', CAST(N'05:00:00' AS Time), CAST(N'19:30:00' AS Time), N'Cố Định')
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [ThoiGianBatDau], [ThoiGianKetThuc], [LoaiTuyen]) VALUES (8, N'Tuyến Xe 08', CAST(N'04:40:00' AS Time), CAST(N'20:30:00' AS Time), N'Cố Định')
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [ThoiGianBatDau], [ThoiGianKetThuc], [LoaiTuyen]) VALUES (9, N'Tuyến Xe 09', CAST(N'05:25:00' AS Time), CAST(N'19:10:00' AS Time), N'Cố Định')
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [ThoiGianBatDau], [ThoiGianKetThuc], [LoaiTuyen]) VALUES (10, N'Tuyến Xe 10', CAST(N'05:00:00' AS Time), CAST(N'18:45:00' AS Time), N'Cố Định')
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

INSERT [dbo].[Xe] ([MaXe], [BienSo], [LoaiXe], [TinhTrangXe], [long], [lat], [MaTuyen]) VALUES (3, N'51B-305.09', NULL, N'Đang Sử Dụng', N'10.7731439', N'106.7005629', 2)
INSERT [dbo].[Xe] ([MaXe], [BienSo], [LoaiXe], [TinhTrangXe], [long], [lat], [MaTuyen]) VALUES (6, N'51B-305.29', NULL, N'Đang Sử Dụng', N'10.7731439', N'106.7074553', 2)
INSERT [dbo].[Xe] ([MaXe], [BienSo], [LoaiXe], [TinhTrangXe], [long], [lat], [MaTuyen]) VALUES (7, N'51B-308.79', NULL, N'Đang Sử Dụng', N'10.7679037', N'106.6878735', 3)
SET IDENTITY_INSERT [dbo].[Xe] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Ben__31C2674FF191D210]    Script Date: 4/21/2021 12:20:54 PM ******/
ALTER TABLE [dbo].[Ben] ADD UNIQUE NONCLUSTERED 
(
	[TenBen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietLoTrinh]  WITH CHECK ADD FOREIGN KEY([MaBen])
REFERENCES [dbo].[Ben] ([MaBen])
GO
ALTER TABLE [dbo].[ChiTietLoTrinh]  WITH CHECK ADD FOREIGN KEY([MaTuyen])
REFERENCES [dbo].[TuyenXe] ([MaTuyen])
GO
ALTER TABLE [dbo].[ChiTietVeBan]  WITH CHECK ADD FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[Account] ([MaTaiKhoan])
GO
ALTER TABLE [dbo].[ChiTietVeBan]  WITH CHECK ADD FOREIGN KEY([MaVe])
REFERENCES [dbo].[VeXe] ([MaVe])
GO
ALTER TABLE [dbo].[ChiTietVeBan]  WITH CHECK ADD FOREIGN KEY([MaXe])
REFERENCES [dbo].[Xe] ([MaXe])
GO
ALTER TABLE [dbo].[LichTrinh]  WITH CHECK ADD FOREIGN KEY([MaTaiXe])
REFERENCES [dbo].[TaiXe] ([MaTaiXe])
GO
ALTER TABLE [dbo].[LichTrinh]  WITH CHECK ADD FOREIGN KEY([MaTuyen])
REFERENCES [dbo].[TuyenXe] ([MaTuyen])
GO
ALTER TABLE [dbo].[ViPham]  WITH CHECK ADD FOREIGN KEY([MaLoaiViPham])
REFERENCES [dbo].[LoaiViPham] ([MaLoaiViPham])
GO
ALTER TABLE [dbo].[ViPham]  WITH CHECK ADD FOREIGN KEY([MaTaiXe])
REFERENCES [dbo].[TaiXe] ([MaTaiXe])
GO
ALTER TABLE [dbo].[Xe]  WITH CHECK ADD FOREIGN KEY([MaTuyen])
REFERENCES [dbo].[TuyenXe] ([MaTuyen])
GO
