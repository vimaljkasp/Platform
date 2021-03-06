USE [PlatformDB]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ProcutStock_ProductSiteMapping]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductStock]'))
ALTER TABLE [dbo].[ProductStock] DROP CONSTRAINT [fk_ProcutStock_ProductSiteMapping]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ProductSiteMapping_Site]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductSiteMapping]'))
ALTER TABLE [dbo].[ProductSiteMapping] DROP CONSTRAINT [fk_ProductSiteMapping_Site]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ProductSiteMapping_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductSiteMapping]'))
ALTER TABLE [dbo].[ProductSiteMapping] DROP CONSTRAINT [fk_ProductSiteMapping_Product]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ProductSiteMapping_Item]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductSiteMapping]'))
ALTER TABLE [dbo].[ProductSiteMapping] DROP CONSTRAINT [fk_ProductSiteMapping_Item]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_Sales_ProductSiteMapping]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductSales]'))
ALTER TABLE [dbo].[ProductSales] DROP CONSTRAINT [fk_Sales_ProductSiteMapping]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ProductOrderDetail_ProductSiteMapping]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductOrderDetail]'))
ALTER TABLE [dbo].[ProductOrderDetail] DROP CONSTRAINT [fk_ProductOrderDetail_ProductSiteMapping]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ProductOrderDetail_ProductOrder]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductOrderDetail]'))
ALTER TABLE [dbo].[ProductOrderDetail] DROP CONSTRAINT [fk_ProductOrderDetail_ProductOrder]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ProductOrder_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductOrder]'))
ALTER TABLE [dbo].[ProductOrder] DROP CONSTRAINT [fk_ProductOrder_CustomerId]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Product__Product__267ABA7A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [DF__Product__Product__267ABA7A]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__EmployeeS__IsLog__38996AB5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[EmployeeSession] DROP CONSTRAINT [DF__EmployeeS__IsLog__38996AB5]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__CustomerS__IsLog__3A81B327]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CustomerSession] DROP CONSTRAINT [DF__CustomerS__IsLog__3A81B327]
END

