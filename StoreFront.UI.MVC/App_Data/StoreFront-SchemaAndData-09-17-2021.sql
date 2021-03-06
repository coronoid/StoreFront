/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.5026)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Games]') AND type in (N'U'))
ALTER TABLE [dbo].[Games] DROP CONSTRAINT IF EXISTS [FK_Games_Platforms]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Games]') AND type in (N'U'))
ALTER TABLE [dbo].[Games] DROP CONSTRAINT IF EXISTS [FK_Games_GameStatuses]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Games]') AND type in (N'U'))
ALTER TABLE [dbo].[Games] DROP CONSTRAINT IF EXISTS [FK_Games_Companies]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employees]') AND type in (N'U'))
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT IF EXISTS [FK_Employees_Departments]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  Table [dbo].[Platforms]    Script Date: 9/17/2021 2:31:33 PM ******/
DROP TABLE IF EXISTS [dbo].[Platforms]
GO
/****** Object:  Table [dbo].[GameStatuses]    Script Date: 9/17/2021 2:31:33 PM ******/
DROP TABLE IF EXISTS [dbo].[GameStatuses]
GO
/****** Object:  Table [dbo].[Games]    Script Date: 9/17/2021 2:31:33 PM ******/
DROP TABLE IF EXISTS [dbo].[Games]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 9/17/2021 2:31:33 PM ******/
DROP TABLE IF EXISTS [dbo].[Employees]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 9/17/2021 2:31:33 PM ******/
DROP TABLE IF EXISTS [dbo].[Departments]
GO
/****** Object:  Table [dbo].[Companies]    Script Date: 9/17/2021 2:31:33 PM ******/
DROP TABLE IF EXISTS [dbo].[Companies]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 9/17/2021 2:31:33 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 9/17/2021 2:31:33 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 9/17/2021 2:31:33 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 9/17/2021 2:31:33 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 9/17/2021 2:31:33 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 9/17/2021 2:31:33 PM ******/
DROP TABLE IF EXISTS [dbo].[__MigrationHistory]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 9/17/2021 2:31:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__MigrationHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 9/17/2021 2:31:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 9/17/2021 2:31:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 9/17/2021 2:31:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 9/17/2021 2:31:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 9/17/2021 2:31:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Companies]    Script Date: 9/17/2021 2:31:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Companies]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Companies](
	[CompanyID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](15) NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 9/17/2021 2:31:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Departments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Departments](
	[DeptID] [int] NOT NULL,
	[DeptName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[DeptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 9/17/2021 2:31:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employees]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](15) NULL,
	[LastName] [nvarchar](20) NULL,
	[Title] [nvarchar](20) NULL,
	[Pronouns] [nvarchar](9) NULL,
	[DirectReportID] [int] NULL,
	[DeptID] [int] NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Games]    Script Date: 9/17/2021 2:31:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Games]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Games](
	[GameID] [int] IDENTITY(1,1) NOT NULL,
	[GameTitle] [nvarchar](30) NULL,
	[PlatformID] [int] NULL,
	[Price] [money] NULL,
	[UnitsSold] [int] NULL,
	[ReleaseDate] [date] NULL,
	[CompanyID] [int] NULL,
	[GameStatusID] [int] NULL,
 CONSTRAINT [PK_Games] PRIMARY KEY CLUSTERED 
(
	[GameID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[GameStatuses]    Script Date: 9/17/2021 2:31:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GameStatuses]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GameStatuses](
	[GameStatusID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](20) NULL,
 CONSTRAINT [PK_GameStatuses] PRIMARY KEY CLUSTERED 
(
	[GameStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Platforms]    Script Date: 9/17/2021 2:31:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Platforms]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Platforms](
	[PlatformID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NULL,
 CONSTRAINT [PK_Platforms] PRIMARY KEY CLUSTERED 
(
	[PlatformID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202109171917441_InitialCreate', N'StoreFront.UI.MVC.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE336107D2FD07F10F4D416592B97EE621BD85B649DA40DBAB9609D2CFAB6A025DA1156A2B412952628FA657DE827F5173A94A81B2FBAD88AED14058A581C9E190E0FC92139DC7FFFFE67FCF3A3EF190F388ADD804CCC83D1BE696062078E4B961333A18B576FCD9FDF7DFBCDF8CCF11F8D4FB9DC1193839A249E98F79486C79615DBF7D847F1C877ED288883051DD9816F2127B00EF7F77FB20E0E2C0C10266019C6F86342A8EBE3F407FC9C06C4C6214D90771938D88BF9772899A5A8C615F2711C221B4FCC190D227C1E05848EEE2E46979FA6A3AC8E699C782E027B66D85B98062224A08882B5C777319E51A8B09C85F00179B74F2106B905F262CC5B715C8A776DD0FE216B905556CCA1EC24A681DF13F0E0887BC812ABAFE467B3F020F8F00C7C4D9F58AB533F4ECC0B07A79F3E061E384054783CF522263C312F0B1527717885E928AF38CA20CF2380FB2388BE8CAA887B46E77A7B05A30E47FBECBF3D639A783489F084E08446C8DB336E92B9E7DABFE1A7DBE00B2693A383F9E2E8EDEB37C8397AF3233E7A5D6D29B415E46A1FE0D34D14843802DBF0A268BF6958F57A9658B1A856A9937905B80483C3342ED1E3074C96F41E86CDE15BD338771FB1937FE1E4BA232E8C25A844A3047E5E259E87E61E2ECAAD469DECFF0D5A0F5FBF1944EB157A709769D70BFA61E04430AE3E622F2D8DEFDD301B5EB5FEFECCC5604CFAEC779D5F59E9E7599044366B4CA015B945D112D3BA7563AB246F274A33A8E1699DA3EE3EB599A532BD95A2AC41AB8C845CC5A647436EEFF3EAEDCCB8933084CE4BA9C53CD24438DD92351230F68C52B2E4CF4157FE1068D7FF793A3CF391EB0D301F76D00201C9C28D7C5CB4F27D00EC43A4B7CD37288E613A707E45F17D83E9F0E700A6CFB09D44C0D219457EF8ECDA6EEE0382AF127FCEC8BF395D8375CDED1FC139B261C09D11566B6DBC0F81FD2548E819714E11C577D4CE01D9CF5BD7EF0E30883927B68DE3F81CC88C9D6900F1760E7841E8D1616F38363F6D3B1E997AC8F5D5018930937ECE45CBA0442D2105261A315570D264EA8760E9926EA6E6A27A5333895653B9585F531958374BB9A4DED054A0D5CE4C6AB0702FEDA1E1E3BD1476F703BEF5166FDD5C5071631A92FC82098E601A736E10A53822650F749937B6112CA4DDC7943EFBDA946AFA84BC6468552B8D867412187E34A4B0BB3F1A5233E1F383EBB0A8A4C32E281706F84EF2EA0D56FB98132CDBF470A83573D3CA373307E886CB491C07B69B8E02C5F9173FBDA8DB0F319CD17E9491B5463C0E818601D15DB6E4C117689B2992EA9A9C620F536C9CD8D9F9E014C53672643742839C1E86E52BAAC2B0F258A46EDC0F924E603A8E5825C43641318C5497507958B8C47643E4B57A49A8D97109636D2F748825A738C484296CF54417E5EA53106640A147E894360F8DAD0AE39A89A8895A757DDE16C296FD2E1D4E6C84932DB1B386973C7E7B1662367B6C03E46C76491703B4277ADB2028DFAB742580B871D935820A3B260D417948B51182D63DB60582D65DF2E2089A6D51BBF6BFB05FDD357AD637CA9B5FD61BDDB5056ED6FCB163D4CC624FA843A1068E647A9ECE59217EA48ACD19D8C9F767310F75458A30F019A6F5239B32DE55C6A156338848A226C092682DA0FC2E50029206540FE3F2B3BC46EB7814D103363F776B84E573BF005BE1808C5DBD13AD08EA6F4E457276DA7D142D2BD82091BCD366A182A320843879D51BDEC129BA7359D9315D62E13ED170A561BC331A1CD412B96A9C943766702FE5D46CF7922A20EB1392ADE525217CD278296FCCE05EE21C6D77922228E81116ACE5A2FA123ED060CB4F3A8AD5A6281B5B59C214FF30B6349955E34B14862E595632ADF8176396A5594D5FCDFA671EF9198665C78A04A4C2DA42130D22B4C44229A8064BCFDD28A6A788A23962E73C53C797C4946BAB66FACF5556974FB913F3752097667FF39B55DD0D7E6DC59543128E740EEDF4595C93E22858A0AE6EB0FC37E4A148717E3F0DBCC427FA304B5F3BBBC5ABD6CFBEC808634BB05F0AA3249F49C16EBD033A758F3C3406EDAA229659BDBBF4103AA7E79168D5EDBAE8548F921F5655517407585BEB3E5D50B34297895163FF1E6B45789E31C65355AA00FC534F8C4AB683045629EB8E5A4F48A962D64BBA230A59275548A1A88795D5DC929A91D58295F0341E554B74D720679354D1E5D2EEC88ABC922AB4A278056C85CD6259775445EA49155851DC1DBBCC4311A7D21D5EC5B47B993597B16CD3BBDE3AA6C1789E79719865B072B75F05AA7CEE89C56FEF2530FE7D2739A5DDF9ADC9A9ECC4633D4E6930F4B350ED6EBC3E09355EE8EB316B17DEB589BEE9C25F8FD78FB9CFCA0F69FB278A14DA8B6DA0B0DD1BF3AD57FB6B1B692F96899846EE4660D5534CB13F6202A3D9576FEAB9984DE9B9C02522EE02C7344BF2300FF70F0E85A73ABBF36CC68A63C7536C5D756F67EA7DB6817C2DF28022FB1E4572F6C41A4F4B4A50E960FA8238F87162FE99D63A4ECF38D85FE9E73DE322BE23EED7040A6EA3041B7FC9D9A0C3A4DA7778DC5118FAD78B7835D1DDE517BF7FCEAAEE19D7110CA763635F70F42ADD5F7F4BD1CB9AACEA1AD6ACFCC2E2E58EB6DACB0525AA305A567FA83077E9208F14722BBFF3D1E3F77D4D533E44580B51F1D86028BC415CA87B4CB00A96F62181033F69FA90A05F63D50F0B56314DFBA8C025FDC1C42705DDA7A1BCE616D721C5B669135352EAE7D694ECB5F233B7BD364999DB6B0D74393BBB07DCA019D8EB85282F2CB379B0A55391B83C18F63679FFECD9CABB92A05C06EDDBCD4BDE642A72C315D3FF2A03790772E6143940DBCF33DE34D774E7C03B9EACD92F9B78C7C8C697F9EDE70C6F9A6CBA03E21D275BAFCCE01DE3DAB6D6CF2D33ADF312BAF53C5F396549739FA33A456ECBE3CD8EDC61FB3F0F80045944993DBF54278E3525BDB6282C45F44AF5196BA26269E0487A258966B5FDDACA17FCC6C6729966B59A3CCF26DD7CFE6FD4CD659A756BB227B79181ACCC5F546585B7CC634D09552F29E3B8D6929604F7B698B5F172FE2525180FE294DAE8D1DC2EBF9C7CE2415C32E4D0E9913F2C5F14C3DA59F9C71B61FD8EDD6509C1FE294782EDDAAA59C85C9045902FDE8245B98870427389297260493D89A8BB4036856276009DBE1F4F0FF5D835C81C3B17E43AA16142A1C9D89F7BB5032F160434E94F93A4EB368FAF43F62B1EA20960A6CB0EEEAFC9FBC4F59CC2EE73C5999006824517FCB897F52565C7BECBA702E92A201D81B8FB8AA0E816FBA10760F13599A107BC8A6D40BF0F7889ECA7F2045007D2DE1175B78F4F5DB48C901F738CB23EFC040E3BFEE3BBFF002DB0F3F2C3540000, N'6.2.0-61023')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'242c1440-597f-4f37-b7d9-b3a66250a073', N'Admin')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ef4ba612-57ba-4e21-b6ed-f4010bb3a43a', N'242c1440-597f-4f37-b7d9-b3a66250a073')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'ef4ba612-57ba-4e21-b6ed-f4010bb3a43a', N'admin@example.com', 0, N'AKZ8kk1tQ9M8M5QNQjtiGtZcBRYZiuuQa0pxh/WBYZKbOXSJevTsL90nyio6E+dorA==', N'dcd6628c-1e46-4848-903e-d5a616215140', NULL, 0, 0, NULL, 0, 0, N'admin@example.com')
SET IDENTITY_INSERT [dbo].[Companies] ON 

INSERT [dbo].[Companies] ([CompanyID], [CompanyName]) VALUES (1, N'2K')
INSERT [dbo].[Companies] ([CompanyID], [CompanyName]) VALUES (2, N'Naughty Dog')
INSERT [dbo].[Companies] ([CompanyID], [CompanyName]) VALUES (3, N'Nintendo')
INSERT [dbo].[Companies] ([CompanyID], [CompanyName]) VALUES (4, N'Pyramid')
SET IDENTITY_INSERT [dbo].[Companies] OFF
INSERT [dbo].[Departments] ([DeptID], [DeptName]) VALUES (1, N'Management')
INSERT [dbo].[Departments] ([DeptID], [DeptName]) VALUES (2, N'Finance')
INSERT [dbo].[Departments] ([DeptID], [DeptName]) VALUES (3, N'Floor')
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Title], [Pronouns], [DirectReportID], [DeptID]) VALUES (1, N'Magdelena', N'Kostadinova', N'Manager', N'She/her', NULL, 1)
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Title], [Pronouns], [DirectReportID], [DeptID]) VALUES (2, N'Molly', N'Belle', N'Asst. Manager', N'She/her', 1, 1)
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Title], [Pronouns], [DirectReportID], [DeptID]) VALUES (3, N'Ciaran', N'Haywood', N'Stocker', N'He/him', 2, 3)
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Title], [Pronouns], [DirectReportID], [DeptID]) VALUES (4, N'Dave', N'McAdam', N'Stocker', N'He/him', 2, 3)
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Title], [Pronouns], [DirectReportID], [DeptID]) VALUES (5, N'Riley', N'Johnson', N'Cashier', N'They/them', 2, 2)
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Title], [Pronouns], [DirectReportID], [DeptID]) VALUES (6, N'Sonja', N'DeWitt', N'Cashier', N'She/her', 2, 2)
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Title], [Pronouns], [DirectReportID], [DeptID]) VALUES (7, N'Ryan', N'Dilbert', N'Stocker', N'He/him', 2, 3)
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Title], [Pronouns], [DirectReportID], [DeptID]) VALUES (8, N'Katie', N'Brady', N'Stocker', N'She/her', 2, 3)
SET IDENTITY_INSERT [dbo].[Employees] OFF
SET IDENTITY_INSERT [dbo].[Games] ON 

