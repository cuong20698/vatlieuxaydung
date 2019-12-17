USE [SHOPVATLIEU]
GO
/****** Object:  Table [dbo].[DanhMucSP]    Script Date: 12/17/2019 09:21:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucSP](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[HoatDong] [bit] NULL,
 CONSTRAINT [PK_DanhMucSP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DanhMucSP] ON
INSERT [dbo].[DanhMucSP] ([ID], [Name], [HoatDong]) VALUES (10, N'Vật liệu thô', 1)
INSERT [dbo].[DanhMucSP] ([ID], [Name], [HoatDong]) VALUES (11, N'Gạch Block', 1)
INSERT [dbo].[DanhMucSP] ([ID], [Name], [HoatDong]) VALUES (12, N'Bồn nước INOX', 1)
INSERT [dbo].[DanhMucSP] ([ID], [Name], [HoatDong]) VALUES (13, N'Gạch trang trí cao cấp', 1)
INSERT [dbo].[DanhMucSP] ([ID], [Name], [HoatDong]) VALUES (14, N'Ngói lợp', 1)
INSERT [dbo].[DanhMucSP] ([ID], [Name], [HoatDong]) VALUES (15, N'Đá tự nhiên', 1)
INSERT [dbo].[DanhMucSP] ([ID], [Name], [HoatDong]) VALUES (16, N'Ống nước', 1)
INSERT [dbo].[DanhMucSP] ([ID], [Name], [HoatDong]) VALUES (17, N'Gạch men', 1)
INSERT [dbo].[DanhMucSP] ([ID], [Name], [HoatDong]) VALUES (18, N'Keo dán gạch đá', 1)
SET IDENTITY_INSERT [dbo].[DanhMucSP] OFF
/****** Object:  Table [dbo].[SanPham]    Script Date: 12/17/2019 09:21:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[ID] [bigint] NOT NULL,
	[TenSP] [nvarchar](100) NULL,
	[Gia] [float] NULL,
	[DVT] [varchar](50) NULL,
	[HinhAnh] [varchar](200) NULL,
	[Mota] [nvarchar](500) NULL,
	[GiaKhuyenMai] [float] NULL,
	[SoLuong] [bigint] NULL,
	[LoaiSP] [nvarchar](100) NULL,
	[HoatDong] [bit] NULL,
	[SPNoiBat] [bit] NULL,
	[SPBanChay] [bit] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[SanPham] ([ID], [TenSP], [Gia], [DVT], [HinhAnh], [Mota], [GiaKhuyenMai], [SoLuong], [LoaiSP], [HoatDong], [SPNoiBat], [SPBanChay]) VALUES (1, N'Cát tô trắng', 550, N'Kg', N'cattotrang.jpg', N'Cát trắng không chỉ được sử dụng để làm kính, đúc khuôn mẫu mà nó còn là một loại nguyên liệu rất được ưu chuộng trong công tác xây tô, thi công xây dựng hiện nay.', 450, 1000, N'Vật liệu thô', 1, 1, 0)
INSERT [dbo].[SanPham] ([ID], [TenSP], [Gia], [DVT], [HinhAnh], [Mota], [GiaKhuyenMai], [SoLuong], [LoaiSP], [HoatDong], [SPNoiBat], [SPBanChay]) VALUES (2, N'Gạch ống 8x18', 1000, N'Viên', N'gachong.jpg', N'Mã sản phẩm: G02 Tên: Gạch 4 lỗ 8 x 18 Trọng lượng: 1.2 kg Kích thước: 80 x 80 x180 mm Thông số khác: Giá bán lẻ công bố (giao hàng tại xí nghiệp 2 - KCN Biên Hòa 1): 1.100 đồng/viên', 0, 1000, N'Vật liệu thô', 1, 1, 0)
INSERT [dbo].[SanPham] ([ID], [TenSP], [Gia], [DVT], [HinhAnh], [Mota], [GiaKhuyenMai], [SoLuong], [LoaiSP], [HoatDong], [SPNoiBat], [SPBanChay]) VALUES (3, N'
Gạch bông gió vuông', 22000, N'Viên', N'gachbong.jpg', N'Tên SP: Gạch bông gió xi măng vuông H-014
- Kích thước: 19x19x6.5 cm
- Số lượng: 25 viên/m2
- Trọng lượng: 3.4 - 3.6 kg/viên
- Màu sắc: Màu xám đen hoặc màu trắng.', 16000, 1000, N'Gạch Block', 1, 1, 0)
INSERT [dbo].[SanPham] ([ID], [TenSP], [Gia], [DVT], [HinhAnh], [Mota], [GiaKhuyenMai], [SoLuong], [LoaiSP], [HoatDong], [SPNoiBat], [SPBanChay]) VALUES (4, N'Bồn Inox Tân Á Đại Thành 1000L', 3550000, N'Cái', N'vlxd1.jpg', N'Tên SP: Bồn nước inox Tân Á Đại Thành 1000 lít.
- Dung tích: 1000 lít.
- Kích thước bồn đứng: 960x1750 mm
- Kích thước bồn ngang: 1.445x1.090x990 mm.
- Bảo hành: 12 năm', 2720000, 100, N'Bồn nước INOX', 1, 1, 0)
INSERT [dbo].[SanPham] ([ID], [TenSP], [Gia], [DVT], [HinhAnh], [Mota], [GiaKhuyenMai], [SoLuong], [LoaiSP], [HoatDong], [SPNoiBat], [SPBanChay]) VALUES (5, N'Gạch cổ bìa 7x22', 290000, N'Thùng', N'gachcobia.jpg', N'Gạch cổ cắt bìa 7x22 cm hay còn gọi là gạch thẻ cổ Pháp 7x22.
- Kích thước: 70x220 mm. Độ dày: 2.5 cm.
- Số lượng: 56 viên/m2.
- Chất liệu: gạch thẻ đất nung được thu gom từ các công', 260000, 100, N'Gạch trang trí cao cấp', 1, 0, 0)
INSERT [dbo].[SanPham] ([ID], [TenSP], [Gia], [DVT], [HinhAnh], [Mota], [GiaKhuyenMai], [SoLuong], [LoaiSP], [HoatDong], [SPNoiBat], [SPBanChay]) VALUES (6, N'Ngói màu Ruby - Màu xanh đen', 19500, N'Viên', N'ngoimau.jpg', N'Tên SP: Ngói màu Nhật Bản Ruby RD09 - Màu xanh đen.
- Kích thước: 425 x 340 mm
- Màu sắc: màu xanh đen hay màu xanh mực đậm.
- Số lượng: 9 viên/m2.
- Trọng lượng: 3,7 kg/viên.', 17800, 1000, N'Ngói lợp', 1, 0, 0)
INSERT [dbo].[SanPham] ([ID], [TenSP], [Gia], [DVT], [HinhAnh], [Mota], [GiaKhuyenMai], [SoLuong], [LoaiSP], [HoatDong], [SPNoiBat], [SPBanChay]) VALUES (7, N'Đá cubic tổ ong xám 10x10x5 cm', 3600, N'Viên', N'dacubi.jpg', N'Tên sản phẩm: Đá cubic tổ ong xám
- Kích thước: 10x10x5 cm.
- Số lượng: 100 viên/m2
- Màu sắc: Màu đen xám.
- Chất liệu: hoàn toàn bằng đá tự nhiên nguyên khối', 3300, 1000, N'Đá tự nhiên', 1, 0, 0)
INSERT [dbo].[SanPham] ([ID], [TenSP], [Gia], [DVT], [HinhAnh], [Mota], [GiaKhuyenMai], [SoLuong], [LoaiSP], [HoatDong], [SPNoiBat], [SPBanChay]) VALUES (8, N'Ống nhựa uPVC', 1000, N'm2', N'ongnhua.jpg', N'Ống nhựa uPVC tại Đà Nẵng, sản xuất theo tiêu chuẩn quốc tế và tiêu chuẩn của Việt Nam như sau: Tiêu chuẩn Việt Nam: TCVN 6144, TCVN 6036, TCVN 6145...', 0, 1000, N'Ống nước', 1, 0, 0)
INSERT [dbo].[SanPham] ([ID], [TenSP], [Gia], [DVT], [HinhAnh], [Mota], [GiaKhuyenMai], [SoLuong], [LoaiSP], [HoatDong], [SPNoiBat], [SPBanChay]) VALUES (9, N'Gạch Viglacera ốp tường', 275000, N'm2', N'gachviga.jpg', N'Nhà phân phối gạch ốp tường trang trí Viglacera GW 3602 tại Đà Nẵng, Hội An và Miền Trung, Tây Nguyên. Giao hàng tận nơi. Gọi báo giá ngay 0935090252', 215000, 100, N'Gạch men', 1, 0, 0)
INSERT [dbo].[SanPham] ([ID], [TenSP], [Gia], [DVT], [HinhAnh], [Mota], [GiaKhuyenMai], [SoLuong], [LoaiSP], [HoatDong], [SPNoiBat], [SPBanChay]) VALUES (10, N'Keo chà ron Cá sấu đỏ Thái Lan', 60000, N'Kg', N'keocha.jpg', N'Nhà phân phối keo chà ron chít mạch Cá Sấu đỏ Thái Lan tại Đà Nẵng và Miền Trung, Tây Nguyên. Giao hàng tận nơi. Báo giá keo chà ron cá sấu đỏ, gọi 0935090252', 50000, 100, N'Keo dán gạch đá', 1, 0, 0)
INSERT [dbo].[SanPham] ([ID], [TenSP], [Gia], [DVT], [HinhAnh], [Mota], [GiaKhuyenMai], [SoLuong], [LoaiSP], [HoatDong], [SPNoiBat], [SPBanChay]) VALUES (11, N'Đá mài bóng bông trắng 7,5x22', 160000, N'm2', N'damai.jpg', N'Tên SP: Đá mài bóng bông trắng 7.5x22
- Kích thước: 7,5x22 cm.
- Số lượng: 60 viên/m2.
- Chất liệu: Đá tự nhiên, đá thiên nhiên.
- Bề mặt: mài bóng mờ hay mài hone.', 130000, 100, N'Đá tự nhiên', 1, 0, 0)
INSERT [dbo].[SanPham] ([ID], [TenSP], [Gia], [DVT], [HinhAnh], [Mota], [GiaKhuyenMai], [SoLuong], [LoaiSP], [HoatDong], [SPNoiBat], [SPBanChay]) VALUES (12, N'Bồn nước Inox Sơn Hà 1000 lít', 3080000, N'Cái', N'vlxd.jpg', N'Nhà phân phối bồn nước inox Sơn Hà 1000 lít giá rẻ tại Đà Nẵng, Hội An, Quảng Nam. Giao hàng tận nơi. Gọi ngay 0935090252 để được báo giá tốt nhất', 2820000, 100, N'Bồn nước INOX', 1, 0, 0)
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 12/17/2019 09:21:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[TenND] [nvarchar](50) NULL,
	[Email] [varchar](100) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[SDT] [char](11) NULL,
	[IDGroup] [int] NULL,
	[HoatDong] [bit] NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[NguoiDung] ON
INSERT [dbo].[NguoiDung] ([ID], [UserName], [Password], [TenND], [Email], [DiaChi], [SDT], [IDGroup], [HoatDong]) VALUES (1, N'cuong', N'123', N'võ việt cường', N'vovietcuongcntt39b@gmail.com', N'Bình Ðịnh', N'0339723399 ', 1, 0)
INSERT [dbo].[NguoiDung] ([ID], [UserName], [Password], [TenND], [Email], [DiaChi], [SDT], [IDGroup], [HoatDong]) VALUES (2, N'trieu', N'123', N'Nguyễn Thị Triều', N'thitrieu272@gmail.com', N'Bình Định', N'0387254477 ', 0, 1)
INSERT [dbo].[NguoiDung] ([ID], [UserName], [Password], [TenND], [Email], [DiaChi], [SDT], [IDGroup], [HoatDong]) VALUES (4, N'vietcuong', N'123', N'viet cuong', N'cuong@gmail.com', N'Bình Ð?nh', N'0339723399 ', 0, 1)
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
/****** Object:  Table [dbo].[LienHe]    Script Date: 12/17/2019 09:21:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LienHe](
	[ID] [bigint] NOT NULL,
	[TenCTy] [nvarchar](250) NULL,
	[Mota] [nvarchar](500) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[Tel] [varchar](50) NULL,
	[Fax] [varchar](50) NULL,
	[HotLine] [varchar](50) NULL,
	[Email] [varchar](150) NULL,
 CONSTRAINT [PK_LienHe] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/17/2019 09:21:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[TenKH] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [bit] NULL,
	[Email] [varchar](100) NULL,
	[SDT] [varchar](50) NULL,
	[DiaChi] [nvarchar](250) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 12/17/2019 09:21:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[ID] [bigint] NOT NULL,
	[MaKH] [bigint] NULL,
	[ThanhTien] [float] NULL,
	[TrangThai] [bit] NULL,
	[NgayLap] [datetime] NULL,
	[NgayGiao] [datetime] NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 12/17/2019 09:21:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [float] NULL,
	[ThanhTien] [float] NULL,
	[MaSP] [bigint] NULL,
	[MaDH] [bigint] NULL,
 CONSTRAINT [PK_ChiTietGioHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_DanhMucSP_HoatDong]    Script Date: 12/17/2019 09:21:34 ******/