GO
/****** Object:  Table [dbo].[SiteConfigurations]    Script Date: 19-08-2018 03:53:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SiteConfigurations]') AND type in (N'U'))
DROP TABLE [dbo].[SiteConfigurations]
GO
/****** Object:  Table [dbo].[Site]    Script Date: 19-08-2018 03:53:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Site]') AND type in (N'U'))
DROP TABLE [dbo].[Site]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 19-08-2018 03:53:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Roles]') AND type in (N'U'))
DROP TABLE [dbo].[Roles]
GO
/****** Object:  Table [dbo].[RoleModule]    Script Date: 19-08-2018 03:53:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RoleModule]') AND type in (N'U'))
DROP TABLE [dbo].[RoleModule]
GO
/****** Object:  Table [dbo].[ProductStock]    Script Date: 19-08-2018 03:53:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductStock]') AND type in (N'U'))
DROP TABLE [dbo].[ProductStock]
GO
/****** Object:  Table [dbo].[ProductSiteMapping]    Script Date: 19-08-2018 03:53:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductSiteMapping]') AND type in (N'U'))
DROP TABLE [dbo].[ProductSiteMapping]
GO
/****** Object:  Table [dbo].[ProductSales]    Script Date: 19-08-2018 03:53:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductSales]') AND type in (N'U'))
DROP TABLE [dbo].[ProductSales]
GO
/****** Object:  Table [dbo].[ProductOrderDetail]    Script Date: 19-08-2018 03:53:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductOrderDetail]') AND type in (N'U'))
DROP TABLE [dbo].[ProductOrderDetail]
GO
/****** Object:  Table [dbo].[ProductOrder]    Script Date: 19-08-2018 03:53:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductOrder]') AND type in (N'U'))
DROP TABLE [dbo].[ProductOrder]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 19-08-2018 03:53:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
DROP TABLE [dbo].[Product]
GO
/****** Object:  Table [dbo].[Module]    Script Date: 19-08-2018 03:53:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Module]') AND type in (N'U'))
DROP TABLE [dbo].[Module]
GO
/****** Object:  Table [dbo].[ItemCategory]    Script Date: 19-08-2018 03:53:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ItemCategory]') AND type in (N'U'))
DROP TABLE [dbo].[ItemCategory]
GO
/****** Object:  Table [dbo].[EmployeeSession]    Script Date: 19-08-2018 03:53:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeSession]') AND type in (N'U'))
DROP TABLE [dbo].[EmployeeSession]
GO
/****** Object:  Table [dbo].[EmployeeRole]    Script Date: 19-08-2018 03:53:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeRole]') AND type in (N'U'))
DROP TABLE [dbo].[EmployeeRole]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 19-08-2018 03:53:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
DROP TABLE [dbo].[Employee]
GO
/****** Object:  Table [dbo].[CustomerWallet]    Script Date: 19-08-2018 03:53:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerWallet]') AND type in (N'U'))
DROP TABLE [dbo].[CustomerWallet]
GO
/****** Object:  Table [dbo].[CustomerSession]    Script Date: 19-08-2018 03:53:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerSession]') AND type in (N'U'))
DROP TABLE [dbo].[CustomerSession]
GO
/****** Object:  Table [dbo].[CustomerPaymentTransaction]    Script Date: 19-08-2018 03:53:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerPaymentTransaction]') AND type in (N'U'))
DROP TABLE [dbo].[CustomerPaymentTransaction]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 19-08-2018 03:53:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
DROP TABLE [dbo].[Customer]
GO
USE [master]
GO
/****** Object:  Database [PlatformDB]    Script Date: 19-08-2018 03:53:06 ******/
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'PlatformDB')
DROP DATABASE [PlatformDB]
GO
/****** Object:  Database [PlatformDB]    Script Date: 19-08-2018 03:53:06 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'PlatformDB')
BEGIN
CREATE DATABASE [PlatformDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PlatformDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\PlatformDB.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PlatformDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\PlatformDB_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END

GO
ALTER DATABASE [PlatformDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PlatformDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PlatformDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PlatformDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PlatformDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PlatformDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PlatformDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [PlatformDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PlatformDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [PlatformDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PlatformDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PlatformDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PlatformDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PlatformDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PlatformDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PlatformDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PlatformDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PlatformDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PlatformDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PlatformDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PlatformDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PlatformDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PlatformDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PlatformDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PlatformDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PlatformDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PlatformDB] SET  MULTI_USER 
GO
ALTER DATABASE [PlatformDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PlatformDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PlatformDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PlatformDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [PlatformDB]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 19-08-2018 03:53:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](40) NOT NULL,
	[AddressLine1] [nvarchar](50) NULL,
	[AddressLine2] [nvarchar](50) NULL,
	[City] [nvarchar](20) NULL,
	[District] [nvarchar](20) NULL,
	[State] [nvarchar](40) NULL,
	[PostalCode] [nvarchar](20) NULL,
	[MobileNumber] [nvarchar](20) NOT NULL,
	[HomePhone] [nvarchar](20) NULL,
 CONSTRAINT [PK__Customer__A4AE64D8A5987A80] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CustomerPaymentTransaction]    Script Date: 19-08-2018 03:53:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerPaymentTransaction]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CustomerPaymentTransaction](
	[TransactionId] [bigint] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[PaymentCrAmount] [bigint] NULL,
	[PaymentDrAmount] [bigint] NULL,
	[PaymentDate] [datetime] NOT NULL,
	[PaymentReceivedBy] [nvarchar](50) NULL,
	[Ref1] [nvarchar](50) NULL,
	[Ref2] [nvarchar](50) NULL,
 CONSTRAINT [PK__Customer__55433A6B3C08E1B9] PRIMARY KEY CLUSTERED 
(
	[TransactionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CustomerSession]    Script Date: 19-08-2018 03:53:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerSession]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CustomerSession](
	[SessionId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[SessionStartDtm] [datetime] NOT NULL,
	[SessionEndDtm] [datetime] NOT NULL,
	[IsLogout] [bit] NULL,
 CONSTRAINT [PK__Customer__C9F49290E1376A59] PRIMARY KEY CLUSTERED 
(
	[SessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CustomerWallet]    Script Date: 19-08-2018 03:53:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerWallet]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CustomerWallet](
	[WalletId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[WalletBalance] [bigint] NOT NULL,
	[AmountDueDate] [datetime] NOT NULL,
 CONSTRAINT [PK__Customer__A4AE64D825A5558C] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 19-08-2018 03:53:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Employee](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](40) NOT NULL,
	[UserName] [nvarchar](40) NOT NULL,
	[Password] [nvarchar](40) NOT NULL,
	[AddressLine1] [nvarchar](50) NOT NULL,
	[AddressLine2] [nvarchar](50) NULL,
	[City] [nvarchar](20) NOT NULL,
	[District] [nvarchar](50) NULL,
	[PostalCode] [nvarchar](20) NOT NULL,
	[MobileNumber] [nvarchar](20) NOT NULL,
	[HomePhonne] [nvarchar](20) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK__Employee__C9F2845715311A82] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[EmployeeRole]    Script Date: 19-08-2018 03:53:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeRole]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EmployeeRole](
	[EmployeeId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK__Employee__C27FE3F0BD3872AC] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[EmployeeSession]    Script Date: 19-08-2018 03:53:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeSession]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EmployeeSession](
	[SessionId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NULL,
	[SiteId] [int] NULL,
	[SessionStartDtm] [datetime] NOT NULL,
	[SessionEndDtm] [datetime] NOT NULL,
	[IsLogout] [bit] NULL,
 CONSTRAINT [PK__Employee__C9F492903106A9A5] PRIMARY KEY CLUSTERED 
(
	[SessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ItemCategory]    Script Date: 19-08-2018 03:53:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ItemCategory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ItemCategory](
	[ItemId] [int] IDENTITY(1,1) NOT NULL,
	[ItemCode] [nvarchar](20) NULL,
	[ItemName] [nvarchar](40) NOT NULL,
	[ItemDescription] [nvarchar](50) NULL,
 CONSTRAINT [PK__Item__727E838B4DD664E2] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Module]    Script Date: 19-08-2018 03:53:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Module]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Module](
	[ModuleId] [int] NOT NULL,
	[ModuleName] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK__Module__2B7477A7C19C6495] PRIMARY KEY CLUSTERED 
(
	[ModuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Product]    Script Date: 19-08-2018 03:53:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Product](
	[ProductId] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductCode] [nvarchar](20) NULL,
	[ProductName] [nvarchar](40) NULL,
	[ProductDescription] [nvarchar](100) NULL,
	[ProductQuantity] [int] NULL,
	[ProductPrice] [bigint] NULL,
	[IsActive] [bit] NULL,
	[Ref1] [nvarchar](50) NULL,
	[Ref2] [nvarchar](50) NULL,
 CONSTRAINT [PK__Product__B40CC6CDF76CEBFC] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ProductOrder]    Script Date: 19-08-2018 03:53:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductOrder]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductOrder](
	[OrderId] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderPurchaseDtm] [datetime] NOT NULL,
	[OrderCustomerId] [int] NULL,
	[OrderPaymentMode] [int] NOT NULL,
	[OrderTotalQuantity] [int] NOT NULL,
	[OrderTotalPrice] [bigint] NOT NULL,
	[OrderTax] [bigint] NULL,
	[TotalAmount] [bigint] NULL,
	[OrderPriority] [nvarchar](50) NULL,
	[OrderAddress] [nvarchar](200) NULL,
	[OrderComments] [nvarchar](80) NULL,
	[Ref1] [nvarchar](50) NULL,
	[Ref2] [nvarchar](50) NULL,
 CONSTRAINT [PK__ProductO__C3905BCF4C8A4679] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ProductOrderDetail]    Script Date: 19-08-2018 03:53:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductOrderDetail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductOrderDetail](
	[ProductOrderDetailId] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NULL,
	[OrderProductId] [bigint] NULL,
	[OrderStatus] [int] NOT NULL,
	[OrderDeilveredDate] [datetime] NULL,
	[OrderDeilveredBy] [nvarchar](150) NULL,
	[VehicleNumber] [nvarchar](150) NULL,
	[DriverName] [nvarchar](150) NULL,
	[DriverNumber] [nvarchar](150) NULL,
	[JCBDriverNumber] [nvarchar](150) NULL,
	[RoyaltyNumber] [nvarchar](150) NULL,
	[Quantity] [numeric](18, 0) NULL,
	[UnitPrice] [bigint] NULL,
	[Total] [bigint] NULL,
	[Ref1] [nvarchar](50) NULL,
	[Ref2] [nvarchar](50) NULL,
 CONSTRAINT [PK_ProductOrderDetail] PRIMARY KEY CLUSTERED 
(
	[ProductOrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ProductSales]    Script Date: 19-08-2018 03:53:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductSales]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductSales](
	[SalesId] [bigint] IDENTITY(1,1) NOT NULL,
	[SalesDate] [date] NOT NULL,
	[SalesProductId] [bigint] NOT NULL,
	[SalesQuantity] [int] NOT NULL,
	[SalesPrice] [bigint] NOT NULL,
	[Ref1] [nvarchar](50) NULL,
	[Ref2] [nvarchar](50) NULL,
 CONSTRAINT [PK__Sales__DEE0F82A01E5150B] PRIMARY KEY CLUSTERED 
(
	[SalesDate] ASC,
	[SalesProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ProductSiteMapping]    Script Date: 19-08-2018 03:53:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductSiteMapping]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductSiteMapping](
	[ProductMappingId] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteId] [int] NOT NULL,
	[ItemId] [int] NOT NULL,
	[ProductId] [bigint] NOT NULL,
 CONSTRAINT [PK__ProductS__6F8176F647489215] PRIMARY KEY CLUSTERED 
(
	[ProductMappingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ProductStock]    Script Date: 19-08-2018 03:53:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductStock]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductStock](
	[StockId] [bigint] IDENTITY(1,1) NOT NULL,
	[StockDate] [date] NOT NULL,
	[StockProductId] [bigint] NOT NULL,
	[StockCreatedBy] [int] NOT NULL,
	[StockCreatedDtm] [datetime] NOT NULL,
	[StockQuantiy] [int] NOT NULL,
	[Ref1] [nvarchar](50) NULL,
	[Ref2] [nvarchar](50) NULL,
 CONSTRAINT [PK__ProductS__27BF069A2B5D3CC2] PRIMARY KEY CLUSTERED 
(
	[StockDate] ASC,
	[StockProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RoleModule]    Script Date: 19-08-2018 03:53:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RoleModule]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RoleModule](
	[RoleId] [int] NOT NULL,
	[ModuleId] [int] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 19-08-2018 03:53:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Roles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
	[RoleDescription] [nvarchar](100) NULL,
 CONSTRAINT [PK__Roles__8AFACE1A79825AB9] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Site]    Script Date: 19-08-2018 03:53:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Site]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Site](
	[SiteId] [int] IDENTITY(1,1) NOT NULL,
	[SiteCode] [nvarchar](10) NULL,
	[SiteName] [nvarchar](40) NOT NULL,
	[SiteAddress] [nvarchar](100) NULL,
	[SiteCity] [nvarchar](20) NOT NULL,
	[SiteState] [nvarchar](20) NOT NULL,
	[SiteZipCode] [nvarchar](10) NOT NULL,
	[SiteMobileNumber] [nvarchar](10) NOT NULL,
	[IsActive] [bit] NULL,
	[SiteDistrict] [nvarchar](20) NULL,
	[SiteHomePhone] [nvarchar](20) NULL,
 CONSTRAINT [PK__Site__B9DCB963DB4717D3] PRIMARY KEY CLUSTERED 
(
	[SiteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SiteConfigurations]    Script Date: 19-08-2018 03:53:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SiteConfigurations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SiteConfigurations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KeyData] [nvarchar](40) NOT NULL,
	[KeyName] [nvarchar](40) NOT NULL,
	[DataVal] [nvarchar](40) NOT NULL,
	[DefaultVal] [nvarchar](40) NOT NULL,
	[Description] [nvarchar](200) NULL,
 CONSTRAINT [PK__SiteConf__73525BEDD2907E57] PRIMARY KEY CLUSTERED 
(
	[KeyData] ASC,
	[KeyName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerId], [Name], [AddressLine1], [AddressLine2], [City], [District], [State], [PostalCode], [MobileNumber], [HomePhone]) VALUES (3, N'Vimal', NULL, NULL, NULL, NULL, NULL, NULL, N'9566812835', NULL)
INSERT [dbo].[Customer] ([CustomerId], [Name], [AddressLine1], [AddressLine2], [City], [District], [State], [PostalCode], [MobileNumber], [HomePhone]) VALUES (4, N'Vimal', NULL, NULL, NULL, NULL, NULL, NULL, N'9566812835', NULL)
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[CustomerPaymentTransaction] ON 

INSERT [dbo].[CustomerPaymentTransaction] ([TransactionId], [CustomerId], [OrderId], [PaymentCrAmount], [PaymentDrAmount], [PaymentDate], [PaymentReceivedBy], [Ref1], [Ref2]) VALUES (1, 4, 0, NULL, 53700, CAST(0x0000A940012AD52F AS DateTime), N'No Payment', NULL, NULL)
INSERT [dbo].[CustomerPaymentTransaction] ([TransactionId], [CustomerId], [OrderId], [PaymentCrAmount], [PaymentDrAmount], [PaymentDate], [PaymentReceivedBy], [Ref1], [Ref2]) VALUES (2, 3, 0, NULL, 64500, CAST(0x0000A940017493B4 AS DateTime), N'No Payment', NULL, NULL)
INSERT [dbo].[CustomerPaymentTransaction] ([TransactionId], [CustomerId], [OrderId], [PaymentCrAmount], [PaymentDrAmount], [PaymentDate], [PaymentReceivedBy], [Ref1], [Ref2]) VALUES (3, 3, 0, NULL, 107500, CAST(0x0000A941010491FD AS DateTime), N'No Payment', NULL, NULL)
INSERT [dbo].[CustomerPaymentTransaction] ([TransactionId], [CustomerId], [OrderId], [PaymentCrAmount], [PaymentDrAmount], [PaymentDate], [PaymentReceivedBy], [Ref1], [Ref2]) VALUES (4, 3, 0, NULL, 107500, CAST(0x0000A9410104D393 AS DateTime), N'No Payment', NULL, NULL)
SET IDENTITY_INSERT [dbo].[CustomerPaymentTransaction] OFF
SET IDENTITY_INSERT [dbo].[CustomerWallet] ON 

INSERT [dbo].[CustomerWallet] ([WalletId], [CustomerId], [WalletBalance], [AmountDueDate]) VALUES (2, 3, 279500, CAST(0x0000A94A017493FE AS DateTime))
INSERT [dbo].[CustomerWallet] ([WalletId], [CustomerId], [WalletBalance], [AmountDueDate]) VALUES (1, 4, 53700, CAST(0x0000A94A012AF57E AS DateTime))
SET IDENTITY_INSERT [dbo].[CustomerWallet] OFF
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([EmployeeId], [Name], [UserName], [Password], [AddressLine1], [AddressLine2], [City], [District], [PostalCode], [MobileNumber], [HomePhonne], [IsActive]) VALUES (1, N'Vimal Anjana', N'9566812835', N'jT7a994atGo=', N'G02 D block', N'Balaji Elgeance', N'Bangalore', N'Pratapgarh', N'560066', N'9566812835', N'4534434543', NULL)
INSERT [dbo].[Employee] ([EmployeeId], [Name], [UserName], [Password], [AddressLine1], [AddressLine2], [City], [District], [PostalCode], [MobileNumber], [HomePhonne], [IsActive]) VALUES (2, N'Vimal Anjana', N'9566812836', N'jT7a994atGo=', N'G02 D block', N'Balaji Elgeance', N'Bangalore', N'Pratapgarh', N'560066', N'9566812836', N'4534434543', NULL)
SET IDENTITY_INSERT [dbo].[Employee] OFF
SET IDENTITY_INSERT [dbo].[EmployeeSession] ON 

INSERT [dbo].[EmployeeSession] ([SessionId], [EmployeeId], [SiteId], [SessionStartDtm], [SessionEndDtm], [IsLogout]) VALUES (2, 1, 1, CAST(0x0000A93A0167B6FE AS DateTime), CAST(0x002D247F018B81FF AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EmployeeSession] OFF
SET IDENTITY_INSERT [dbo].[ItemCategory] ON 

INSERT [dbo].[ItemCategory] ([ItemId], [ItemCode], [ItemName], [ItemDescription]) VALUES (1, N'Gitti', N'Gitti', N'All Gitti Products')
SET IDENTITY_INSERT [dbo].[ItemCategory] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [ProductCode], [ProductName], [ProductDescription], [ProductQuantity], [ProductPrice], [IsActive], [Ref1], [Ref2]) VALUES (1, N'Gitti12MM-20MM', N'Gitti 12-20 MM', N'Gitti 12-20 MM Calculated in Square Feet', 1, 12000, 1, NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [ProductCode], [ProductName], [ProductDescription], [ProductQuantity], [ProductPrice], [IsActive], [Ref1], [Ref2]) VALUES (2, N'Gitti6MM', N'Gitti 6MM', N'Gitti 6MM Calculated in Square Feet', 1, 12000, 1, NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [ProductCode], [ProductName], [ProductDescription], [ProductQuantity], [ProductPrice], [IsActive], [Ref1], [Ref2]) VALUES (3, N'Gitti10MM', N'Gitti 10MM', N'Gitti 10MM Calculated in Square Feet', 1, 12000, 1, NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [ProductCode], [ProductName], [ProductDescription], [ProductQuantity], [ProductPrice], [IsActive], [Ref1], [Ref2]) VALUES (4, N'Gitti4MM', N'Gitti 4MM', N'Gitti 12-20 MM Calculated in Square Feet', 1, 12000, 1, NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [ProductCode], [ProductName], [ProductDescription], [ProductQuantity], [ProductPrice], [IsActive], [Ref1], [Ref2]) VALUES (5, N'DUST', N'DUST', N'DUST Calculated in Square Feet', 1, 12000, 1, NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [ProductCode], [ProductName], [ProductDescription], [ProductQuantity], [ProductPrice], [IsActive], [Ref1], [Ref2]) VALUES (6, N'Gitti65MM', N'Gitti 65MM', N'Gitti 12-20 MM Calculated in Ton', 1, 12000, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[ProductOrder] ON 

INSERT [dbo].[ProductOrder] ([OrderId], [OrderPurchaseDtm], [OrderCustomerId], [OrderPaymentMode], [OrderTotalQuantity], [OrderTotalPrice], [OrderTax], [TotalAmount], [OrderPriority], [OrderAddress], [OrderComments], [Ref1], [Ref2]) VALUES (1, CAST(0x0000A941010491B5 AS DateTime), 3, 0, 1, 100000, 7500, 107500, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductOrder] ([OrderId], [OrderPurchaseDtm], [OrderCustomerId], [OrderPaymentMode], [OrderTotalQuantity], [OrderTotalPrice], [OrderTax], [TotalAmount], [OrderPriority], [OrderAddress], [OrderComments], [Ref1], [Ref2]) VALUES (2, CAST(0x0000A9410104D37E AS DateTime), 3, 0, 1, 100000, 7500, 107500, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ProductOrder] OFF
SET IDENTITY_INSERT [dbo].[ProductOrderDetail] ON 

INSERT [dbo].[ProductOrderDetail] ([ProductOrderDetailId], [OrderId], [OrderProductId], [OrderStatus], [OrderDeilveredDate], [OrderDeilveredBy], [VehicleNumber], [DriverName], [DriverNumber], [JCBDriverNumber], [RoyaltyNumber], [Quantity], [UnitPrice], [Total], [Ref1], [Ref2]) VALUES (1, 1, 1, 0, CAST(0x0000A943010491B5 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, CAST(1 AS Numeric(18, 0)), 0, 100000, NULL, NULL)
INSERT [dbo].[ProductOrderDetail] ([ProductOrderDetailId], [OrderId], [OrderProductId], [OrderStatus], [OrderDeilveredDate], [OrderDeilveredBy], [VehicleNumber], [DriverName], [DriverNumber], [JCBDriverNumber], [RoyaltyNumber], [Quantity], [UnitPrice], [Total], [Ref1], [Ref2]) VALUES (2, 2, 1, 0, CAST(0x0000A9430104D37E AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, CAST(1 AS Numeric(18, 0)), 0, 100000, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ProductOrderDetail] OFF
SET IDENTITY_INSERT [dbo].[ProductSales] ON 

INSERT [dbo].[ProductSales] ([SalesId], [SalesDate], [SalesProductId], [SalesQuantity], [SalesPrice], [Ref1], [Ref2]) VALUES (1, CAST(0x9B3E0B00 AS Date), 1, 1, 60000, NULL, NULL)
INSERT [dbo].[ProductSales] ([SalesId], [SalesDate], [SalesProductId], [SalesQuantity], [SalesPrice], [Ref1], [Ref2]) VALUES (2, CAST(0x9C3E0B00 AS Date), 1, 2, 200000, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ProductSales] OFF
SET IDENTITY_INSERT [dbo].[ProductSiteMapping] ON 

INSERT [dbo].[ProductSiteMapping] ([ProductMappingId], [SiteId], [ItemId], [ProductId]) VALUES (1, 1, 1, 1)
INSERT [dbo].[ProductSiteMapping] ([ProductMappingId], [SiteId], [ItemId], [ProductId]) VALUES (2, 1, 1, 2)
INSERT [dbo].[ProductSiteMapping] ([ProductMappingId], [SiteId], [ItemId], [ProductId]) VALUES (3, 1, 1, 3)
INSERT [dbo].[ProductSiteMapping] ([ProductMappingId], [SiteId], [ItemId], [ProductId]) VALUES (4, 1, 1, 4)
INSERT [dbo].[ProductSiteMapping] ([ProductMappingId], [SiteId], [ItemId], [ProductId]) VALUES (5, 1, 1, 5)
INSERT [dbo].[ProductSiteMapping] ([ProductMappingId], [SiteId], [ItemId], [ProductId]) VALUES (6, 1, 1, 6)
SET IDENTITY_INSERT [dbo].[ProductSiteMapping] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleId], [RoleName], [RoleDescription]) VALUES (1, N'SuperUser', N'Super User Role')
INSERT [dbo].[Roles] ([RoleId], [RoleName], [RoleDescription]) VALUES (2, N'Worker', N'Worker User Role')
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[Site] ON 

INSERT [dbo].[Site] ([SiteId], [SiteCode], [SiteName], [SiteAddress], [SiteCity], [SiteState], [SiteZipCode], [SiteMobileNumber], [IsActive], [SiteDistrict], [SiteHomePhone]) VALUES (1, N'Kesunda', N'Kesunda Kreshar', N'Near Kesunda', N'Kesunda', N'Rajasthan', N'312601', N'4564646456', 1, N'Pratapgarh', N'1236547890')
SET IDENTITY_INSERT [dbo].[Site] OFF
SET IDENTITY_INSERT [dbo].[SiteConfigurations] ON 

INSERT [dbo].[SiteConfigurations] ([Id], [KeyData], [KeyName], [DataVal], [DefaultVal], [Description]) VALUES (1, N'OrderTax', N'IsEnable', N'True', N'False', N'To know if tax is applicable on order')
INSERT [dbo].[SiteConfigurations] ([Id], [KeyData], [KeyName], [DataVal], [DefaultVal], [Description]) VALUES (2, N'OrderTax', N'Percentage', N'7.5', N'7', N'To know if tax precentage on order')
SET IDENTITY_INSERT [dbo].[SiteConfigurations] OFF
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__CustomerS__IsLog__3A81B327]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CustomerSession] ADD  CONSTRAINT [DF__CustomerS__IsLog__3A81B327]  DEFAULT ((0)) FOR [IsLogout]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__EmployeeS__IsLog__38996AB5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[EmployeeSession] ADD  CONSTRAINT [DF__EmployeeS__IsLog__38996AB5]  DEFAULT ((0)) FOR [IsLogout]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Product__Product__267ABA7A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF__Product__Product__267ABA7A]  DEFAULT ((1)) FOR [ProductQuantity]
END

GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ProductOrder_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductOrder]'))
ALTER TABLE [dbo].[ProductOrder]  WITH CHECK ADD  CONSTRAINT [fk_ProductOrder_CustomerId] FOREIGN KEY([OrderCustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ProductOrder_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductOrder]'))
ALTER TABLE [dbo].[ProductOrder] CHECK CONSTRAINT [fk_ProductOrder_CustomerId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ProductOrderDetail_ProductOrder]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductOrderDetail]'))
ALTER TABLE [dbo].[ProductOrderDetail]  WITH CHECK ADD  CONSTRAINT [fk_ProductOrderDetail_ProductOrder] FOREIGN KEY([OrderId])
REFERENCES [dbo].[ProductOrder] ([OrderId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ProductOrderDetail_ProductOrder]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductOrderDetail]'))
ALTER TABLE [dbo].[ProductOrderDetail] CHECK CONSTRAINT [fk_ProductOrderDetail_ProductOrder]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ProductOrderDetail_ProductSiteMapping]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductOrderDetail]'))
ALTER TABLE [dbo].[ProductOrderDetail]  WITH CHECK ADD  CONSTRAINT [fk_ProductOrderDetail_ProductSiteMapping] FOREIGN KEY([OrderProductId])
REFERENCES [dbo].[ProductSiteMapping] ([ProductMappingId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ProductOrderDetail_ProductSiteMapping]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductOrderDetail]'))
ALTER TABLE [dbo].[ProductOrderDetail] CHECK CONSTRAINT [fk_ProductOrderDetail_ProductSiteMapping]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_Sales_ProductSiteMapping]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductSales]'))
ALTER TABLE [dbo].[ProductSales]  WITH CHECK ADD  CONSTRAINT [fk_Sales_ProductSiteMapping] FOREIGN KEY([SalesProductId])
REFERENCES [dbo].[ProductSiteMapping] ([ProductMappingId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_Sales_ProductSiteMapping]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductSales]'))
ALTER TABLE [dbo].[ProductSales] CHECK CONSTRAINT [fk_Sales_ProductSiteMapping]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ProductSiteMapping_Item]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductSiteMapping]'))
ALTER TABLE [dbo].[ProductSiteMapping]  WITH CHECK ADD  CONSTRAINT [fk_ProductSiteMapping_Item] FOREIGN KEY([ItemId])
REFERENCES [dbo].[ItemCategory] ([ItemId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ProductSiteMapping_Item]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductSiteMapping]'))
ALTER TABLE [dbo].[ProductSiteMapping] CHECK CONSTRAINT [fk_ProductSiteMapping_Item]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ProductSiteMapping_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductSiteMapping]'))
ALTER TABLE [dbo].[ProductSiteMapping]  WITH CHECK ADD  CONSTRAINT [fk_ProductSiteMapping_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ProductSiteMapping_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductSiteMapping]'))
ALTER TABLE [dbo].[ProductSiteMapping] CHECK CONSTRAINT [fk_ProductSiteMapping_Product]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ProductSiteMapping_Site]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductSiteMapping]'))
ALTER TABLE [dbo].[ProductSiteMapping]  WITH CHECK ADD  CONSTRAINT [fk_ProductSiteMapping_Site] FOREIGN KEY([SiteId])
REFERENCES [dbo].[Site] ([SiteId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ProductSiteMapping_Site]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductSiteMapping]'))
ALTER TABLE [dbo].[ProductSiteMapping] CHECK CONSTRAINT [fk_ProductSiteMapping_Site]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ProcutStock_ProductSiteMapping]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductStock]'))
ALTER TABLE [dbo].[ProductStock]  WITH CHECK ADD  CONSTRAINT [fk_ProcutStock_ProductSiteMapping] FOREIGN KEY([StockProductId])
REFERENCES [dbo].[ProductSiteMapping] ([ProductMappingId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ProcutStock_ProductSiteMapping]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductStock]'))
ALTER TABLE [dbo].[ProductStock] CHECK CONSTRAINT [fk_ProcutStock_ProductSiteMapping]
GO
USE [master]
GO
ALTER DATABASE [PlatformDB] SET  READ_WRITE 
GO
