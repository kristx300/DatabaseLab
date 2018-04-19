USE [SQTQ]
GO
/****** Object:  Table [dbo].[DeliverySet]    Script Date: 19.04.2018 19:48:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliverySet](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.DeliverySet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 19.04.2018 19:48:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[Order_Id] [int] NOT NULL,
	[Product_Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.OrderProduct] PRIMARY KEY CLUSTERED 
(
	[Order_Id] ASC,
	[Product_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderSet]    Script Date: 19.04.2018 19:48:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderSet](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DateCreate] [datetime] NOT NULL,
	[Total] [decimal](18, 0) NOT NULL,
	[UserId_Id] [int] NOT NULL,
	[DeliveryId_Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.OrderSet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSet]    Script Date: 19.04.2018 19:48:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSet](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Cost] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_dbo.ProductSet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserSet]    Script Date: 19.04.2018 19:48:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserSet](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[Login] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.UserSet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DeliverySet] ON 
GO
INSERT [dbo].[DeliverySet] ([Id], [Name], [Description]) VALUES (1, N'СДЭК', N'Мы оказываем людям и компаниям спектр услуг своевременной и гарантированной доставки, постоянно повышая уровень сервиса, внедряя новые технологии, эффективно используя внутренний потенциал и внешние ресурсы.')
GO
INSERT [dbo].[DeliverySet] ([Id], [Name], [Description]) VALUES (2, N'PONY EXPRESS', N'PONY EXPRESS — КРУПНЕЙШИЙ В СНГ УНИВЕРСАЛЬНЫЙ ЛОГИСТИЧЕСКИЙ ОПЕРАТОР 60 экспресс-центров и 128 представительств в России, а также представительства в 9 странах мира: Азербайджане, Армении, Беларуси, Грузии, Казахстане, Кыргызстане, Латвии, Молдове и Украине.')
GO
INSERT [dbo].[DeliverySet] ([Id], [Name], [Description]) VALUES (3, N'Гарантпост', N'Компания Гарантпост была основана в 1990 году как первое в России предприятие в области почтовых услуг с участием иностранного капитала (зарубежной фирмой участником является Air France). Юридический статус – общество с ограниченной ответственностью.')
GO
SET IDENTITY_INSERT [dbo].[DeliverySet] OFF
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (1, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (2, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (3, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (4, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (5, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (6, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (7, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (8, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (9, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (10, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (11, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (12, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (13, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (14, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (15, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (16, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (17, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (18, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (19, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (20, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (21, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (22, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (23, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (24, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (25, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (26, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (27, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (28, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (29, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (30, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (31, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (32, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (33, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (34, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (35, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (36, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (37, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (38, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (39, 1)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (2, 2)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (3, 2)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (4, 2)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (5, 2)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (7, 2)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (8, 2)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (10, 2)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (11, 2)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (12, 2)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (13, 2)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (14, 2)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (15, 2)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (16, 2)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (17, 2)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (18, 2)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (19, 2)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (20, 2)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (21, 2)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (22, 2)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (23, 2)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (24, 2)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (26, 2)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (27, 2)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (28, 2)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (29, 2)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (31, 2)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (32, 2)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (34, 2)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (35, 2)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (36, 2)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (38, 2)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (39, 2)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (3, 3)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (4, 3)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (7, 3)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (8, 3)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (10, 3)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (11, 3)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (12, 3)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (13, 3)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (14, 3)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (15, 3)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (16, 3)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (17, 3)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (18, 3)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (19, 3)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (20, 3)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (21, 3)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (22, 3)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (23, 3)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (24, 3)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (26, 3)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (28, 3)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (29, 3)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (31, 3)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (32, 3)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (34, 3)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (35, 3)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (36, 3)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (38, 3)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (39, 3)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (3, 4)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (4, 4)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (7, 4)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (10, 4)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (11, 4)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (12, 4)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (13, 4)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (14, 4)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (15, 4)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (16, 4)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (17, 4)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (18, 4)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (22, 4)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (23, 4)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (24, 4)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (26, 4)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (29, 4)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (31, 4)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (34, 4)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (36, 4)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (39, 4)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (3, 5)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (10, 5)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (11, 5)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (12, 5)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (13, 5)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (14, 5)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (15, 5)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (16, 5)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (17, 5)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (18, 5)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (22, 5)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (23, 5)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (24, 5)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (29, 5)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (31, 5)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (36, 5)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (11, 6)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (13, 6)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (15, 6)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (16, 6)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (17, 6)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (18, 6)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (22, 6)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (24, 6)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (29, 6)
GO
INSERT [dbo].[OrderProduct] ([Order_Id], [Product_Id]) VALUES (31, 6)
GO
SET IDENTITY_INSERT [dbo].[OrderSet] ON 
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (1, CAST(N'2018-03-15T19:46:19.253' AS DateTime), CAST(1317 AS Decimal(18, 0)), 5, 3)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (2, CAST(N'2018-03-16T19:46:19.253' AS DateTime), CAST(2475 AS Decimal(18, 0)), 7, 1)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (3, CAST(N'2018-02-24T19:46:19.253' AS DateTime), CAST(6145 AS Decimal(18, 0)), 5, 2)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (4, CAST(N'2018-02-23T19:46:19.253' AS DateTime), CAST(4119 AS Decimal(18, 0)), 1, 3)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (5, CAST(N'2018-02-20T19:46:19.253' AS DateTime), CAST(2475 AS Decimal(18, 0)), 2, 3)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (6, CAST(N'2018-03-06T19:46:19.253' AS DateTime), CAST(1317 AS Decimal(18, 0)), 6, 1)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (7, CAST(N'2018-02-18T19:46:19.253' AS DateTime), CAST(4119 AS Decimal(18, 0)), 6, 1)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (8, CAST(N'2018-03-19T19:46:19.253' AS DateTime), CAST(3477 AS Decimal(18, 0)), 6, 1)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (9, CAST(N'2018-02-25T19:46:19.253' AS DateTime), CAST(1317 AS Decimal(18, 0)), 6, 1)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (10, CAST(N'2018-03-13T19:46:19.253' AS DateTime), CAST(6145 AS Decimal(18, 0)), 4, 2)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (11, CAST(N'2018-02-19T19:46:19.253' AS DateTime), CAST(7946 AS Decimal(18, 0)), 7, 1)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (12, CAST(N'2018-03-05T19:46:19.253' AS DateTime), CAST(6145 AS Decimal(18, 0)), 3, 1)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (13, CAST(N'2018-02-20T19:46:19.253' AS DateTime), CAST(7946 AS Decimal(18, 0)), 4, 2)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (14, CAST(N'2018-03-17T19:46:19.253' AS DateTime), CAST(6145 AS Decimal(18, 0)), 3, 2)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (15, CAST(N'2018-02-22T19:46:19.253' AS DateTime), CAST(7946 AS Decimal(18, 0)), 5, 1)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (16, CAST(N'2018-02-27T19:46:19.253' AS DateTime), CAST(7946 AS Decimal(18, 0)), 1, 2)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (17, CAST(N'2018-02-24T19:46:19.253' AS DateTime), CAST(7946 AS Decimal(18, 0)), 1, 3)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (18, CAST(N'2018-03-14T19:46:19.253' AS DateTime), CAST(7946 AS Decimal(18, 0)), 3, 3)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (19, CAST(N'2018-02-27T19:46:19.253' AS DateTime), CAST(3477 AS Decimal(18, 0)), 1, 2)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (20, CAST(N'2018-03-15T19:46:19.253' AS DateTime), CAST(3477 AS Decimal(18, 0)), 1, 2)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (21, CAST(N'2018-03-10T19:46:19.253' AS DateTime), CAST(3477 AS Decimal(18, 0)), 6, 1)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (22, CAST(N'2018-03-03T19:46:19.253' AS DateTime), CAST(7946 AS Decimal(18, 0)), 2, 2)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (23, CAST(N'2018-03-10T19:46:19.253' AS DateTime), CAST(6145 AS Decimal(18, 0)), 6, 2)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (24, CAST(N'2018-03-15T19:46:19.253' AS DateTime), CAST(7946 AS Decimal(18, 0)), 2, 3)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (25, CAST(N'2018-02-21T19:46:19.253' AS DateTime), CAST(1317 AS Decimal(18, 0)), 1, 2)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (26, CAST(N'2018-02-19T19:46:19.253' AS DateTime), CAST(4119 AS Decimal(18, 0)), 3, 1)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (27, CAST(N'2018-02-20T19:46:19.253' AS DateTime), CAST(2475 AS Decimal(18, 0)), 4, 2)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (28, CAST(N'2018-03-13T19:46:19.253' AS DateTime), CAST(3477 AS Decimal(18, 0)), 2, 2)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (29, CAST(N'2018-02-27T19:46:19.253' AS DateTime), CAST(7946 AS Decimal(18, 0)), 3, 3)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (30, CAST(N'2018-03-03T19:46:19.253' AS DateTime), CAST(1317 AS Decimal(18, 0)), 3, 1)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (31, CAST(N'2018-02-19T19:46:19.253' AS DateTime), CAST(7946 AS Decimal(18, 0)), 2, 2)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (32, CAST(N'2018-03-14T19:46:19.253' AS DateTime), CAST(3477 AS Decimal(18, 0)), 7, 1)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (33, CAST(N'2018-02-22T19:46:19.253' AS DateTime), CAST(1317 AS Decimal(18, 0)), 5, 3)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (34, CAST(N'2018-02-26T19:46:19.253' AS DateTime), CAST(4119 AS Decimal(18, 0)), 2, 3)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (35, CAST(N'2018-02-25T19:46:19.253' AS DateTime), CAST(3477 AS Decimal(18, 0)), 7, 2)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (36, CAST(N'2018-02-25T19:46:19.253' AS DateTime), CAST(6145 AS Decimal(18, 0)), 4, 3)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (37, CAST(N'2018-03-04T19:46:19.253' AS DateTime), CAST(1317 AS Decimal(18, 0)), 2, 1)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (38, CAST(N'2018-02-22T19:46:19.253' AS DateTime), CAST(3477 AS Decimal(18, 0)), 1, 1)
GO
INSERT [dbo].[OrderSet] ([Id], [DateCreate], [Total], [UserId_Id], [DeliveryId_Id]) VALUES (39, CAST(N'2018-03-01T19:46:19.253' AS DateTime), CAST(4119 AS Decimal(18, 0)), 5, 2)
GO
SET IDENTITY_INSERT [dbo].[OrderSet] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductSet] ON 
GO
INSERT [dbo].[ProductSet] ([Id], [Name], [Description], [Cost]) VALUES (1, N'CLR via C#. Программирование на платформе Microsoft.NET Framework 4.5 на языке C#', N'Эта книга, выходящая в четвертом издании и уже ставшая классическим учебником по программированию, подробно описывает внутреннее устройство и функционирование общеязыковой исполняющей среды (CLR) Microsoft .NET Framework версии 4.5. Написанная признанным экспертом в области программирования Джеффри Рихтером, много лет являющимся консультантом команды разработчиков .NET Framework компании Microsoft, книга научит вас создавать по-настоящему надежные приложения любого вида, в том числе с использованием Microsoft Silverlight, ASP.NET, Windows Presentation Foundation и т.д. Четвертое издание полностью обновлено в соответствии со спецификацией платформы .NET Framework 4.5, а также среды Visual Studio 2012 и C# 5.0.', CAST(1317 AS Decimal(18, 0)))
GO
INSERT [dbo].[ProductSet] ([Id], [Name], [Description], [Cost]) VALUES (2, N'Оптимизация приложений на платформе .Net', N'Увеличение производительности алгоритмов и приложений является чрезвычайно важным аспектом разработки и может дать вам преимущество перед конкурентами, а вашим пользователям обеспечить низкую стоимость владения и удовольствие от использования быстрых и отзывчивых приложений. Данная книга описывает внутренние особенности ОС Windows, среды выполнения CLR и аппаратного обеспечения, влияющие на производительность приложений, а также дает вам знания и инструменты для измерения производительности вашего кода в изоляции от внешних факторов. Книга наполнена примерами кода на С# и рекомендациями, которые помогут вам выжать максимум возможного из вашего приложения - низкое потребление памяти, согласованную нагрузку на процессор и минимальное количество операций ввода/вывода с сетью и диском. ', CAST(1158 AS Decimal(18, 0)))
GO
INSERT [dbo].[ProductSet] ([Id], [Name], [Description], [Cost]) VALUES (3, N'Паттерны проектирования', N'В мире постоянно кто-то сталкивается с такими же проблемами программирования, которые возникают и у вас. Многие разработчики решают совершенно идентичные задачи и находят похожие решения. Если вы не хотите изобретать велосипед, используйте готовые шаблоны (паттерны) проектирования, работе с которыми посвящена эта книга. Паттерны появились, потому что многие разработчики искали пути повышения гибкости и степени повторного использования своих программ. Найденные решения воплощены в краткой и легко применимой на практике форме. Особенностью данного издания является уникальный способ подачи материала, выделяющий серию "Head First" издательства O''Reilly в ряду множества скучных книг, посвященных программированию. Книга будет интересна широкому кругу веб-разработчиков, от начинающих до профессионалов, желающих освоить работу с паттернами проектирования.', CAST(1002 AS Decimal(18, 0)))
GO
INSERT [dbo].[ProductSet] ([Id], [Name], [Description], [Cost]) VALUES (4, N'Паттерны проектирования на платформе .NET', N'Паттерны проектирования остаются важным инструментом в арсенале разработчика, поскольку они опираются на фундаментальные принципы проектирования. Тем не менее, появление новых конструкций в современных языках программирования делает одни паттерны более важными, а значимость других сводит к минимуму. Цель данной книги - показать, как изменились паттерны проектирования за это время, как на них повлияло современное увлечение функциональным программированием, и объяснить, каким образом они используются в современных .NET-приложениях. В издании вы найдете подробное описание классических паттернов проектирования с особенностями их реализации на платформе .NET, а также примеры их использования в .NET Framework. Вы также изучите принципы проектирования, известные под аббревиатурой SOLID, и научитесь применять их при разработке собственных приложений. ', CAST(642 AS Decimal(18, 0)))
GO
INSERT [dbo].[ProductSet] ([Id], [Name], [Description], [Cost]) VALUES (5, N'Microsoft .NET. Архитектура корпоративных приложений', N'В этой книге, написанной двумя ведущими экспертами в области программирования Дино Эспозито и Андреа Сальтарелло, рассказывается от начала и до конца как применять шаблоны и лучшие методики для управления сложными проектами, как облегчить их сборку и упростить поддержку и дальнейшую модернизацию. Во втором издании книги подробно рассмотрены темы о моделировании предметной области, архитектуре CQRS (Сommand-Query Responsibility Segregation — разделение ответственности на команды и запросы) и моделях, основанных на источниках событий.', CAST(2026 AS Decimal(18, 0)))
GO
INSERT [dbo].[ProductSet] ([Id], [Name], [Description], [Cost]) VALUES (6, N'C# для профессионалов. Тонкости программирования', N'Книга C# ДЛЯ ПРОФЕССИОНАЛОВ. ТОНКОСТИ ПРОГРАММИРОВАНИЯ (C# in Depth) является обновлением предыдущего издания, ставшего бестселлером, с целью раскрытия новых средств языка C# 5, включая решение проблем, которые связаны с написанием сопровождаемого асинхронного кода. Она предлагает уникальные сведения о сложных областях и темных закоулках языка, которые может предоставить только эксперт Джон Скит.', CAST(1801 AS Decimal(18, 0)))
GO
INSERT [dbo].[ProductSet] ([Id], [Name], [Description], [Cost]) VALUES (7, N'Эффективное программирование на C#. 50 способов улучшения кода', N'В этой книге многоуважаемый эксперт в области .NET Билл Вагнер исследует 50 способов использования в своих целях полной мощи языка C# 6.0 для написания исключительно надежного, эффективного и высокопроизводительного кода. Отражая растущую сложность языка C# и сообщества разработчиков, автор обозначает десятки новых путей написания лучшего кода. ', CAST(1258 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[ProductSet] OFF
GO
SET IDENTITY_INSERT [dbo].[UserSet] ON 
GO
INSERT [dbo].[UserSet] ([Id], [FullName], [Login], [Password], [Address]) VALUES (1, N'Landon Martin', N'landon.martin16@example.com', N'65a551', N'301350, г. Сосногорск, ул. Заречная, дом 20, квартира 73')
GO
INSERT [dbo].[UserSet] ([Id], [FullName], [Login], [Password], [Address]) VALUES (2, N'Sara Pena', N'sara.pena49@example.com', N'b47b4f', N'356264, г. Турунтаево, ул. Батюнинская, дом 67, квартира 217')
GO
INSERT [dbo].[UserSet] ([Id], [FullName], [Login], [Password], [Address]) VALUES (3, N'Gloria Vargas', N'gloria.vargas60@example.com', N'cca5b2', N'460541, г. Хабаровск, ул. Декабристов, дом 96, квартира 74')
GO
INSERT [dbo].[UserSet] ([Id], [FullName], [Login], [Password], [Address]) VALUES (4, N'Louis Craig', N'louis.craig42@example.com', N'53f549', N'187789, г. Бычково, ул. Михаила Агибалова, дом 52, квартира 205')
GO
INSERT [dbo].[UserSet] ([Id], [FullName], [Login], [Password], [Address]) VALUES (5, N'Chloe Harvey', N'chloe.harvey17@example.com', N'004734', N'617120, г. Овражье, ул. Бадюлина, дом 21, квартира 171')
GO
INSERT [dbo].[UserSet] ([Id], [FullName], [Login], [Password], [Address]) VALUES (6, N'Kelly Armstrong', N'kelly.armstrong34@example.com', N'493a68', N'634024, г. Филипповка, ул. Молодёжная, дом 21, квартира 62')
GO
INSERT [dbo].[UserSet] ([Id], [FullName], [Login], [Password], [Address]) VALUES (7, N'Leon Austin', N'leon.austin35@example.com', N'1c0e16', N'433322, г. Грачевка, ул. Бассейная, дом 65, квартира 73')
GO
SET IDENTITY_INSERT [dbo].[UserSet] OFF
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderProduct_dbo.OrderSet_Order_Id] FOREIGN KEY([Order_Id])
REFERENCES [dbo].[OrderSet] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_dbo.OrderProduct_dbo.OrderSet_Order_Id]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderProduct_dbo.ProductSet_Product_Id] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[ProductSet] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_dbo.OrderProduct_dbo.ProductSet_Product_Id]
GO
ALTER TABLE [dbo].[OrderSet]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderSet_dbo.DeliverySet_DeliveryId_Id] FOREIGN KEY([DeliveryId_Id])
REFERENCES [dbo].[DeliverySet] ([Id])
GO
ALTER TABLE [dbo].[OrderSet] CHECK CONSTRAINT [FK_dbo.OrderSet_dbo.DeliverySet_DeliveryId_Id]
GO
ALTER TABLE [dbo].[OrderSet]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderSet_dbo.UserSet_UserId_Id] FOREIGN KEY([UserId_Id])
REFERENCES [dbo].[UserSet] ([Id])
GO
ALTER TABLE [dbo].[OrderSet] CHECK CONSTRAINT [FK_dbo.OrderSet_dbo.UserSet_UserId_Id]
GO