INSERT [dbo].[Games] ([GameID], [GameTitle], [PlatformID], [Price], [UnitsSold], [ReleaseDate], [CompanyID], [GameStatusID]) VALUES (2, N'Bioshock', 1, 40.0000, 278, CAST(N'2007-08-24' AS Date), 1, 1)
INSERT [dbo].[Games] ([GameID], [GameTitle], [PlatformID], [Price], [UnitsSold], [ReleaseDate], [CompanyID], [GameStatusID]) VALUES (10, N'Left 4 Dead 2', 2, 30.0000, 234, CAST(N'2009-11-17' AS Date), 2, 1)
INSERT [dbo].[Games] ([GameID], [GameTitle], [PlatformID], [Price], [UnitsSold], [ReleaseDate], [CompanyID], [GameStatusID]) VALUES (11, N'Animal Crossing City Folk', 3, 25.0000, 255, CAST(N'2008-11-16' AS Date), 3, 1)
INSERT [dbo].[Games] ([GameID], [GameTitle], [PlatformID], [Price], [UnitsSold], [ReleaseDate], [CompanyID], [GameStatusID]) VALUES (31, N'Patapon', 4, 20.0000, 234, CAST(N'2008-02-26' AS Date), 3, 1)
SET IDENTITY_INSERT [dbo].[Games] OFF
SET IDENTITY_INSERT [dbo].[GameStatuses] ON 