ALTER TABLE [dbo].[DanhMucSP] ADD  CONSTRAINT [DF_DanhMucSP_HoatDong]  DEFAULT ((1)) FOR [HoatDong]
GO
/****** Object:  Default [DF_DonHang_TrangThai]    Script Date: 12/17/2019 09:21:34 ******/
ALTER TABLE [dbo].[DonHang] ADD  CONSTRAINT [DF_DonHang_TrangThai]  DEFAULT ((0)) FOR [TrangThai]
GO
/****** Object:  Default [DF_DonHang_NgayLap]    Script Date: 12/17/2019 09:21:34 ******/
ALTER TABLE [dbo].[DonHang] ADD  CONSTRAINT [DF_DonHang_NgayLap]  DEFAULT (getdate()) FOR [NgayLap]
GO
/****** Object:  Default [DF_KhachHang_GioiTinh]    Script Date: 12/17/2019 09:21:34 ******/
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [DF_KhachHang_GioiTinh]  DEFAULT ((1)) FOR [GioiTinh]
GO
/****** Object:  Default [DF_NguoiDung_IDGroup]    Script Date: 12/17/2019 09:21:34 ******/
ALTER TABLE [dbo].[NguoiDung] ADD  CONSTRAINT [DF_NguoiDung_IDGroup]  DEFAULT ((0)) FOR [IDGroup]
GO
/****** Object:  Default [DF_NguoiDung_HoatDong]    Script Date: 12/17/2019 09:21:34 ******/
ALTER TABLE [dbo].[NguoiDung] ADD  CONSTRAINT [DF_NguoiDung_HoatDong]  DEFAULT ((1)) FOR [HoatDong]
GO
/****** Object:  Default [DF_SanPham_GiaKhuyenMai]    Script Date: 12/17/2019 09:21:34 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_GiaKhuyenMai]  DEFAULT ((0)) FOR [GiaKhuyenMai]
GO
/****** Object:  Default [DF_SanPham_HoatDong]    Script Date: 12/17/2019 09:21:34 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_HoatDong]  DEFAULT ((1)) FOR [HoatDong]
GO
/****** Object:  Default [DF_SanPham_SPNoiBat]    Script Date: 12/17/2019 09:21:34 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_SPNoiBat]  DEFAULT ((0)) FOR [SPNoiBat]
GO
/****** Object:  Default [DF_SanPham_SPBanChay]    Script Date: 12/17/2019 09:21:34 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_SPBanChay]  DEFAULT ((0)) FOR [SPBanChay]
GO
/****** Object:  ForeignKey [FK_ChiTietDonHang_DonHang]    Script Date: 12/17/2019 09:21:34 ******/
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([ID])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang]
GO
/****** Object:  ForeignKey [FK_ChiTietGioHang_SanPham]    Script Date: 12/17/2019 09:21:34 ******/
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietGioHang_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([ID])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietGioHang_SanPham]
GO
/****** Object:  ForeignKey [FK_DonHang_KhachHang]    Script Date: 12/17/2019 09:21:34 ******/
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([ID])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhachHang]
GO
