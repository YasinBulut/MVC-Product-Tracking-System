USE [DBUrunStok]
GO
/****** Object:  Table [dbo].[Tbl_Kategoriler]    Script Date: 24.01.2021 13:02:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Kategoriler](
	[KATEGORIID] [smallint] IDENTITY(1,1) NOT NULL,
	[KATEGORIAD] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[KATEGORIID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Musteriler]    Script Date: 24.01.2021 13:02:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Musteriler](
	[MUSTERIID] [int] IDENTITY(1,1) NOT NULL,
	[MUSTERIAD] [varchar](50) NULL,
	[MUSTERISOYAD] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Musteriler] PRIMARY KEY CLUSTERED 
(
	[MUSTERIID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Satislar]    Script Date: 24.01.2021 13:02:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Satislar](
	[SATISID] [int] IDENTITY(1,1) NOT NULL,
	[URUN] [int] NULL,
	[MUSTERI] [int] NULL,
	[ADET] [tinyint] NULL,
	[FIYAT] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Tbl_Satislar] PRIMARY KEY CLUSTERED 
(
	[SATISID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_Urunler]    Script Date: 24.01.2021 13:02:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Urunler](
	[URUNID] [int] IDENTITY(1,1) NOT NULL,
	[URUNAD] [varchar](50) NULL,
	[MARKA] [varchar](50) NULL,
	[URUNKATEGORI] [smallint] NULL,
	[FIYAT] [decimal](18, 2) NULL,
	[STOK] [tinyint] NULL,
 CONSTRAINT [PK_Tbl_Urunler] PRIMARY KEY CLUSTERED 
(
	[URUNID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Kategoriler] ON 

INSERT [dbo].[Tbl_Kategoriler] ([KATEGORIID], [KATEGORIAD]) VALUES (1, N'BEYAZ EŞYA-1')
INSERT [dbo].[Tbl_Kategoriler] ([KATEGORIID], [KATEGORIAD]) VALUES (2, N'KÜÇÜK EV ALETLERİ')
INSERT [dbo].[Tbl_Kategoriler] ([KATEGORIID], [KATEGORIAD]) VALUES (3, N'BİLGİSAYAR')
INSERT [dbo].[Tbl_Kategoriler] ([KATEGORIID], [KATEGORIAD]) VALUES (4, N'PC URUNLERI')
INSERT [dbo].[Tbl_Kategoriler] ([KATEGORIID], [KATEGORIAD]) VALUES (5, N'DİĞER ÜRÜNLER')
INSERT [dbo].[Tbl_Kategoriler] ([KATEGORIID], [KATEGORIAD]) VALUES (6, N'DENEME')
INSERT [dbo].[Tbl_Kategoriler] ([KATEGORIID], [KATEGORIAD]) VALUES (10, N'TV')
INSERT [dbo].[Tbl_Kategoriler] ([KATEGORIID], [KATEGORIAD]) VALUES (11, N'MUTFAK ÜRÜNLERİ')
INSERT [dbo].[Tbl_Kategoriler] ([KATEGORIID], [KATEGORIAD]) VALUES (12, N'BANYO TAKIMI')
SET IDENTITY_INSERT [dbo].[Tbl_Kategoriler] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Musteriler] ON 

INSERT [dbo].[Tbl_Musteriler] ([MUSTERIID], [MUSTERIAD], [MUSTERISOYAD]) VALUES (1, N'EMEL', N'ÇINAR')
INSERT [dbo].[Tbl_Musteriler] ([MUSTERIID], [MUSTERIAD], [MUSTERISOYAD]) VALUES (2, N'ALİ', N'YILDIZ')
INSERT [dbo].[Tbl_Musteriler] ([MUSTERIID], [MUSTERIAD], [MUSTERISOYAD]) VALUES (3, N'MEHMET', N'ÖZTÜRK')
INSERT [dbo].[Tbl_Musteriler] ([MUSTERIID], [MUSTERIAD], [MUSTERISOYAD]) VALUES (7, N'AYLİN', N'ÖZDEMİR')
SET IDENTITY_INSERT [dbo].[Tbl_Musteriler] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Satislar] ON 

INSERT [dbo].[Tbl_Satislar] ([SATISID], [URUN], [MUSTERI], [ADET], [FIYAT]) VALUES (1, 4, 2, 1, CAST(250.00 AS Decimal(18, 2)))
INSERT [dbo].[Tbl_Satislar] ([SATISID], [URUN], [MUSTERI], [ADET], [FIYAT]) VALUES (2, 1, 2, 1, CAST(1255.00 AS Decimal(18, 2)))
INSERT [dbo].[Tbl_Satislar] ([SATISID], [URUN], [MUSTERI], [ADET], [FIYAT]) VALUES (3, 4, 2, 1, CAST(2500.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Tbl_Satislar] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Urunler] ON 

INSERT [dbo].[Tbl_Urunler] ([URUNID], [URUNAD], [MARKA], [URUNKATEGORI], [FIYAT], [STOK]) VALUES (1, N'ÇAMAŞIR MAKİNESİ', N'ARÇELİK', 1, CAST(1265.00 AS Decimal(18, 2)), 15)
INSERT [dbo].[Tbl_Urunler] ([URUNID], [URUNAD], [MARKA], [URUNKATEGORI], [FIYAT], [STOK]) VALUES (2, N'BULAŞIK MAKİNESİ', N'ARÇELİK', 1, CAST(850.00 AS Decimal(18, 2)), 10)
INSERT [dbo].[Tbl_Urunler] ([URUNID], [URUNAD], [MARKA], [URUNKATEGORI], [FIYAT], [STOK]) VALUES (3, N'SU ISSITICI', N'VESTEL', 2, CAST(25.00 AS Decimal(18, 2)), 50)
INSERT [dbo].[Tbl_Urunler] ([URUNID], [URUNAD], [MARKA], [URUNKATEGORI], [FIYAT], [STOK]) VALUES (4, N'ÜTÜ', N'TEFAL', 2, CAST(250.00 AS Decimal(18, 2)), 10)
INSERT [dbo].[Tbl_Urunler] ([URUNID], [URUNAD], [MARKA], [URUNKATEGORI], [FIYAT], [STOK]) VALUES (5, N'BUZDOLABI', N'REGAL', 1, CAST(2550.00 AS Decimal(18, 2)), 5)
INSERT [dbo].[Tbl_Urunler] ([URUNID], [URUNAD], [MARKA], [URUNKATEGORI], [FIYAT], [STOK]) VALUES (6, N'LAPTAP', N'TOSHIBA', 3, CAST(3500.00 AS Decimal(18, 2)), 7)
INSERT [dbo].[Tbl_Urunler] ([URUNID], [URUNAD], [MARKA], [URUNKATEGORI], [FIYAT], [STOK]) VALUES (7, N'LAPTOP', N'MONSTER', 3, CAST(6000.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[Tbl_Urunler] ([URUNID], [URUNAD], [MARKA], [URUNKATEGORI], [FIYAT], [STOK]) VALUES (8, N' HDD 250GB', N'TOSHIBA', 4, CAST(300.00 AS Decimal(18, 2)), 10)
INSERT [dbo].[Tbl_Urunler] ([URUNID], [URUNAD], [MARKA], [URUNKATEGORI], [FIYAT], [STOK]) VALUES (9, N'SSD 250GB', N'KINGSTON', 4, CAST(500.00 AS Decimal(18, 2)), 7)
INSERT [dbo].[Tbl_Urunler] ([URUNID], [URUNAD], [MARKA], [URUNKATEGORI], [FIYAT], [STOK]) VALUES (10, N'KLAVYE', N'LOGITECH', 4, CAST(250.00 AS Decimal(18, 2)), 5)
INSERT [dbo].[Tbl_Urunler] ([URUNID], [URUNAD], [MARKA], [URUNKATEGORI], [FIYAT], [STOK]) VALUES (12, N'ÇAMAŞIR MAKİNESİ', N'SİEMENS', 1, CAST(2000.00 AS Decimal(18, 2)), 25)
INSERT [dbo].[Tbl_Urunler] ([URUNID], [URUNAD], [MARKA], [URUNKATEGORI], [FIYAT], [STOK]) VALUES (14, N'LCD', N'TOSHIBA', 1, CAST(2500.00 AS Decimal(18, 2)), 12)
SET IDENTITY_INSERT [dbo].[Tbl_Urunler] OFF
ALTER TABLE [dbo].[Tbl_Satislar]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Satislar_Tbl_Musteriler] FOREIGN KEY([MUSTERI])
REFERENCES [dbo].[Tbl_Musteriler] ([MUSTERIID])
GO
ALTER TABLE [dbo].[Tbl_Satislar] CHECK CONSTRAINT [FK_Tbl_Satislar_Tbl_Musteriler]
GO
ALTER TABLE [dbo].[Tbl_Satislar]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Satislar_Tbl_Urunler] FOREIGN KEY([URUN])
REFERENCES [dbo].[Tbl_Urunler] ([URUNID])
GO
ALTER TABLE [dbo].[Tbl_Satislar] CHECK CONSTRAINT [FK_Tbl_Satislar_Tbl_Urunler]
GO
ALTER TABLE [dbo].[Tbl_Urunler]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Urunler_Tbl_Kategoriler] FOREIGN KEY([URUNKATEGORI])
REFERENCES [dbo].[Tbl_Kategoriler] ([KATEGORIID])
GO
ALTER TABLE [dbo].[Tbl_Urunler] CHECK CONSTRAINT [FK_Tbl_Urunler_Tbl_Kategoriler]
GO
