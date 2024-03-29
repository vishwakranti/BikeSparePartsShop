USE [aspnet-BikeSpareParts3]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 28/10/2022 12:37:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 28/10/2022 12:37:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 28/10/2022 12:37:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 28/10/2022 12:37:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 28/10/2022 12:37:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 28/10/2022 12:37:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 28/10/2022 12:37:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 28/10/2022 12:37:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 28/10/2022 12:37:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[OrderId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 28/10/2022 12:37:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderId] [uniqueidentifier] NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[ShippedDate] [datetime2](7) NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[StockId] [uniqueidentifier] NOT NULL,
	[StaffId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 28/10/2022 12:37:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[StaffId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Role] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[StaffId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stock]    Script Date: 28/10/2022 12:37:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock](
	[StockId] [uniqueidentifier] NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[ProductDescription] [nvarchar](max) NOT NULL,
	[ProductType] [nvarchar](max) NOT NULL,
	[Price] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_Stock] PRIMARY KEY CLUSTERED 
(
	[StockId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221017054156_ApplyModelChanges', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221024094049_AddedOrderToCustomer', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221024094922_ChangedPropertyPhoneToStringForStaff', N'6.0.10')
GO
INSERT [dbo].[Customer] ([CustomerId], [Name], [Address], [Phone], [Email], [OrderId]) VALUES (N'5c0298c7-f68d-4b34-b1ec-0559df81b12a', N'Cassey Haslam', N' Towne Drive', N'595-605-4327', N'chaslam1@dagondesign.com', N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[Customer] ([CustomerId], [Name], [Address], [Phone], [Email], [OrderId]) VALUES (N'63df1129-98af-4e17-872d-2d4afb32b04a', N'Joe', N'35 Nottingham Ave', N'304-456-678', N'joe@cnn.com', N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[Customer] ([CustomerId], [Name], [Address], [Phone], [Email], [OrderId]) VALUES (N'4324af59-3349-4560-ba0d-3b4c398c9817', N'Derry Edge', N'55 7th Park', N'901-684-7889', N'dedgeb@reuters.com', N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[Customer] ([CustomerId], [Name], [Address], [Phone], [Email], [OrderId]) VALUES (N'8361a487-deb3-48ec-a3e7-55773319d90c', N'Haydon Dodgson', N'9 Summer Ridge Avenue', N'964-274-2235', N'hdodgson3@github.com', N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[Customer] ([CustomerId], [Name], [Address], [Phone], [Email], [OrderId]) VALUES (N'dcfbb41e-5b67-4f22-95f1-634aca626b65', N'Cristabel Skelhorn', N'3844 Kedzie Court', N'507-334-7742', N'cskelhorn7@dropbox.com', N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[Customer] ([CustomerId], [Name], [Address], [Phone], [Email], [OrderId]) VALUES (N'b56a68f5-0822-4b2f-8778-a15a7feb2b8a', N'Laurens Cobain', N'530 Kennedy Circle', N'696-783-6901', N'lcobain8@reddit.com', N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[Customer] ([CustomerId], [Name], [Address], [Phone], [Email], [OrderId]) VALUES (N'445d6af3-bced-43b3-9cac-adb83317a0c0', N'Saidee Kornyshev', N'6 Amoth Park', N'609-567-0653', N'skornyshev4@macromedia.com', N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[Customer] ([CustomerId], [Name], [Address], [Phone], [Email], [OrderId]) VALUES (N'0118133d-f419-46b4-b9b4-b88c7c9918c0', N'Verene Loads', N'79638 Farwell Circle', N'553-227-6187', N'vloadsa@ibm.com', N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[Customer] ([CustomerId], [Name], [Address], [Phone], [Email], [OrderId]) VALUES (N'349acf81-5cab-46cb-800d-b8e8dd01f1ba', N'Marcelline Georgeau', N'06749 Meadow Valley Center', N'444-280-2407', N'mgeorgeau5@dot.gov', N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[Customer] ([CustomerId], [Name], [Address], [Phone], [Email], [OrderId]) VALUES (N'044d692f-0788-4bb9-ad1a-de76424588b2', N'Bidget Whytock', N'2 Pierstorff Point', N'516-788-6026', N'bwhytock9@columbia.edu', N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[Customer] ([CustomerId], [Name], [Address], [Phone], [Email], [OrderId]) VALUES (N'934ff60b-b0ec-4f8c-be23-f5e22ad1ee1d', N'Berta Barkly', N'98189 Hanson Place', N'487-787-2051', N'bbarkly6@bloglovin.com', N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[Customer] ([CustomerId], [Name], [Address], [Phone], [Email], [OrderId]) VALUES (N'daef6027-4335-4b1a-92da-f67120056377', N'Vilma Benninger', N'38812 Lerdahl Junction', N'693-590-4135', N'vbenninger0@loc.gov', N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[Customer] ([CustomerId], [Name], [Address], [Phone], [Email], [OrderId]) VALUES (N'bad9ec52-d28d-4870-85fa-fb73908b270a', N'Meaghan Nordass', N'891 Grayhawk Lane', N'148-567-9135', N'mnordass2@who.int', N'00000000-0000-0000-0000-000000000000')
GO
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ShippedDate], [CustomerId], [StockId], [StaffId]) VALUES (N'c9aa1e7f-ef46-4943-9cbb-0b6f0e2a4f59', CAST(N'2022-10-21T11:12:00.0000000' AS DateTime2), CAST(N'2022-10-24T12:00:00.0000000' AS DateTime2), N'5c0298c7-f68d-4b34-b1ec-0559df81b12a', N'71f442a6-9a51-413b-a610-03d5ddcb4a10', N'ef2e6070-224c-4a28-ad12-1c8eb706f94c')
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ShippedDate], [CustomerId], [StockId], [StaffId]) VALUES (N'97eb2180-c10a-4d66-ade6-2a2490a306f2', CAST(N'2022-01-12T11:06:37.1630000' AS DateTime2), CAST(N'2022-01-09T18:52:26.3930000' AS DateTime2), N'dcfbb41e-5b67-4f22-95f1-634aca626b65', N'69e88ef9-25a0-4c19-9727-6558c7507a36', N'db625840-91ff-48e9-810b-3c2dded3b584')
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ShippedDate], [CustomerId], [StockId], [StaffId]) VALUES (N'7f8dee18-cfb7-4ece-bf40-32b7155e6fae', CAST(N'2022-01-12T11:54:40.1400000' AS DateTime2), CAST(N'2022-01-12T11:54:39.8466667' AS DateTime2), N'dcfbb41e-5b67-4f22-95f1-634aca626b65', N'9a19fff7-b1c6-4bff-a6a8-44712fb19341', N'680a45ad-3cc2-4fa8-a8cf-9a048abe5344')
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ShippedDate], [CustomerId], [StockId], [StaffId]) VALUES (N'249e1440-9610-438a-82ea-6770c178e398', CAST(N'2022-10-07T00:12:00.0000000' AS DateTime2), CAST(N'2022-10-14T12:12:00.0000000' AS DateTime2), N'bad9ec52-d28d-4870-85fa-fb73908b270a', N'9a19fff7-b1c6-4bff-a6a8-44712fb19341', N'a49d6f5f-dedf-45d7-b581-7160601935b8')
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ShippedDate], [CustomerId], [StockId], [StaffId]) VALUES (N'eec8e508-0fda-4943-891b-77534b829c4f', CAST(N'2021-12-20T16:11:38.4666667' AS DateTime2), CAST(N'2021-12-23T19:46:39.1733333' AS DateTime2), N'8361a487-deb3-48ec-a3e7-55773319d90c', N'699c3cb5-131a-4562-958f-98f9e70baf1f', N'a49d6f5f-dedf-45d7-b581-7160601935b8')
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ShippedDate], [CustomerId], [StockId], [StaffId]) VALUES (N'30b74be8-cf1b-454b-b5b3-a47285fa4982', CAST(N'2022-10-01T00:12:00.0000000' AS DateTime2), CAST(N'2022-10-13T12:12:00.0000000' AS DateTime2), N'5c0298c7-f68d-4b34-b1ec-0559df81b12a', N'71f442a6-9a51-413b-a610-03d5ddcb4a10', N'ef2e6070-224c-4a28-ad12-1c8eb706f94c')
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ShippedDate], [CustomerId], [StockId], [StaffId]) VALUES (N'0b47219a-960c-48f8-bf2d-b6b3f632595a', CAST(N'2021-12-18T16:42:02.6366667' AS DateTime2), CAST(N'2021-12-22T14:25:01.4933333' AS DateTime2), N'445d6af3-bced-43b3-9cac-adb83317a0c0', N'748535cf-34f5-4ae9-a0a1-9ad3a2d2c91d', N'680a45ad-3cc2-4fa8-a8cf-9a048abe5344')
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ShippedDate], [CustomerId], [StockId], [StaffId]) VALUES (N'2d72a994-48ef-4702-8ebb-caa17ffbdd69', CAST(N'2022-01-13T11:54:39.6966667' AS DateTime2), CAST(N'2022-01-13T11:54:39.2566667' AS DateTime2), N'445d6af3-bced-43b3-9cac-adb83317a0c0', N'dc0e8722-d123-475a-b715-cd58a92cc699', N'bea9a29a-baac-44fe-aee6-2020a0e0333d')
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ShippedDate], [CustomerId], [StockId], [StaffId]) VALUES (N'8312df43-4769-4b43-a92c-d3d9712df5a6', CAST(N'2022-01-14T11:54:38.3100000' AS DateTime2), CAST(N'2022-01-14T11:54:39.1033333' AS DateTime2), N'0118133d-f419-46b4-b9b4-b88c7c9918c0', N'edcb8fb1-54d0-4ba1-97e6-b5fb5703f28f', N'a49d6f5f-dedf-45d7-b581-7160601935b8')
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ShippedDate], [CustomerId], [StockId], [StaffId]) VALUES (N'331a17ae-d690-4f53-851c-de8044825abd', CAST(N'2021-12-21T11:01:55.8866667' AS DateTime2), CAST(N'2021-12-21T21:45:03.0500000' AS DateTime2), N'349acf81-5cab-46cb-800d-b8e8dd01f1ba', N'1a1b4d65-0ab7-40ca-8200-a341a884ac5b', N'db625840-91ff-48e9-810b-3c2dded3b584')
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ShippedDate], [CustomerId], [StockId], [StaffId]) VALUES (N'36f90110-8a16-4f53-b251-f0377ec4829c', CAST(N'2022-01-14T11:54:40.6800000' AS DateTime2), CAST(N'2022-01-14T11:54:39.8866667' AS DateTime2), N'8361a487-deb3-48ec-a3e7-55773319d90c', N'3eb5e2e9-f2ff-4223-bcf2-925c8f27d955', N'db625840-91ff-48e9-810b-3c2dded3b584')
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ShippedDate], [CustomerId], [StockId], [StaffId]) VALUES (N'131bf6fc-8e94-4a06-8312-f981b3ff1b7a', CAST(N'2022-01-13T11:54:38.9733333' AS DateTime2), CAST(N'2022-01-13T11:54:38.6800000' AS DateTime2), N'5c0298c7-f68d-4b34-b1ec-0559df81b12a', N'faf29273-2009-4718-84e2-c214f38bea8a', N'bea9a29a-baac-44fe-aee6-2020a0e0333d')
GO
INSERT [dbo].[Staff] ([StaffId], [Name], [Phone], [Email], [Role]) VALUES (N'ef2e6070-224c-4a28-ad12-1c8eb706f94c', N'Elsworth Bidnall', N'497-244-4986', N'ebidnall3@oracle.com', N'Sales')
INSERT [dbo].[Staff] ([StaffId], [Name], [Phone], [Email], [Role]) VALUES (N'bea9a29a-baac-44fe-aee6-2020a0e0333d', N'Alasdair Jonk', N'604-983-3986', N'ajonk2@scribd.com', N'Sales')
INSERT [dbo].[Staff] ([StaffId], [Name], [Phone], [Email], [Role]) VALUES (N'db625840-91ff-48e9-810b-3c2dded3b584', N'Maye Armer', N'236-338-3504', N'marmer4@prlog.org', N'Sales')
INSERT [dbo].[Staff] ([StaffId], [Name], [Phone], [Email], [Role]) VALUES (N'a49d6f5f-dedf-45d7-b581-7160601935b8', N'Eddie Nuccii', N'791-120-2390', N'enuccii1@cdbaby.com', N'Sales')
INSERT [dbo].[Staff] ([StaffId], [Name], [Phone], [Email], [Role]) VALUES (N'680a45ad-3cc2-4fa8-a8cf-9a048abe5344', N'Philippa Leirmonth', N'326-836-3843', N'pleirmonth0@bbc.co.uk', N'Sales Manager')
GO
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'71f442a6-9a51-413b-a610-03d5ddcb4a10', N'Maxxis Assegai 27.5 x 2.5 Mountain Bike Tire', N'The Assegai tire is designed primarily for downhill racing and aggressive trail riding in mixed conditions. The knob height falls between the Minion DHR II and the Shorty. Like the Minion tires, the center knobs are heavily ramped on the leading edge to reduce rolling resistance. A small knob located between the center tread and side knobs provides a smooth transition while cornering. The Assegai offers predictable traction, even over slippery roots and rocks.', N'Tire', 79, 100)
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'7ba9f8a2-3bdc-433c-a996-1c83f41c49d6', N'Giro JAG Cycle Gloves - Black', N'The Jag sets a higher standard for entry-level performance cycling gloves, with plush EVA padding that is complemented by Giro’s exceptional Super Fit ergonomic design and high-quality construction. It’s a great choice for riders who want a lightly padded glove with understated style that offers fit and comfort that rival gloves costing twice as much.', N'Gloves', 34, 100)
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'c84a9c41-3f2e-4208-9e5b-222bfb871f50', N'Bike Head Light', N'50 Lumen headlight for night riding', N'Headlight', 50, 2)
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'5c3d99e7-7544-4802-bb27-238e6cade6c4', N'OnTrack Puncture Repair Kit', N'Dont cut your ride short because of punctures!The OnTrack puncture repair kit has everything needed to get you up and running again.', N'Patch', 3, 100)
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'c843c3d5-b437-48ed-81e8-263d5d2b0e0a', N'Continental Ride Tour 700c Bike Tire', N'Anyone looking for a reliable everyday companion will go for a tire with EXTRA PunctureBelt. This rugged rubber breaker, combined with the rubber-reinforced sidewalls of the tire, ensures a high level of puncture protection and sidewall abrasion. Where durability is the main focus, there is also a solid tire version.', N'Tire', 24, 100)
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'983ff789-58b7-459d-b010-2c9c7de3271a', N'Planet Bike Mens A.R.S. Classic Anatomic Saddle - Black', N'The A.R.S. Classic has been keeping cyclists comfortable for decades. Its sporty good looks and anatomic relief features give you great comfort and support on short and long rides, alike. Its weather-resistant cover keeps moisture out so you can ride in comfort in any conditions.', N'Saddle', 34, 100)
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'e5dfaf20-97d6-4db8-9c9a-2dced51ba14e', N'Giant 700c Thorn-Resistant Schrader Valve Tube', N'Prevent flats with thorn resistant tubes - pesky goathead thorns are a common nuisance on the trails and roads of Southern California ', N'Tube', 14, 100)
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'573d76fd-ef86-4a57-b71a-3480f24cb966', N'Schwalbe Marathon Plus Bike Tire: 27.5 x 1.50", Wire Bead, Performance Line, Endurance Compound, SmartGuard, Black/Reflect', N'The Schwalbe Marathon Tires incorporate light-reflecting sidewalls for better visibility and also utilizes a Silica compound for easy rolling and longer life.', N'Tire', 44, 100)
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'1eb87ea2-5e4b-4957-a1cc-3f8485e7b744', N'Serfas Drifter 27.5" Bike Tire', N'Ride where you want, when you want! One of our most popular tires, the Serfas Drifter bike tire gives you the best of both worlds because it is designed to handle both pavement and light-duty trails.', N'Tire', 35, 100)
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'9a19fff7-b1c6-4bff-a6a8-44712fb19341', N'Maxxis Highroller II Dual EXO/TR 27.5 x 2.3" Folding Mountain Bike Tire', N'The High Roller II has an open and aggressive tread design for excellent soil penetration and mud clearing ability.r', N'Tire', 64, 100)
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'24034884-5819-4543-a0e3-4f60f30551f0', N'Speed Steel Bike Saddle', N'This best-selling saddle utilizes a shock absorbing, dual compound Soft-Shell base to provide unparalleled comfort at an excellent value. Supportive padding and mid dimensions make for a near fool-proof favorite at a dont-think-about-it-twice price.', N'Saddle', 44, 100)
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'bb1d75ea-57dc-4a68-96f2-576fd506e31e', N'Serfas DDL-CT Dual Density® Women’s Comfort Bike Seat', N'The Serfas® Dual Density® line of saddles is constructed using our patented I.C.S. (Infinite Comfort System) technology. Made up of a soft flexible rubber base followed by two layers of soft and firm closed cell foam, and a final top layer of friction reducing Reactive Gel® covered in moisture-wicking four-way stretch Silk-Tech Lycra.', N'Saddle', 44, 100)
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'8bfa993b-76e6-47d8-a4b2-61ae1d0a9cee', N'Serfas Super Cruiser Bike Saddle', N'This thing is HUGE in stature and COMFORT. The Serfas CRS-1 Super Cruiser is the largest saddle available with rails! Features rear elastomer suspension, full suspension base, progressive foam technology, Deep Groove™ Design, heavy duty steel rails, and four-way stretch moisture-wicking Lycra cover.', N'Saddle', 84, 100)
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'497f9ac9-3492-475b-9da1-62bd51cb6219', N'Serfas Hybrid Bike Weatherproof Saddle Pad', N'The World’s Most Technologically Advanced Saddle Pad. Lifetime Weatherproof Guarantee.', N'Saddle', 29, 100)
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'69e88ef9-25a0-4c19-9727-6558c7507a36', N'Bontrager Charger Floor Pump - Black', N'Nothing slows a cyclist down like an inappropriate amount of tire inflation. Loaded with features like a stable, tip-resistant base, a durable steel barrel, and an auto-select head, the Charger stands ready whenever your tires need a little boost.', N'Pump', 49, 100)
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'371d080d-b923-41d6-9720-718579401436', N'Blackburn Tradesman Multi Tool', N'Why has no one invented a multitool that removes chain quick link? Oh wait, we have. All the hex and Torx keys youre ever going to need in a portable tool, with the addition of a disc pad spreader and a tool thatll remove the stubbornest split links.The selection, length and placement of each tool has been carefully thought out so that you have the right tool and can easily use it. Weve included the basic tools needed for quick and easy cockpit and shifting adjustments. Why carry around more bulk than you have to? This product is designed for the minimalist in you. This tool includes T or L handle wrenches that allow you to get a better purchase on bolts. Includes a stylish carrying case, specifically built for this product.', N'Tool', 49, 100)
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'0f055894-8571-4e54-b185-734048f5e020', N'Torpedo7 Double Action Pump', N'As the name suggests the double action pumps inflates on both pull and push strokes. With a collection of nozzles this pump from Torpedo7 will always keep you inflated.', N'Pump', 29, 100)
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'23dd95dd-767b-4bcc-944c-7472f73708d2', N'Bike Head Light', N'50 Lumen headlight for night riding', N'Headlight', 200, 1)
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'eab05912-1670-4983-bd45-764427ab260e', N'Ultra Cycle Comfort Gel Mountain Bike Seat', N'A mountain bike saddle with ergonomic cutout design with a pressure relief zone and comfortable gel layer to keep you comfortable for many miles to come.', N'Saddle', 34, 100)
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'3eb5e2e9-f2ff-4223-bcf2-925c8f27d955', N'Lezyne Smart Patch Kit', N'The Lezyne Smart Kit has a low profile polypropylene case makes this patch kit ideal for race situations. The glueless patches conform to inflated tubes with an aggressive adhesive making them a permanent repair. The patch kit instructions have an adhesive backing to serve as emergency tire boot. The kit includes a stainless steel scuffer.', N'Patch', 7, 100)
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'699c3cb5-131a-4562-958f-98f9e70baf1f', N'Giant 700c Presta Valve Bike Tube 80mm w/ Removable Core - 700 x 20-25', N'Giants inner tubes are made from high-quality, standard weight rubber so you can keep on rolling.', N'Tube', 9, 100)
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'748535cf-34f5-4ae9-a0a1-9ad3a2d2c91d', N'Topeak Shuttle 1.1 Tyre Lever Set', N'Topeak Shuttle 1.1 Tyre Lever set is a set of professional tyre levers; made from engineering grade plastic. They are Rigid, Strong and Durable.They measure just 10.8cm in length and weigh only 28 grams for the pair, so chuck them in a saddle bag, hydration pack or in your jersey pocket.', N'Tool', 14, 100)
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'97712565-23c7-4c09-802e-a0b41af92744', N'Ultra Cycle Mountain Comfort Gel 270 Unisex Vinyl Bike Saddle', N'Mountain saddle with ergonomic cutout design, Pressure relief zone, Comfortable gel layer', N'Saddle', 34, 100)
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'1a1b4d65-0ab7-40ca-8200-a341a884ac5b', N'WTB Speed She Womens Bike Saddle', N'This female-focused saddle has become one of our most popular models with its ergonomic shape, smooth curves and low-profile stitching. Its wide and rounded, fall-away profile make the Speed She an easy-to-ride, easy-to-maneuver womens saddle.', N'Saddle', 50, 100)
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'd3cfa827-40f9-40e9-ae94-a98166dd9f6f', N'Torpedo7 Multi Tool 20 - Matte Black', N'A comprehensive multi tool is a must have item when out on a ride. Whether it be cruising your favourite downhill, or halfway around Taupo, having a multi tool packed away can save you from that emergency phone call or long walk home. Made from aluminium and stainless steel, this Torpedo7 Multi Tool is lightweight and durable, and with it’s compact size, folds away neatly to fit in your caddy or pack.', N'Tool', 44, 100)
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'112149e9-706c-4854-bcf1-b040507552f4', N'Topeak Pocket Shock DXG Shock Bike Pump', N'Finished to Topeak’s usual high standards, the DXG shock pump is yet another champion in their stable. A winner of a Eurobike show award in its year of release 2005, the DXG is still at the top of the list when it comes to quality high pressure pumps. Featuring a carbon dial for a bit of bling as well as featuring a bleeder valve and pressure rite connector which makes getting an accurate pressure a breeze and no air loss when removing.', N'Pump', 79, 100)
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'edcb8fb1-54d0-4ba1-97e6-b5fb5703f28f', N'Maxxis Minion DHR II 27.5 x 2.4" Folding Mountain Bike Tire - Tubeless Ready - Wide', N'The Minion DHR Wide Trail has a large volume casing and an all condition tread pattern to deliver maximum control in loose and muddy conditions', N'Tire', 79, 100)
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'dde104cd-3d1d-4b8e-976a-b6038f0c523e', N'WTB Silverado Bike Seat - Steel Rails', N'The Silverado is one of WTB’s most iconic and revered saddle shapes. Light-weight and slim, the design oozes speed while proving to be incredibly comfortable. Ride a Silverado and you’ll quickly know what everyone’s raving about.', N'Saddle', 44, 100)
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'faf29273-2009-4718-84e2-c214f38bea8a', N'Giant Contact City+ Unisex Saddle', N'Center Zone Cut provides release pressure on the body’s soft tissue areas
Lighter, water-resistant seamless synthetic cover', N'Saddle', 44, 100)
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'c8cf42b4-96e6-4067-abe2-c47f52e76892', N'Continental Ultra Gatorskin Bike Tire 700 x 23c', N'The Continental Gator skin has been around for quite some time now. While Continental has various other well-respected models in their lineup, the Gatorskin is well known in the biking world for being a rugged, heavy-duty tire made of a durable rubber compound and a puncture-resistant insert that significantly reduces the chances of getting a flat while you are out on your ride.', N'Tire', 54, 100)
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'dc0e8722-d123-475a-b715-cd58a92cc699', N'Topeak Pedal Wrench 15mm', N'15mm open end wrench tool for installation, removal and maintenance of pedals. Offset angle keeps knuckles away from crank arms and chainrings. Long padded handle for better leverage and comfortable use', N'Tool', 49, 100)
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'4773e4ac-a66f-486d-9212-d2237bac7531', N'Giant Contact Comfort+ Saddle', N'Giants Connect Comfort Saddle is ideal for shorter commutes and weekend fitness rides. It wide base with plush padding makes riding comfortable. Plus, the water-resistant synthetic top and steel rails make this one tough, durable saddle.', N'Saddle', 44, 100)
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'c0a714b3-b6e6-4843-a9bd-d3d1492b15cc', N'Topeak Mini 20 Pro Black Bike Multi Tool', N'The lightweight, high-strength forged alloy body resists torque during hard use and its pro-quality hardened steel tools will provide years of service. T10 and T25 Torx bits simplify hydraulic disc brake work. An integrated, cast CrMo chain tool nestles and locks between the tool body forming a low profile, snag-proof shape. The perfect tool for endurance racing, training and touring', N'Tool', 69, 100)
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'54b4088c-d4d4-4a87-a0af-d9ec7cd8bce1', N'Slime Self-Sealing Presta Valve Bike Tube', N'Slime self-sealing bike tubes have been saving bike tires for more than 30 years. Coated with Slime tube sealant Slimes self-sealing tubes protect you from nails, thorns and other hazards for up to two years by instantly sealing punctures. Stops punctures from ruining your ride and keeps you going!', N'Tube', 13, 100)
INSERT [dbo].[Stock] ([StockId], [ProductName], [ProductDescription], [ProductType], [Price], [Quantity]) VALUES (N'a8e6dc83-d35f-48e9-92e1-ebb43810fabc', N'Continental Ultra Sport Bike Tire 700 x 25c', N'The Ultra Sport is a road tire built to Continentals exacting standards for the perfect blend of function, weight and puncture resistance. It sports a strong and supple 84 thread-per-inch, 3-ply casing and is at home in all situations, from miles of training to amateur racing to fast centuries.', N'Tire', 24, 100)
GO
ALTER TABLE [dbo].[Customer] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [OrderId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer_CustomerId]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Staff_StaffId] FOREIGN KEY([StaffId])
REFERENCES [dbo].[Staff] ([StaffId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Staff_StaffId]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Stock_StockId] FOREIGN KEY([StockId])
REFERENCES [dbo].[Stock] ([StockId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Stock_StockId]
GO
