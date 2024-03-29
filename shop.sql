USE [Shop]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 4/11/2022 6:35:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[IdBinhLuan] [int] IDENTITY(1,1) NOT NULL,
	[TitleText] [ntext] NULL,
	[Text] [ntext] NULL,
	[sao] [int] NULL,
	[Create_date] [datetime] NULL,
	[IdKh] [int] NULL,
	[IdSp] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdBinhLuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 4/11/2022 6:35:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[IdKH] [int] NOT NULL,
	[IdSp] [int] NOT NULL,
	[Size] [nchar](10) NOT NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[IdKH] ASC,
	[IdSp] ASC,
	[Size] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDH]    Script Date: 4/11/2022 6:35:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDH](
	[IdDH] [int] NOT NULL,
	[IdSp] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[GiamGia] [int] NULL,
	[Tien] [money] NULL,
	[Size] [nchar](10) NOT NULL,
 CONSTRAINT [PK_ChiTietDH] PRIMARY KEY CLUSTERED 
(
	[IdDH] ASC,
	[IdSp] ASC,
	[Size] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHD]    Script Date: 4/11/2022 6:35:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHD](
	[IdHD] [int] NOT NULL,
	[IdSp] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[GiamGia] [int] NULL,
	[Tien] [money] NULL,
	[Size] [nchar](10) NOT NULL,
 CONSTRAINT [PK_ChiTietHD] PRIMARY KEY CLUSTERED 
(
	[IdHD] ASC,
	[IdSp] ASC,
	[Size] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietSp]    Script Date: 4/11/2022 6:35:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSp](
	[IdSp] [int] NOT NULL,
	[Size] [nchar](10) NOT NULL,
	[SoLuong] [int] NULL,
	[GiamGia] [int] NULL,
	[DoDai] [nvarchar](50) NULL,
	[Tien] [money] NULL,
 CONSTRAINT [PK_ChiTietSp] PRIMARY KEY CLUSTERED 
(
	[IdSp] ASC,
	[Size] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatHang]    Script Date: 4/11/2022 6:35:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatHang](
	[IdDH] [int] IDENTITY(1,1) NOT NULL,
	[IdKh] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[SDT] [decimal](19, 0) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[TinhThanh] [nvarchar](50) NULL,
	[QuanHuyen] [nvarchar](50) NULL,
	[PhuongXa] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](100) NULL,
	[TrangThai] [nvarchar](20) NULL,
	[Create_date] [datetime] NULL,
	[Tien] [money] NULL,
 CONSTRAINT [PK__tmp_ms_x__B77398AACAD5D93A] PRIMARY KEY CLUSTERED 
(
	[IdDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 4/11/2022 6:35:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[IdHD] [int] IDENTITY(1,1) NOT NULL,
	[IdKh] [int] NULL,
	[TongTien] [money] NULL,
	[Create_date] [datetime] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[IdDH] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/11/2022 6:35:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[IdKh] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Email] [nvarchar](200) NULL,
	[Password] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdKh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 4/11/2022 6:35:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[IdLoaisp] [int] IDENTITY(1,1) NOT NULL,
	[TenLsp] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdLoaisp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 4/11/2022 6:35:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[IdSp] [int] NOT NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[Tien] [money] NULL,
	[GiamGia] [bigint] NULL,
	[Image] [nvarchar](100) NULL,
	[ImageHover] [nvarchar](100) NULL,
	[SoLuong] [int] NULL,
	[ThongTin] [ntext] NULL,
	[Create_date] [datetime] NULL,
	[IdLoaiSp] [int] NOT NULL,
	[HinhDang] [nvarchar](50) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[IdSp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham_Anh]    Script Date: 4/11/2022 6:35:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham_Anh](
	[IdSp] [int] NOT NULL,
	[Image] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_SanPhamAnh] PRIMARY KEY CLUSTERED 
(
	[IdSp] ASC,
	[Image] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BinhLuan] ON 