INSERT [dbo].[GameStatuses] ([GameStatusID], [Status]) VALUES (1, N'In Stock')
INSERT [dbo].[GameStatuses] ([GameStatusID], [Status]) VALUES (2, N'Out of Stock')
INSERT [dbo].[GameStatuses] ([GameStatusID], [Status]) VALUES (3, N'Backordered')
INSERT [dbo].[GameStatuses] ([GameStatusID], [Status]) VALUES (4, N'To Be Released')
SET IDENTITY_INSERT [dbo].[GameStatuses] OFF
SET IDENTITY_INSERT [dbo].[Platforms] ON 

INSERT [dbo].[Platforms] ([PlatformID], [Name]) VALUES (1, N'PlayStation 3')
INSERT [dbo].[Platforms] ([PlatformID], [Name]) VALUES (2, N'Xbox 360')
INSERT [dbo].[Platforms] ([PlatformID], [Name]) VALUES (3, N'Nintendo Wii')
INSERT [dbo].[Platforms] ([PlatformID], [Name]) VALUES (4, N'PSP')
SET IDENTITY_INSERT [dbo].[Platforms] OFF
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Employees_Departments]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employees]'))
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Departments] FOREIGN KEY([DeptID])
REFERENCES [dbo].[Departments] ([DeptID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Employees_Departments]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employees]'))
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Departments]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Games_Companies]') AND parent_object_id = OBJECT_ID(N'[dbo].[Games]'))
ALTER TABLE [dbo].[Games]  WITH CHECK ADD  CONSTRAINT [FK_Games_Companies] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Companies] ([CompanyID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Games_Companies]') AND parent_object_id = OBJECT_ID(N'[dbo].[Games]'))
ALTER TABLE [dbo].[Games] CHECK CONSTRAINT [FK_Games_Companies]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Games_GameStatuses]') AND parent_object_id = OBJECT_ID(N'[dbo].[Games]'))
ALTER TABLE [dbo].[Games]  WITH CHECK ADD  CONSTRAINT [FK_Games_GameStatuses] FOREIGN KEY([GameStatusID])
REFERENCES [dbo].[GameStatuses] ([GameStatusID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Games_GameStatuses]') AND parent_object_id = OBJECT_ID(N'[dbo].[Games]'))
ALTER TABLE [dbo].[Games] CHECK CONSTRAINT [FK_Games_GameStatuses]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Games_Platforms]') AND parent_object_id = OBJECT_ID(N'[dbo].[Games]'))
ALTER TABLE [dbo].[Games]  WITH CHECK ADD  CONSTRAINT [FK_Games_Platforms] FOREIGN KEY([PlatformID])
REFERENCES [dbo].[Platforms] ([PlatformID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Games_Platforms]') AND parent_object_id = OBJECT_ID(N'[dbo].[Games]'))
ALTER TABLE [dbo].[Games] CHECK CONSTRAINT [FK_Games_Platforms]
GO
