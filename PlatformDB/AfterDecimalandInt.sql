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
/****** Object:  Table [dbo].[SiteConfigurations]    Script Date: 20-08-2018 08:17:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SiteConfigurations]') AND type in (N'U'))
DROP TABLE [dbo].[SiteConfigurations]
GO
/****** Object:  Table [dbo].[Site]    Script Date: 20-08-2018 08:17:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Site]') AND type in (N'U'))
DROP TABLE [dbo].[Site]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 20-08-2018 08:17:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Roles]') AND type in (N'U'))
DROP TABLE [dbo].[Roles]
GO
/****** Object:  Table [dbo].[RoleModule]    Script Date: 20-08-2018 08:17:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RoleModule]') AND type in (N'U'))
DROP TABLE [dbo].[RoleModule]
GO
/****** Object:  Table [dbo].[ProductStock]    Script Date: 20-08-2018 08:17:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductStock]') AND type in (N'U'))
DROP TABLE [dbo].[ProductStock]
GO
/****** Object:  Table [dbo].[ProductSiteMapping]    Script Date: 20-08-2018 08:17:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductSiteMapping]') AND type in (N'U'))
DROP TABLE [dbo].[ProductSiteMapping]
GO
/****** Object:  Table [dbo].[ProductSales]    Script Date: 20-08-2018 08:17:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductSales]') AND type in (N'U'))
DROP TABLE [dbo].[ProductSales]
GO
/****** Object:  Table [dbo].[ProductOrderDetail]    Script Date: 20-08-2018 08:17:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductOrderDetail]') AND type in (N'U'))
DROP TABLE [dbo].[ProductOrderDetail]
GO
/****** Object:  Table [dbo].[ProductOrder]    Script Date: 20-08-2018 08:17:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductOrder]') AND type in (N'U'))
DROP TABLE [dbo].[ProductOrder]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 20-08-2018 08:17:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
DROP TABLE [dbo].[Product]
GO
/****** Object:  Table [dbo].[Module]    Script Date: 20-08-2018 08:17:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Module]') AND type in (N'U'))
DROP TABLE [dbo].[Module]
GO
/****** Object:  Table [dbo].[ItemCategory]    Script Date: 20-08-2018 08:17:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ItemCategory]') AND type in (N'U'))
DROP TABLE [dbo].[ItemCategory]
GO
/****** Object:  Table [dbo].[EmployeeSession]    Script Date: 20-08-2018 08:17:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeSession]') AND type in (N'U'))
DROP TABLE [dbo].[EmployeeSession]
GO
/****** Object:  Table [dbo].[EmployeeRole]    Script Date: 20-08-2018 08:17:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeRole]') AND type in (N'U'))
DROP TABLE [dbo].[EmployeeRole]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 20-08-2018 08:17:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
DROP TABLE [dbo].[Employee]
GO
/****** Object:  Table [dbo].[CustomerWallet]    Script Date: 20-08-2018 08:17:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerWallet]') AND type in (N'U'))
DROP TABLE [dbo].[CustomerWallet]
GO
/****** Object:  Table [dbo].[CustomerSession]    Script Date: 20-08-2018 08:17:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerSession]') AND type in (N'U'))
DROP TABLE [dbo].[CustomerSession]
GO
/****** Object:  Table [dbo].[CustomerPaymentTransaction]    Script Date: 20-08-2018 08:17:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerPaymentTransaction]') AND type in (N'U'))
DROP TABLE [dbo].[CustomerPaymentTransaction]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 20-08-2018 08:17:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
DROP TABLE [dbo].[Customer]
GO
/****** Object:  StoredProcedure [dbo].[GetDashboardDetails]    Script Date: 20-08-2018 08:17:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetDashboardDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetDashboardDetails]
GO
/****** Object:  StoredProcedure [dbo].[GetDashboardDetails]    Script Date: 20-08-2018 08:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetDashboardDetails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[GetDashboardDetails] 

AS


--Get Last 10 Orders

SELECT
Top 10
c.CustomerId,
c.Name,
c.MobileNumber,
o.OrderId,
od.ProductOrderDetailId,
ps.ProductMappingId,
p.ProductName,
Od.Quantity,
Od.Total,
od.OrderStatus,
o.OrderPurchaseDtm
FROM
[ProductOrder] O
inner join [Customer] c on c.customerId=O.OrderCustomerId
inner join [ProductOrderDetail] Od on O.OrderId=Od.OrderId
inner join [ProductSiteMapping] Ps on ps.ProductMappingId=od.OrderProductId
inner join [Product] P on ps.ProductId=p.ProductId

Order By
o.OrderPurchaseDtm desc


SELECT
Top 10
S.SalesId,
S.SalesDate,
s.SalesQuantity,
s.SalesPrice,
ps.ProductMappingId,
p.ProductName
FROM
[ProductSales] S
inner join [ProductSiteMapping] Ps on ps.ProductMappingId=s.SalesProductId
inner join [Product] P on ps.ProductId=p.ProductId

Where
S.SalesDate=GETUTCDATE()


SELECT
Top 10
c.CustomerId,
c.Name,
w.WalletBalance,
c.MobileNumber
FROM
[CustomerWallet] W
inner join [Customer] C on w.CustomerId=c.CustomerId

Order By
w.WalletBalance desc
' 
END
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 20-08-2018 08:17:05 ******/
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
/****** Object:  Table [dbo].[CustomerPaymentTransaction]    Script Date: 20-08-2018 08:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerPaymentTransaction]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CustomerPaymentTransaction](
	[CustomerPaymentId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[PaymentCrAmount] decimal(18,2) NULL,
	[PaymentDrAmount] decimal(18,2) NULL,
	[PaymentDate] [datetime] NOT NULL,
	[PaymentReceivedBy] [nvarchar](50) NULL,
	[Ref1] [nvarchar](50) NULL,
	[Ref2] [nvarchar](50) NULL,
 CONSTRAINT [PK__Customer__55433A6B3C08E1B9] PRIMARY KEY CLUSTERED 
(
	[CustomerPaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CustomerSession]    Script Date: 20-08-2018 08:17:05 ******/
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
/****** Object:  Table [dbo].[CustomerWallet]    Script Date: 20-08-2018 08:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerWallet]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CustomerWallet](
	[WalletId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[WalletBalance] [decimal](18, 2) NOT NULL,
	[AmountDueDate] [datetime] NOT NULL,
 CONSTRAINT [PK__Customer__A4AE64D825A5558C] PRIMARY KEY CLUSTERED 
(
	[WalletId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 20-08-2018 08:17:05 ******/
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
/****** Object:  Table [dbo].[EmployeeRole]    Script Date: 20-08-2018 08:17:05 ******/
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
/****** Object:  Table [dbo].[EmployeeSession]    Script Date: 20-08-2018 08:17:05 ******/
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
/****** Object:  Table [dbo].[ItemCategory]    Script Date: 20-08-2018 08:17:05 ******/
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
/****** Object:  Table [dbo].[Module]    Script Date: 20-08-2018 08:17:05 ******/
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
/****** Object:  Table [dbo].[Product]    Script Date: 20-08-2018 08:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductCode] [nvarchar](20) NULL,
	[ProductName] [nvarchar](40) NULL,
	[ProductDescription] [nvarchar](100) NULL,
	[ProductQuantity] decimal(18,2) NULL,
	[ProductPrice] decimal(18,2) NULL,
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
/****** Object:  Table [dbo].[ProductOrder]    Script Date: 20-08-2018 08:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductOrder]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductOrder](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[OrderPurchaseDtm] [datetime] NOT NULL,
	[OrderCustomerId] [int] NULL,
	[OrderPaymentMode] [int] NOT NULL,
	[OrderTotalQuantity] decimal(18,2) NOT NULL,
	[OrderPrice] decimal(18,2) NOT NULL,
	[OrderTax] decimal(18,2) NULL,
	[OrderTotalPrice] decimal(18,2) NULL,
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
/****** Object:  Table [dbo].[ProductOrderDetail]    Script Date: 20-08-2018 08:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductOrderDetail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductOrderDetail](
	[ProductOrderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[ProductMappingId] [int] NULL,
	[OrderStatus] [int] NOT NULL,
	[DeilveredDate] [datetime] NULL,
	[DeilveredBy] [nvarchar](150) NULL,
	[VehicleNumber] [nvarchar](150) NULL,
	[DriverName] [nvarchar](150) NULL,
	[DriverNumber] [nvarchar](150) NULL,
	[JCBDriverNumber] [nvarchar](150) NULL,
	[RoyaltyNumber] [nvarchar](150) NULL,
	[Quantity] decimal(18, 2) NULL,
	[UnitPrice] decimal(18, 2) NULL,
	[TotalPrice] decimal(18, 2) NULL,
	[Ref1] [nvarchar](50) NULL,
	[Ref2] [nvarchar](50) NULL,
 CONSTRAINT [PK_ProductOrderDetail] PRIMARY KEY CLUSTERED 
(
	[ProductOrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ProductSales]    Script Date: 20-08-2018 08:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductSales]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductSales](
	[SalesId] [int] IDENTITY(1,1) NOT NULL,
	[SalesDate] [date] NOT NULL,
	[ProductMappingId] [int] NOT NULL,
	[Quantity] decimal(18,2) NOT NULL,
	[TotalPrice] decimal(18, 2) NOT NULL,
	[Ref1] [nvarchar](50) NULL,
	[Ref2] [nvarchar](50) NULL,
 CONSTRAINT [PK__Sales__DEE0F82A01E5150B] PRIMARY KEY CLUSTERED 
(
	[SalesDate] ASC,
	[ProductMappingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ProductSiteMapping]    Script Date: 20-08-2018 08:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductSiteMapping]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductSiteMapping](
	[ProductMappingId] [int] IDENTITY(1,1) NOT NULL,
	[SiteId] [int] NOT NULL,
	[ItemId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK__ProductS__6F8176F647489215] PRIMARY KEY CLUSTERED 
(
	[ProductMappingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ProductStock]    Script Date: 20-08-2018 08:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductStock]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductStock](
	[StockId] [int] IDENTITY(1,1) NOT NULL,
	[StockDate] [date] NOT NULL,
	[StockProductId] [int] NOT NULL,
	[StockCreatedBy] [int] NOT NULL,
	[StockCreatedDtm] [datetime] NOT NULL,
	[StockQuantiy] decimal(18, 2) NOT NULL,
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
/****** Object:  Table [dbo].[RoleModule]    Script Date: 20-08-2018 08:17:05 ******/
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
/****** Object:  Table [dbo].[Roles]    Script Date: 20-08-2018 08:17:05 ******/
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
/****** Object:  Table [dbo].[Site]    Script Date: 20-08-2018 08:17:05 ******/
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
/****** Object:  Table [dbo].[SiteConfigurations]    Script Date: 20-08-2018 08:17:05 ******/
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