INSERT [dbo].[BinhLuan] ([IdBinhLuan], [TitleText], [Text], [sao], [Create_date], [IdKh], [IdSp]) VALUES (1, N'I love it, wanna buy more', N'I am very satisfied with the product. Thanks shop.', 5, CAST(N'2022-03-31T00:00:00.000' AS DateTime), 1, 11)
INSERT [dbo].[BinhLuan] ([IdBinhLuan], [TitleText], [Text], [sao], [Create_date], [IdKh], [IdSp]) VALUES (2, N'Cheap price, high quality', N'I am not satisfied with the product. Shop is very enthusiastic. Thanks.', 5, CAST(N'2022-03-31T20:38:12.153' AS DateTime), 3, 11)
INSERT [dbo].[BinhLuan] ([IdBinhLuan], [TitleText], [Text], [sao], [Create_date], [IdKh], [IdSp]) VALUES (3, N'Fast shipping', N'I am very satisfied with the product. Thanks shop.', 5, CAST(N'2022-03-31T20:38:22.903' AS DateTime), 2, 13)
SET IDENTITY_INSERT [dbo].[BinhLuan] OFF
GO
INSERT [dbo].[Cart] ([IdKH], [IdSp], [Size], [SoLuong]) VALUES (1, 2, N'S         ', 3)
GO
INSERT [dbo].[ChiTietDH] ([IdDH], [IdSp], [SoLuong], [GiamGia], [Tien], [Size]) VALUES (1, 11, 1, 0, 89.5000, N'S         ')
INSERT [dbo].[ChiTietDH] ([IdDH], [IdSp], [SoLuong], [GiamGia], [Tien], [Size]) VALUES (2, 13, 1, 0, 85.0000, N'L         ')
INSERT [dbo].[ChiTietDH] ([IdDH], [IdSp], [SoLuong], [GiamGia], [Tien], [Size]) VALUES (3, 18, 1, 0, 520.0000, N'M         ')
INSERT [dbo].[ChiTietDH] ([IdDH], [IdSp], [SoLuong], [GiamGia], [Tien], [Size]) VALUES (10, 2, 1, 0, 85.0000, N'S         ')
GO
INSERT [dbo].[ChiTietHD] ([IdHD], [IdSp], [SoLuong], [GiamGia], [Tien], [Size]) VALUES (1, 11, 1, 0, NULL, N'S         ')
INSERT [dbo].[ChiTietHD] ([IdHD], [IdSp], [SoLuong], [GiamGia], [Tien], [Size]) VALUES (2, 13, 1, 0, NULL, N'L         ')
INSERT [dbo].[ChiTietHD] ([IdHD], [IdSp], [SoLuong], [GiamGia], [Tien], [Size]) VALUES (3, 11, 1, 0, NULL, N'S         ')
INSERT [dbo].[ChiTietHD] ([IdHD], [IdSp], [SoLuong], [GiamGia], [Tien], [Size]) VALUES (8, 18, 1, 0, NULL, N'M         ')
GO
INSERT [dbo].[ChiTietSp] ([IdSp], [Size], [SoLuong], [GiamGia], [DoDai], [Tien]) VALUES (1, N'M         ', 10, 0, N'M30', 89.5000)
INSERT [dbo].[ChiTietSp] ([IdSp], [Size], [SoLuong], [GiamGia], [DoDai], [Tien]) VALUES (2, N'S         ', 9, 0, N'M25', 85.0000)
INSERT [dbo].[ChiTietSp] ([IdSp], [Size], [SoLuong], [GiamGia], [DoDai], [Tien]) VALUES (3, N'L         ', 10, 0, N'54x48', 520.0000)
INSERT [dbo].[ChiTietSp] ([IdSp], [Size], [SoLuong], [GiamGia], [DoDai], [Tien]) VALUES (4, N'M         ', 9, 0, N'30x39', 420.0000)
INSERT [dbo].[ChiTietSp] ([IdSp], [Size], [SoLuong], [GiamGia], [DoDai], [Tien]) VALUES (5, N'M         ', 11, 0, N'40x38', 139.0000)
INSERT [dbo].[ChiTietSp] ([IdSp], [Size], [SoLuong], [GiamGia], [DoDai], [Tien]) VALUES (6, N'S         ', 20, 0, N'M20', 119.0000)
INSERT [dbo].[ChiTietSp] ([IdSp], [Size], [SoLuong], [GiamGia], [DoDai], [Tien]) VALUES (7, N'L         ', 2, 0, N'M50', 454.0000)
INSERT [dbo].[ChiTietSp] ([IdSp], [Size], [SoLuong], [GiamGia], [DoDai], [Tien]) VALUES (8, N'M         ', 3, 0, N'M30', 189.5000)
INSERT [dbo].[ChiTietSp] ([IdSp], [Size], [SoLuong], [GiamGia], [DoDai], [Tien]) VALUES (9, N'M         ', 5, 0, N'M46', 65.0000)
INSERT [dbo].[ChiTietSp] ([IdSp], [Size], [SoLuong], [GiamGia], [DoDai], [Tien]) VALUES (10, N'S         ', 12, 0, N'M34', 92.5000)
INSERT [dbo].[ChiTietSp] ([IdSp], [Size], [SoLuong], [GiamGia], [DoDai], [Tien]) VALUES (11, N'S         ', 11, 0, N'M30  ', 50.0000)
INSERT [dbo].[ChiTietSp] ([IdSp], [Size], [SoLuong], [GiamGia], [DoDai], [Tien]) VALUES (12, N'M         ', 11, 0, N'80x60     ', 295.0000)
INSERT [dbo].[ChiTietSp] ([IdSp], [Size], [SoLuong], [GiamGia], [DoDai], [Tien]) VALUES (13, N'L         ', 4, 0, N'160x60    ', 195.0000)
INSERT [dbo].[ChiTietSp] ([IdSp], [Size], [SoLuong], [GiamGia], [DoDai], [Tien]) VALUES (14, N'S         ', 7, 0, N'60x30     ', 205.0000)
INSERT [dbo].[ChiTietSp] ([IdSp], [Size], [SoLuong], [GiamGia], [DoDai], [Tien]) VALUES (15, N'M         ', 9, 0, N'100x60    ', 180.0000)
INSERT [dbo].[ChiTietSp] ([IdSp], [Size], [SoLuong], [GiamGia], [DoDai], [Tien]) VALUES (16, N'M         ', 9, 0, N'100x60    ', 92.5000)
INSERT [dbo].[ChiTietSp] ([IdSp], [Size], [SoLuong], [GiamGia], [DoDai], [Tien]) VALUES (17, N'M         ', 10, 0, N'M80       ', 225.0000)
INSERT [dbo].[ChiTietSp] ([IdSp], [Size], [SoLuong], [GiamGia], [DoDai], [Tien]) VALUES (18, N'M         ', 11, 0, N'80x60     ', 285.0000)
INSERT [dbo].[ChiTietSp] ([IdSp], [Size], [SoLuong], [GiamGia], [DoDai], [Tien]) VALUES (19, N'S         ', 10, 0, N'M60       ', 155.0000)
INSERT [dbo].[ChiTietSp] ([IdSp], [Size], [SoLuong], [GiamGia], [DoDai], [Tien]) VALUES (20, N'S         ', 5, 0, N'M60       ', 125.0000)
GO
SET IDENTITY_INSERT [dbo].[DatHang] ON 

INSERT [dbo].[DatHang] ([IdDH], [IdKh], [Name], [SDT], [DiaChi], [TinhThanh], [QuanHuyen], [PhuongXa], [GhiChu], [TrangThai], [Create_date], [Tien]) VALUES (1, 1, NULL, NULL, NULL, N'Ha Noi', N'Huyện Thường Tín', N'Xã Nghiêm Xuyên', NULL, NULL, CAST(N'2022-04-10T09:58:52.190' AS DateTime), NULL)
INSERT [dbo].[DatHang] ([IdDH], [IdKh], [Name], [SDT], [DiaChi], [TinhThanh], [QuanHuyen], [PhuongXa], [GhiChu], [TrangThai], [Create_date], [Tien]) VALUES (2, 2, NULL, NULL, NULL, N'Ha Noi', N'Quận Cầu Giấy', N'Phường Nghĩa Tân', NULL, NULL, CAST(N'2022-04-10T09:58:53.857' AS DateTime), NULL)
INSERT [dbo].[DatHang] ([IdDH], [IdKh], [Name], [SDT], [DiaChi], [TinhThanh], [QuanHuyen], [PhuongXa], [GhiChu], [TrangThai], [Create_date], [Tien]) VALUES (3, 3, NULL, NULL, NULL, N'Ha Noi', N'Quận Ba Đình', N'Phường Phúc Xá', NULL, NULL, CAST(N'2022-04-10T09:58:55.033' AS DateTime), NULL)
INSERT [dbo].[DatHang] ([IdDH], [IdKh], [Name], [SDT], [DiaChi], [TinhThanh], [QuanHuyen], [PhuongXa], [GhiChu], [TrangThai], [Create_date], [Tien]) VALUES (4, 4, NULL, NULL, NULL, N'Ha Noi', N'Quận Hà Đông', N'Phường Nguyễn Trãi', NULL, NULL, CAST(N'2022-04-10T09:58:56.733' AS DateTime), NULL)
INSERT [dbo].[DatHang] ([IdDH], [IdKh], [Name], [SDT], [DiaChi], [TinhThanh], [QuanHuyen], [PhuongXa], [GhiChu], [TrangThai], [Create_date], [Tien]) VALUES (10, 2, N'DSAF', CAST(12 AS Decimal(19, 0)), N'SDF', N'FSF', N'FSF', N'SDFS', N'SF', N'Tiếp nhận', CAST(N'2022-04-10T18:11:01.027' AS DateTime), 85.0000)
SET IDENTITY_INSERT [dbo].[DatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([IdHD], [IdKh], [TongTien], [Create_date], [DiaChi], [IdDH]) VALUES (1, 1, 89.5000, CAST(N'2022-03-31T00:00:00.000' AS DateTime), N'Xã Nghiêm Xuyên, Huyện Thường Tín, Hà Nội', 1)
INSERT [dbo].[HoaDon] ([IdHD], [IdKh], [TongTien], [Create_date], [DiaChi], [IdDH]) VALUES (2, 2, 85.0000, CAST(N'2022-03-31T20:33:04.133' AS DateTime), N'Phường Nghĩa Tân, Quận Cầu Giấy, Hà Nội', 2)
INSERT [dbo].[HoaDon] ([IdHD], [IdKh], [TongTien], [Create_date], [DiaChi], [IdDH]) VALUES (3, 3, 520.0000, CAST(N'2022-03-31T00:00:00.000' AS DateTime), N'Phường Phúc Xá, Quận Ba Đình, Hà Nội', 3)
INSERT [dbo].[HoaDon] ([IdHD], [IdKh], [TongTien], [Create_date], [DiaChi], [IdDH]) VALUES (8, 4, 89.5000, CAST(N'2022-03-31T00:00:00.000' AS DateTime), N'Phường Nguyễn Trãi, Quận Hà Đông,Hà Nội', 4)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([IdKh], [FirstName], [LastName], [Email], [Password]) VALUES (1, N'Nguyen', N'Hang', N'hang@gmail.com', N'25f9e794323b453885f5181f1b624d0b')
INSERT [dbo].[KhachHang] ([IdKh], [FirstName], [LastName], [Email], [Password]) VALUES (2, N'Chu', N'Mai', N'Mai@gmail.com', N'25f9e794323b453885f5181f1b624d0b')
INSERT [dbo].[KhachHang] ([IdKh], [FirstName], [LastName], [Email], [Password]) VALUES (3, N'Vu', N'Hien', N'Hien@gmail.com', N'25f9e794323b453885f5181f1b624d0b')
INSERT [dbo].[KhachHang] ([IdKh], [FirstName], [LastName], [Email], [Password]) VALUES (4, N'Tran', N'Dai', N'Dai@gmail.com', N'25f9e794323b453885f5181f1b624d0b')
INSERT [dbo].[KhachHang] ([IdKh], [FirstName], [LastName], [Email], [Password]) VALUES (5, N'Min', N'Han', N'Han@gmail.com', N'25f9e794323b453885f5181f1b624d0b')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([IdLoaisp], [TenLsp]) VALUES (1, N'Standing Mirror')
INSERT [dbo].[LoaiSanPham] ([IdLoaisp], [TenLsp]) VALUES (2, N'Hanging Mirror')
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
INSERT [dbo].[SanPham] ([IdSp], [TenSanPham], [Tien], [GiamGia], [Image], [ImageHover], [SoLuong], [ThongTin], [Create_date], [IdLoaiSp], [HinhDang]) VALUES (1, N'Slim Oak Frame Mirror', 89.5000, 10, N'Slim Oak Frame Mirror.jpg', N'Slim Oak Frame Mirror 2.jpg', 9, N'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil', CAST(N'2022-03-31T00:00:00.000' AS DateTime), 2, N'Circle')
INSERT [dbo].[SanPham] ([IdSp], [TenSanPham], [Tien], [GiamGia], [Image], [ImageHover], [SoLuong], [ThongTin], [Create_date], [IdLoaiSp], [HinhDang]) VALUES (2, N'Unframed Round Table Mirror', 85.0000, 0, N'Unframed Round Table Mirror.jpg', N'Unframed Round Table Mirror 1.jpg', 9, N'The garments labelled as Committed are products that have been produced using sustainable fibers or processes, reducing their environmental impact. Mango''s goal is to support the implementation of practices more committed to the environment, and therefore increase the number of sustainable garments in the collection.', CAST(N'2022-03-31T00:00:00.000' AS DateTime), 2, N'Circle')
INSERT [dbo].[SanPham] ([IdSp], [TenSanPham], [Tien], [GiamGia], [Image], [ImageHover], [SoLuong], [ThongTin], [Create_date], [IdLoaiSp], [HinhDang]) VALUES (3, N'Floor Standing Mirror', 520.0000, 0, N'Floor Standing Mirror.jpg', N'Floor Standing Mirror 2.jpg', 9, N'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil', CAST(N'2022-03-31T00:00:00.000' AS DateTime), 1, N'Retangular')
INSERT [dbo].[SanPham] ([IdSp], [TenSanPham], [Tien], [GiamGia], [Image], [ImageHover], [SoLuong], [ThongTin], [Create_date], [IdLoaiSp], [HinhDang]) VALUES (4, N'Three-piece Arc Mirror', 420.0000, 0, N'Three-piece Arc Mirror.jpg', N'Three-piece Arc Mirror 2.jpg', 8, N'The garments labelled as Committed are products that have been produced using sustainable fibers or processes, reducing their environmental impact. Mango''s goal is to support the implementation of practices more committed to the environment, and therefore increase the number of sustainable garments in the collection.', CAST(N'2022-03-31T00:00:00.000' AS DateTime), 1, N'Retangular')
INSERT [dbo].[SanPham] ([IdSp], [TenSanPham], [Tien], [GiamGia], [Image], [ImageHover], [SoLuong], [ThongTin], [Create_date], [IdLoaiSp], [HinhDang]) VALUES (5, N'Wall Storage Mirror', 139.0000, 0, N'Wall Storage Mirror.jpg', N'Wall Storage Mirror 2.jpg', 10, N'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil', CAST(N'2022-03-31T00:00:00.000' AS DateTime), 2, N'Retangular')
INSERT [dbo].[SanPham] ([IdSp], [TenSanPham], [Tien], [GiamGia], [Image], [ImageHover], [SoLuong], [ThongTin], [Create_date], [IdLoaiSp], [HinhDang]) VALUES (6, N'Full Round Oak Mirror', 119.0000, 0, N'Full Round Oak Mirror.jpg', N'Full Round Oak Mirror 2.jpg', 19, N'The garments labelled as Committed are products that have been produced using sustainable fibers or processes, reducing their environmental impact. Mango''s goal is to support the implementation of practices more committed to the environment, and therefore increase the number of sustainable garments in the collection.', CAST(N'2022-03-31T00:00:00.000' AS DateTime), 2, N'Circle')
INSERT [dbo].[SanPham] ([IdSp], [TenSanPham], [Tien], [GiamGia], [Image], [ImageHover], [SoLuong], [ThongTin], [Create_date], [IdLoaiSp], [HinhDang]) VALUES (7, N'Aethestic Floor Mirror', 454.0000, 0, N'Aethestic Floor Mirror.jpg', N'Aethestic Floor Mirror 2.jpg', 1, N'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil', CAST(N'2022-03-31T00:00:00.000' AS DateTime), 2, N'Circle')
INSERT [dbo].[SanPham] ([IdSp], [TenSanPham], [Tien], [GiamGia], [Image], [ImageHover], [SoLuong], [ThongTin], [Create_date], [IdLoaiSp], [HinhDang]) VALUES (8, N'Decorative Circle Mirror', 189.5000, 0, N'Decorative Circle Mirror.jpg', N'Decorative Circle Mirror 1.jpg', 2, N'The garments labelled as Committed are products that have been produced using sustainable fibers or processes, reducing their environmental impact. Mango''s goal is to support the implementation of practices more committed to the environment, and therefore increase the number of sustainable garments in the collection.', CAST(N'2022-03-31T00:00:00.000' AS DateTime), 2, N'Circle')
INSERT [dbo].[SanPham] ([IdSp], [TenSanPham], [Tien], [GiamGia], [Image], [ImageHover], [SoLuong], [ThongTin], [Create_date], [IdLoaiSp], [HinhDang]) VALUES (9, N'Decorative Sunburst Mirror', 65.0000, 0, N'Decorative Sunburst Mirror.jpg', N'Decorative Sunburst Mirror 2.jpg', 4, N'This accent mirror helps to open up your space and bounce light around, making it an ideal addition to any room, above your bathroom vanity, or in your entryway', CAST(N'2022-03-31T00:00:00.000' AS DateTime), 2, N'Circle')
INSERT [dbo].[SanPham] ([IdSp], [TenSanPham], [Tien], [GiamGia], [Image], [ImageHover], [SoLuong], [ThongTin], [Create_date], [IdLoaiSp], [HinhDang]) VALUES (10, N'Black Round Mirror Shelf', 92.5000, 0, N'Black Round Mirror Shelf.jpg', N'Black Round Mirror Shelf 1.jpg', 11, N'This accent mirror helps to open up your space and bounce light around, making it an ideal addition to any room, above your bathroom vanity, or in your entryway', CAST(N'2022-03-31T00:00:00.000' AS DateTime), 2, N'Circle')
INSERT [dbo].[SanPham] ([IdSp], [TenSanPham], [Tien], [GiamGia], [Image], [ImageHover], [SoLuong], [ThongTin], [Create_date], [IdLoaiSp], [HinhDang]) VALUES (11, N'Sliver Vanity Mirror', 50.0000, 0, N'Silver Vanity Mirror.jpg', N'Silver Vanity Mirror_1.jpg', 10, N'This accent mirror helps to open up your space and bounce light around, making it an ideal addition to any room, above your bathroom vanity, or in your entryway', CAST(N'2022-03-31T00:00:00.000' AS DateTime), 1, N'Circle ')
INSERT [dbo].[SanPham] ([IdSp], [TenSanPham], [Tien], [GiamGia], [Image], [ImageHover], [SoLuong], [ThongTin], [Create_date], [IdLoaiSp], [HinhDang]) VALUES (12, N'Folding Oak Table Mirror', 295.0000, 0, N'Folding Oak Table Mirror.jpg', N'Folding Oak Table Mirror_1.jpg', 10, N'This accent mirror helps to open up your space and bounce light around, making it an ideal addition to any room, above your bathroom vanity, or in your entryway', CAST(N'2022-03-31T00:00:00.000' AS DateTime), 1, N'Rectangular')
INSERT [dbo].[SanPham] ([IdSp], [TenSanPham], [Tien], [GiamGia], [Image], [ImageHover], [SoLuong], [ThongTin], [Create_date], [IdLoaiSp], [HinhDang]) VALUES (13, N'Full Length Dress Mirror', 195.0000, 0, N'Full Length Dress Mirror.jpg', N'Full Length Dress Mirror_1.jpg', 3, N'This accent mirror helps to open up your space and bounce light around, making it an ideal addition to any room, above your bathroom vanity, or in your entryway', CAST(N'2022-03-31T00:00:00.000' AS DateTime), 2, N'Rectangular')
INSERT [dbo].[SanPham] ([IdSp], [TenSanPham], [Tien], [GiamGia], [Image], [ImageHover], [SoLuong], [ThongTin], [Create_date], [IdLoaiSp], [HinhDang]) VALUES (14, N'Portrait Mirror', 205.0000, 0, N'Portrait Mirror.jpg', N'Portrait Mirror_1.jpg', 6, N'This accent mirror helps to open up your space and bounce light around, making it an ideal addition to any room, above your bathroom vanity, or in your entryway', CAST(N'2022-03-31T00:00:00.000' AS DateTime), 2, N'Circle ')
INSERT [dbo].[SanPham] ([IdSp], [TenSanPham], [Tien], [GiamGia], [Image], [ImageHover], [SoLuong], [ThongTin], [Create_date], [IdLoaiSp], [HinhDang]) VALUES (15, N'Landscape Mirror Shelf', 180.0000, 0, N'Landscape Mirror Shelf.jpg', N'Landscape Mirror Shelf_1.jpg', 8, N'This accent mirror helps to open up your space and bounce light around, making it an ideal addition to any room, above your bathroom vanity, or in your entryway', CAST(N'2022-03-31T00:00:00.000' AS DateTime), 2, N'Circle ')
INSERT [dbo].[SanPham] ([IdSp], [TenSanPham], [Tien], [GiamGia], [Image], [ImageHover], [SoLuong], [ThongTin], [Create_date], [IdLoaiSp], [HinhDang]) VALUES (16, N'Brown Mirror Shetf', 92.5000, 0, N'Brown Mirror Shelf.jpg', N'Brown Mirror Shelf_1.jpg', 8, N'This accent mirror helps to open up your space and bounce light around, making it an ideal addition to any room, above your bathroom vanity, or in your entryway', CAST(N'2022-03-31T00:00:00.000' AS DateTime), 2, N'Circle ')
INSERT [dbo].[SanPham] ([IdSp], [TenSanPham], [Tien], [GiamGia], [Image], [ImageHover], [SoLuong], [ThongTin], [Create_date], [IdLoaiSp], [HinhDang]) VALUES (17, N'Two- piece Gold Mirror', 225.0000, 0, N'Two-piece Gold Mirror.jpg', N'Two-piece Gold Mirror_1.jpg', 9, N'This accent mirror helps to open up your space and bounce light around, making it an ideal addition to any room, above your bathroom vanity, or in your entryway', CAST(N'2022-03-31T00:00:00.000' AS DateTime), 2, N'Circle ')
INSERT [dbo].[SanPham] ([IdSp], [TenSanPham], [Tien], [GiamGia], [Image], [ImageHover], [SoLuong], [ThongTin], [Create_date], [IdLoaiSp], [HinhDang]) VALUES (18, N'Folding Dressing Table Mirror', 285.0000, 0, N'Folding Dressing Table Mirror.jpg', N'Folding Dressing Table Mirror_1.jpg', 10, N'This accent mirror helps to open up your space and bounce light around, making it an ideal addition to any room, above your bathroom vanity, or in your entryway', CAST(N'2022-03-31T00:00:00.000' AS DateTime), 1, N'Rectangular')
INSERT [dbo].[SanPham] ([IdSp], [TenSanPham], [Tien], [GiamGia], [Image], [ImageHover], [SoLuong], [ThongTin], [Create_date], [IdLoaiSp], [HinhDang]) VALUES (19, N'Round Slim Frame Mirror', 155.0000, 0, N'Round Slim Frame Mirror.jpg', N'Round Slim Frame Mirror_1.jpg', 9, N'This accent mirror helps to open up your space and bounce light around, making it an ideal addition to any room, above your bathroom vanity, or in your entryway', CAST(N'2022-03-31T00:00:00.000' AS DateTime), 2, N'Circle ')
INSERT [dbo].[SanPham] ([IdSp], [TenSanPham], [Tien], [GiamGia], [Image], [ImageHover], [SoLuong], [ThongTin], [Create_date], [IdLoaiSp], [HinhDang]) VALUES (20, N'Round Oak Slice Mirror', 125.0000, 0, N'Round Oak Slice Mirror.jpg', N'Round Oak Slice Mirror_1.jpg', 4, N'This accent mirror helps to open up your space and bounce light around, making it an ideal addition to any room, above your bathroom vanity, or in your entryway', CAST(N'2022-03-31T00:00:00.000' AS DateTime), 2, N'Circle ')
GO
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (1, N'Slim Oak Frame Mirror 1.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (1, N'Slim Oak Frame Mirror 2.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (1, N'Slim Oak Frame Mirror.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (2, N'Unframed Round Table Mirror 1.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (2, N'Unframed Round Table Mirror.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (3, N'Floor Standing Mirror 1.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (3, N'Floor Standing Mirror 2.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (3, N'Floor Standing Mirror 3.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (3, N'Floor Standing Mirror.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (4, N'Three-piece Arc Mirror 1.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (4, N'Three-piece Arc Mirror 2.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (4, N'Three-piece Arc Mirror 3.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (4, N'Three-piece Arc Mirror.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (5, N'Wall Storage Mirror 1.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (5, N'Wall Storage Mirror 2.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (5, N'Wall Storage Mirror 3.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (5, N'Wall Storage Mirror.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (6, N'Full Round Oak Mirror 1.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (6, N'Full Round Oak Mirror 2.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (6, N'Full Round Oak Mirror 3.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (6, N'Full Round Oak Mirror.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (7, N'Aethestic Floor Mirror 1.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (7, N'Aethestic Floor Mirror 2.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (7, N'Aethestic Floor Mirror 3.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (7, N'Aethestic Floor Mirror.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (8, N'Decorative Circle Mirror 1.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (8, N'Decorative Circle Mirror.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (9, N'Decorative Sunburst Mirror 1.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (9, N'Decorative Sunburst Mirror 2.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (9, N'Decorative Sunburst Mirror.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (10, N'Black Round Mirror Shelf 1.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (10, N'Black Round Mirror Shelf.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (11, N'Silver Vanity Mirror.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (11, N'Silver Vanity Mirror_1.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (11, N'Silver Vanity Mirror_2.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (12, N'Folding Oak Table Mirror.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (12, N'Folding Oak Table Mirror_1.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (12, N'Folding Oak Table Mirror_2.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (13, N'Full Length Dress Mirror.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (13, N'Full Length Dress Mirror_1.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (13, N'Full Length Dress Mirror_2.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (14, N'Portrait Mirror.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (14, N'Portrait Mirror_1.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (15, N'Landscape Mirror Shelf.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (15, N'Landscape Mirror Shelf_1.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (15, N'Landscape Mirror Shelf_2.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (15, N'Landscape Mirror Shelf_3.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (16, N'Brown Mirror Shelf.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (16, N'Brown Mirror Shelf_1.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (16, N'Brown Mirror Shelf_2.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (17, N'Two-piece Gold Mirror.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (17, N'Two-piece Gold Mirror_1.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (17, N'Two-piece Gold Mirror_2.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (17, N'Two-piece Gold Mirror_3.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (18, N'Folding Dressing Table Mirror.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (18, N'Folding Dressing Table Mirror_1.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (18, N'Folding Dressing Table Mirror_2.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (19, N'Round Slim Frame Mirror.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (19, N'Round Slim Frame Mirror_1.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (19, N'Round Slim Frame Mirror_2.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (20, N'Round Oak Slice Mirror.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (20, N'Round Oak Slice Mirror_1.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (20, N'Round Oak Slice Mirror_2.jpg')
INSERT [dbo].[SanPham_Anh] ([IdSp], [Image]) VALUES (20, N'Round Oak Slice Mirror_3.jpg')
GO
ALTER TABLE [dbo].[BinhLuan] ADD  DEFAULT ((0)) FOR [sao]
GO
ALTER TABLE [dbo].[BinhLuan] ADD  DEFAULT (getdate()) FOR [Create_date]
GO
ALTER TABLE [dbo].[ChiTietSp] ADD  DEFAULT ((0)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[ChiTietSp] ADD  DEFAULT ((0)) FOR [GiamGia]
GO
ALTER TABLE [dbo].[DatHang] ADD  CONSTRAINT [DF__tmp_ms_xx__Creat__1332DBDC]  DEFAULT (getdate()) FOR [Create_date]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (getdate()) FOR [Create_date]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ((0)) FOR [GiamGia]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ((0)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF__SanPham__Create___300424B4]  DEFAULT (getdate()) FOR [Create_date]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_KhachHang] FOREIGN KEY([IdKh])
REFERENCES [dbo].[KhachHang] ([IdKh])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_KhachHang]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_SanPham] FOREIGN KEY([IdSp])
REFERENCES [dbo].[SanPham] ([IdSp])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_SanPham]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_KhachHang] FOREIGN KEY([IdKH])
REFERENCES [dbo].[KhachHang] ([IdKh])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_KhachHang]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_SanPham] FOREIGN KEY([IdSp])
REFERENCES [dbo].[SanPham] ([IdSp])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_SanPham]
GO
ALTER TABLE [dbo].[ChiTietDH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDH_ChiTietSp] FOREIGN KEY([IdSp], [Size])
REFERENCES [dbo].[ChiTietSp] ([IdSp], [Size])
GO
ALTER TABLE [dbo].[ChiTietDH] CHECK CONSTRAINT [FK_ChiTietDH_ChiTietSp]
GO
ALTER TABLE [dbo].[ChiTietDH]  WITH NOCHECK ADD  CONSTRAINT [FK_ChiTietDH_DatHang] FOREIGN KEY([IdDH])
REFERENCES [dbo].[DatHang] ([IdDH])
GO
ALTER TABLE [dbo].[ChiTietDH] CHECK CONSTRAINT [FK_ChiTietDH_DatHang]
GO
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD_ChiTietSp] FOREIGN KEY([IdSp], [Size])
REFERENCES [dbo].[ChiTietSp] ([IdSp], [Size])
GO
ALTER TABLE [dbo].[ChiTietHD] CHECK CONSTRAINT [FK_ChiTietHD_ChiTietSp]
GO
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD_HoaDon] FOREIGN KEY([IdHD])
REFERENCES [dbo].[HoaDon] ([IdHD])
GO
ALTER TABLE [dbo].[ChiTietHD] CHECK CONSTRAINT [FK_ChiTietHD_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD_SanPham] FOREIGN KEY([IdSp])
REFERENCES [dbo].[SanPham] ([IdSp])
GO
ALTER TABLE [dbo].[ChiTietHD] CHECK CONSTRAINT [FK_ChiTietHD_SanPham]
GO
ALTER TABLE [dbo].[ChiTietSp]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSp_SanPham] FOREIGN KEY([IdSp])
REFERENCES [dbo].[SanPham] ([IdSp])
GO
ALTER TABLE [dbo].[ChiTietSp] CHECK CONSTRAINT [FK_ChiTietSp_SanPham]
GO
ALTER TABLE [dbo].[DatHang]  WITH CHECK ADD  CONSTRAINT [FK_DatHang_KhachHang] FOREIGN KEY([IdKh])
REFERENCES [dbo].[KhachHang] ([IdKh])
GO
ALTER TABLE [dbo].[DatHang] CHECK CONSTRAINT [FK_DatHang_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_DatHang] FOREIGN KEY([IdDH])
REFERENCES [dbo].[DatHang] ([IdDH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_DatHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_DatHang1] FOREIGN KEY([IdDH])
REFERENCES [dbo].[DatHang] ([IdDH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_DatHang1]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([IdKh])
REFERENCES [dbo].[KhachHang] ([IdKh])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([IdLoaiSp])
REFERENCES [dbo].[LoaiSanPham] ([IdLoaisp])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[SanPham_Anh]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_Anh_SanPham] FOREIGN KEY([IdSp])
REFERENCES [dbo].[SanPham] ([IdSp])
GO
ALTER TABLE [dbo].[SanPham_Anh] CHECK CONSTRAINT [FK_SanPham_Anh_SanPham]
GO
/****** Object:  StoredProcedure [dbo].[InsertDatHang]    Script Date: 4/11/2022 6:35:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertDatHang] @idKh int, @Name nvarchar(50), @SDT decimal, @DiaChi nvarchar(50),
						@TinhThanh nvarchar(50), @QuanHuyen nvarchar(50), @PhuongXa nvarchar(50),
						@GhiChu nvarchar(100)
AS
BEGIN
	BEGIN TRAN
	BEGIN TRY
		DECLARE @idDH int
		INSERT INTO DatHang(IdKh, Name, SDT, DiaChi, TinhThanh, QuanHuyen, PhuongXa, GhiChu, TrangThai)
		VALUES(@idKh, @Name, @SDT, @DiaChi, @TinhThanh, @QuanHuyen, @PhuongXa, @GhiChu, N'Tiếp nhận')
		SELECT @idDH = IDENT_CURRENT('DatHang')
		
		INSERT INTO ChiTietDH(IdDH, IdSp, SoLuong, Size, GiamGia, Tien)
		SELECT IdDH = @idDH, Cart.IdSp, Cart.SoLuong, Cart.Size, ChiTietSp.GiamGia, ChiTietSp.Tien FROM Cart INNER JOIN ChiTietSp ON Cart.IdSp = ChiTietSp.IdSp
		WHERE Cart.IdKH = @idKh

		UPDATE DatHang SET Tien = 
		(SELECT ISNULL(SUM(ChiTietDH.Tien * (100 - ISNULL(ChiTietDH.GiamGia, 0)) / 100 * ChiTietDH.SoLuong), 0) FROM ChiTietDH WHERE ChiTietDH.IdDH = @idDH)
		WHERE DatHang.IdDH = @idDH
		
		UPDATE ChiTietSp SET ChiTietSp.SoLuong = ChiTietSp.SoLuong - A.SoLuong
		FROM ChiTietSp JOIN (SELECT SoLuong, IdSp, Size FROM Cart WHERE Cart.IdKH = @idKh)A ON ChiTietSp.IdSp = a.IdSp
		WHERE ChiTietSp.IdSp = A.IdSp and ChiTietSp.Size = A.Size

		UPDATE SanPham SET SoLuong = SanPham.SoLuong - A.sl
		FROM ChiTietSp JOIN (SELECT sl = ISNULL(SUM(SoLuong), 0), IdSp FROM Cart WHERE Cart.IdKH = @idKh GROUP BY IdSp)A 
			ON ChiTietSp.IdSp = a.IdSp
		WHERE ChiTietSp.IdSp = A.IdSp
		COMMIT TRAN;
	END TRY
	BEGIN CATCH
		PRINT 'ERROR'
		ROLLBACK TRAN;
	END CATCH;
	DELETE FROM Cart WHERE IdKH = @idKh
END
GO
/****** Object:  StoredProcedure [dbo].[Product_Hot]    Script Date: 4/11/2022 6:35:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Product_Hot]
AS BEGIN
	SELECT SanPham.IdSp, SanPham.TenSanPham, SanPham.Tien, SanPham.Image, SanPham.ImageHover, SanPham.IdLoaiSp, SanPham.HinhDang, SanPham.GiamGia
	FROM SanPham LEFT JOIN ChiTietHD ON SanPham.IdSp = ChiTietHD.IdSp
	WHERE SanPham.SoLuong > 0
	GROUP BY SanPham.IdSp, SanPham.TenSanPham, SanPham.Tien, SanPham.Image, SanPham.ImageHover, SanPham.IdLoaiSp, SanPham.HinhDang, SanPham.Create_date,SanPham.GiamGia
	ORDER BY ISNULL(SUM(ChiTietHD.SoLuong), 0) DESC, SanPham.Create_date DESC
END
GO
/****** Object:  StoredProcedure [dbo].[product_HotID]    Script Date: 4/11/2022 6:35:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[product_HotID] @idlsp int
as
begin
	SELECT SanPham.IdSp, SanPham.TenSanPham, SanPham.Tien, SanPham.Image, SanPham.ImageHover, SanPham.IdLoaiSp, SanPham.HinhDang, SanPham.GiamGia
	FROM SanPham LEFT JOIN ChiTietHD ON SanPham.IdSp = ChiTietHD.IdSp
	WHERE SanPham.SoLuong > 0 AND SanPham.IdLoaiSp = @idlsp
	GROUP BY SanPham.IdSp, SanPham.TenSanPham, SanPham.Tien, SanPham.Image, SanPham.ImageHover, SanPham.IdLoaiSp, SanPham.HinhDang, SanPham.Create_date,SanPham.GiamGia
	ORDER BY ISNULL(SUM(ChiTietHD.SoLuong), 0) DESC, SanPham.Create_date DESC
end
GO
/****** Object:  StoredProcedure [dbo].[SanPham_Cart]    Script Date: 4/11/2022 6:35:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SanPham_Cart] @idKh INT
AS
BEGIN
	SELECT Cart.IdKH, Cart.IdSp, Cart.Size, Cart.SoLuong, SanPham.TenSanPham, ChiTietSp.GiamGia, ChiTietSp.Tien,
	SanPham.Image, SanPham.HinhDang
	FROM ChiTietSp JOIN Cart ON ChiTietSp.IdSp = Cart.IdSp
	JOIN SanPham ON SanPham.IdSp = Cart.IdSp
	WHERE Cart.IdKH = @idKh
END
GO