GO
INSERT [dbo].[Customer] ([CustomerId], [Name], [AddressLine1], [AddressLine2], [City], [District], [State], [PostalCode], [MobileNumber], [HomePhone]) VALUES (3, N'Vimal', NULL, NULL, NULL, NULL, NULL, NULL, N'9566812835', NULL)
GO
INSERT [dbo].[Customer] ([CustomerId], [Name], [AddressLine1], [AddressLine2], [City], [District], [State], [PostalCode], [MobileNumber], [HomePhone]) VALUES (4, N'Vimal', NULL, NULL, NULL, NULL, NULL, NULL, N'9566812835', NULL)
GO
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[CustomerPaymentTransaction] ON 

GO
INSERT [dbo].[CustomerPaymentTransaction] ([CustomerPaymentId], [CustomerId], [OrderId], [PaymentCrAmount], [PaymentDrAmount], [PaymentDate], [PaymentReceivedBy], [Ref1], [Ref2]) VALUES (1, 4, 0, NULL, 53700, CAST(0x0000A940012AD52F AS DateTime), N'No Payment', NULL, NULL)
GO
INSERT [dbo].[CustomerPaymentTransaction] ([CustomerPaymentId], [CustomerId], [OrderId], [PaymentCrAmount], [PaymentDrAmount], [PaymentDate], [PaymentReceivedBy], [Ref1], [Ref2]) VALUES (2, 3, 0, NULL, 64500, CAST(0x0000A940017493B4 AS DateTime), N'No Payment', NULL, NULL)
GO
INSERT [dbo].[CustomerPaymentTransaction] ([CustomerPaymentId], [CustomerId], [OrderId], [PaymentCrAmount], [PaymentDrAmount], [PaymentDate], [PaymentReceivedBy], [Ref1], [Ref2]) VALUES (3, 3, 0, NULL, 107500, CAST(0x0000A941010491FD AS DateTime), N'No Payment', NULL, NULL)
GO
INSERT [dbo].[CustomerPaymentTransaction] ([CustomerPaymentId], [CustomerId], [OrderId], [PaymentCrAmount], [PaymentDrAmount], [PaymentDate], [PaymentReceivedBy], [Ref1], [Ref2]) VALUES (4, 3, 0, NULL, 107500, CAST(0x0000A9410104D393 AS DateTime), N'No Payment', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[CustomerPaymentTransaction] OFF
GO
SET IDENTITY_INSERT [dbo].[CustomerWallet] ON 

GO
INSERT [dbo].[CustomerWallet] ([WalletId], [CustomerId], [WalletBalance], [AmountDueDate]) VALUES (2, 3, CAST(279500.00 AS Decimal(18, 2)), CAST(0x0000A94A017493FE AS DateTime))
GO
INSERT [dbo].[CustomerWallet] ([WalletId], [CustomerId], [WalletBalance], [AmountDueDate]) VALUES (1, 4, CAST(53700.00 AS Decimal(18, 2)), CAST(0x0000A94A012AF57E AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[CustomerWallet] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

GO
INSERT [dbo].[Employee] ([EmployeeId], [Name], [UserName], [Password], [AddressLine1], [AddressLine2], [City], [District], [PostalCode], [MobileNumber], [HomePhonne], [IsActive]) VALUES (1, N'Vimal Anjana', N'9566812835', N'jT7a994atGo=', N'G02 D block', N'Balaji Elgeance', N'Bangalore', N'Pratapgarh', N'560066', N'9566812835', N'4534434543', NULL)
GO
INSERT [dbo].[Employee] ([EmployeeId], [Name], [UserName], [Password], [AddressLine1], [AddressLine2], [City], [District], [PostalCode], [MobileNumber], [HomePhonne], [IsActive]) VALUES (2, N'Vimal Anjana', N'9566812836', N'jT7a994atGo=', N'G02 D block', N'Balaji Elgeance', N'Bangalore', N'Pratapgarh', N'560066', N'9566812836', N'4534434543', NULL)
GO
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[EmployeeSession] ON 

GO
INSERT [dbo].[EmployeeSession] ([SessionId], [EmployeeId], [SiteId], [SessionStartDtm], [SessionEndDtm], [IsLogout]) VALUES (2, 1, 1, CAST(0x0000A93A0167B6FE AS DateTime), CAST(0x002D247F018B81FF AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[EmployeeSession] OFF
GO
SET IDENTITY_INSERT [dbo].[ItemCategory] ON 

GO
INSERT [dbo].[ItemCategory] ([ItemId], [ItemCode], [ItemName], [ItemDescription]) VALUES (1, N'Gitti', N'Gitti', N'All Gitti Products')
GO
SET IDENTITY_INSERT [dbo].[ItemCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

GO
INSERT [dbo].[Product] ([ProductId], [ProductCode], [ProductName], [ProductDescription], [ProductQuantity], [ProductPrice], [IsActive], [Ref1], [Ref2]) VALUES (1, N'Gitti12MM-20MM', N'Gitti 12-20 MM', N'Gitti 12-20 MM Calculated in Square Feet', 1, 12000, 1, NULL, NULL)
GO
INSERT [dbo].[Product] ([ProductId], [ProductCode], [ProductName], [ProductDescription], [ProductQuantity], [ProductPrice], [IsActive], [Ref1], [Ref2]) VALUES (2, N'Gitti6MM', N'Gitti 6MM', N'Gitti 6MM Calculated in Square Feet', 1, 12000, 1, NULL, NULL)
GO
INSERT [dbo].[Product] ([ProductId], [ProductCode], [ProductName], [ProductDescription], [ProductQuantity], [ProductPrice], [IsActive], [Ref1], [Ref2]) VALUES (3, N'Gitti10MM', N'Gitti 10MM', N'Gitti 10MM Calculated in Square Feet', 1, 12000, 1, NULL, NULL)
GO
INSERT [dbo].[Product] ([ProductId], [ProductCode], [ProductName], [ProductDescription], [ProductQuantity], [ProductPrice], [IsActive], [Ref1], [Ref2]) VALUES (4, N'Gitti4MM', N'Gitti 4MM', N'Gitti 12-20 MM Calculated in Square Feet', 1, 12000, 1, NULL, NULL)
GO
INSERT [dbo].[Product] ([ProductId], [ProductCode], [ProductName], [ProductDescription], [ProductQuantity], [ProductPrice], [IsActive], [Ref1], [Ref2]) VALUES (5, N'DUST', N'DUST', N'DUST Calculated in Square Feet', 1, 12000, 1, NULL, NULL)
GO
INSERT [dbo].[Product] ([ProductId], [ProductCode], [ProductName], [ProductDescription], [ProductQuantity], [ProductPrice], [IsActive], [Ref1], [Ref2]) VALUES (6, N'Gitti65MM', N'Gitti 65MM', N'Gitti 12-20 MM Calculated in Ton', 1, 12000, 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductOrder] ON 

GO
INSERT [dbo].[ProductOrder] ([OrderId], [OrderPurchaseDtm], [OrderCustomerId], [OrderPaymentMode], [OrderTotalQuantity], [OrderPrice], [OrderTax], [OrderTotalPrice], [OrderPriority], [OrderAddress], [OrderComments], [Ref1], [Ref2]) VALUES (1, CAST(0x0000A941010491B5 AS DateTime), 3, 0, 1, 100000, 7500, 107500, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductOrder] ([OrderId], [OrderPurchaseDtm], [OrderCustomerId], [OrderPaymentMode], [OrderTotalQuantity], [OrderPrice], [OrderTax], [OrderTotalPrice], [OrderPriority], [OrderAddress], [OrderComments], [Ref1], [Ref2]) VALUES (2, CAST(0x0000A9410104D37E AS DateTime), 3, 0, 1, 100000, 7500, 107500, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ProductOrder] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductOrderDetail] ON 

GO
INSERT [dbo].[ProductOrderDetail] ([ProductOrderDetailId], [OrderId], [ProductMappingId], [OrderStatus], [DeilveredDate], [DeilveredBy], [VehicleNumber], [DriverName], [DriverNumber], [JCBDriverNumber], [RoyaltyNumber], [Quantity], [UnitPrice], [TotalPrice], [Ref1], [Ref2]) VALUES (1, 1, 1, 0, CAST(0x0000A943010491B5 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, CAST(1 AS Numeric(18, 0)), 0, 100000, NULL, NULL)
GO
INSERT [dbo].[ProductOrderDetail] ([ProductOrderDetailId], [OrderId], [ProductMappingId], [OrderStatus], [DeilveredDate], [DeilveredBy], [VehicleNumber], [DriverName], [DriverNumber], [JCBDriverNumber], [RoyaltyNumber], [Quantity], [UnitPrice], [TotalPrice], [Ref1], [Ref2]) VALUES (2, 2, 1, 0, CAST(0x0000A9430104D37E AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, CAST(1 AS Numeric(18, 0)), 0, 100000, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ProductOrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductSales] ON 

GO
INSERT [dbo].[ProductSales] ([SalesId], [SalesDate], [ProductMappingId], [Quantity], [TotalPrice], [Ref1], [Ref2]) VALUES (1, CAST(0x9B3E0B00 AS Date), 1, 1, 60000, NULL, NULL)
GO
INSERT [dbo].[ProductSales] ([SalesId], [SalesDate], [ProductMappingId], [Quantity], [TotalPrice], [Ref1], [Ref2]) VALUES (2, CAST(0x9C3E0B00 AS Date), 1, 2, 200000, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ProductSales] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductSiteMapping] ON 

GO
INSERT [dbo].[ProductSiteMapping] ([ProductMappingId], [SiteId], [ItemId], [ProductId]) VALUES (1, 1, 1, 1)
GO
INSERT [dbo].[ProductSiteMapping] ([ProductMappingId], [SiteId], [ItemId], [ProductId]) VALUES (2, 1, 1, 2)
GO
INSERT [dbo].[ProductSiteMapping] ([ProductMappingId], [SiteId], [ItemId], [ProductId]) VALUES (3, 1, 1, 3)
GO
INSERT [dbo].[ProductSiteMapping] ([ProductMappingId], [SiteId], [ItemId], [ProductId]) VALUES (4, 1, 1, 4)
GO
INSERT [dbo].[ProductSiteMapping] ([ProductMappingId], [SiteId], [ItemId], [ProductId]) VALUES (5, 1, 1, 5)
GO
INSERT [dbo].[ProductSiteMapping] ([ProductMappingId], [SiteId], [ItemId], [ProductId]) VALUES (6, 1, 1, 6)
GO
SET IDENTITY_INSERT [dbo].[ProductSiteMapping] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

GO
INSERT [dbo].[Roles] ([RoleId], [RoleName], [RoleDescription]) VALUES (1, N'SuperUser', N'Super User Role')
GO
INSERT [dbo].[Roles] ([RoleId], [RoleName], [RoleDescription]) VALUES (2, N'Worker', N'Worker User Role')
GO
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Site] ON 

GO
INSERT [dbo].[Site] ([SiteId], [SiteCode], [SiteName], [SiteAddress], [SiteCity], [SiteState], [SiteZipCode], [SiteMobileNumber], [IsActive], [SiteDistrict], [SiteHomePhone]) VALUES (1, N'Kesunda', N'Kesunda Kreshar', N'Near Kesunda', N'Kesunda', N'Rajasthan', N'312601', N'4564646456', 1, N'Pratapgarh', N'1236547890')
GO
SET IDENTITY_INSERT [dbo].[Site] OFF
GO
SET IDENTITY_INSERT [dbo].[SiteConfigurations] ON 

GO
INSERT [dbo].[SiteConfigurations] ([Id], [KeyData], [KeyName], [DataVal], [DefaultVal], [Description]) VALUES (1, N'OrderTax', N'IsEnable', N'True', N'False', N'To know if tax is applicable on order')
GO
INSERT [dbo].[SiteConfigurations] ([Id], [KeyData], [KeyName], [DataVal], [DefaultVal], [Description]) VALUES (2, N'OrderTax', N'Percentage', N'7.5', N'7', N'To know if tax precentage on order')
GO
SET IDENTITY_INSERT [dbo].[SiteConfigurations] OFF
GO
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
ALTER TABLE [dbo].[ProductOrderDetail]  WITH CHECK ADD  CONSTRAINT [fk_ProductOrderDetail_ProductSiteMapping] FOREIGN KEY([ProductMappingId])
REFERENCES [dbo].[ProductSiteMapping] ([ProductMappingId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ProductOrderDetail_ProductSiteMapping]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductOrderDetail]'))
ALTER TABLE [dbo].[ProductOrderDetail] CHECK CONSTRAINT [fk_ProductOrderDetail_ProductSiteMapping]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_Sales_ProductSiteMapping]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductSales]'))
ALTER TABLE [dbo].[ProductSales]  WITH CHECK ADD  CONSTRAINT [fk_Sales_ProductSiteMapping] FOREIGN KEY([ProductMappingId])
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
