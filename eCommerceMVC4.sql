USE [master]
GO
/****** Object:  Database [eCommerceMVC4]    Script Date: 22/06/2023 13:01:31 ******/
CREATE DATABASE [eCommerceMVC4]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'eCommerceMVC4', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\eCommerceMVC4.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'eCommerceMVC4_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\eCommerceMVC4_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [eCommerceMVC4] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [eCommerceMVC4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [eCommerceMVC4] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [eCommerceMVC4] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [eCommerceMVC4] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [eCommerceMVC4] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [eCommerceMVC4] SET ARITHABORT OFF 
GO
ALTER DATABASE [eCommerceMVC4] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [eCommerceMVC4] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [eCommerceMVC4] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [eCommerceMVC4] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [eCommerceMVC4] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [eCommerceMVC4] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [eCommerceMVC4] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [eCommerceMVC4] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [eCommerceMVC4] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [eCommerceMVC4] SET  DISABLE_BROKER 
GO
ALTER DATABASE [eCommerceMVC4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [eCommerceMVC4] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [eCommerceMVC4] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [eCommerceMVC4] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [eCommerceMVC4] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [eCommerceMVC4] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [eCommerceMVC4] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [eCommerceMVC4] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [eCommerceMVC4] SET  MULTI_USER 
GO
ALTER DATABASE [eCommerceMVC4] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [eCommerceMVC4] SET DB_CHAINING OFF 
GO
ALTER DATABASE [eCommerceMVC4] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [eCommerceMVC4] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [eCommerceMVC4] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [eCommerceMVC4] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [eCommerceMVC4] SET QUERY_STORE = OFF
GO
USE [eCommerceMVC4]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 22/06/2023 13:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 22/06/2023 13:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ParentCategoryID] [int] NULL,
	[isFeatured] [bit] NOT NULL,
	[SanitizedName] [nvarchar](max) NULL,
	[DisplaySeqNo] [int] NOT NULL,
	[PictureID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[IsLead] [bit] NOT NULL,
	[VideoLink] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Categories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryRecords]    Script Date: 22/06/2023 13:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryRecords](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[LanguageID] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Summary] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_dbo.CategoryRecords] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 22/06/2023 13:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[UserID] [nvarchar](128) NULL,
	[Rating] [int] NOT NULL,
	[Text] [nvarchar](max) NULL,
	[EntityID] [int] NOT NULL,
	[RecordID] [int] NOT NULL,
	[LanguageID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_dbo.Comments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configurations]    Script Date: 22/06/2023 13:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configurations](
	[Key] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[ConfigurationType] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_dbo.Configurations] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LanguageResources]    Script Date: 22/06/2023 13:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LanguageResources](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](max) NULL,
	[LanguageID] [int] NOT NULL,
	[Value] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_dbo.LanguageResources] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 22/06/2023 13:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Languages](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ShortCode] [nvarchar](max) NULL,
	[IsEnabled] [bit] NOT NULL,
	[ResourceFileName] [nvarchar](max) NULL,
	[IsRTL] [bit] NOT NULL,
	[IsDefault] [bit] NOT NULL,
	[IconCode] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_dbo.Languages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsletterSubscriptions]    Script Date: 22/06/2023 13:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsletterSubscriptions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EmailAddress] [nvarchar](max) NULL,
	[IsVerified] [bit] NOT NULL,
	[UserID] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_dbo.NewsletterSubscriptions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderHistories]    Script Date: 22/06/2023 13:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderHistories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[OrderStatus] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_dbo.OrderHistories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 22/06/2023 13:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[ItemPrice] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_dbo.OrderItems] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 22/06/2023 13:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [nvarchar](max) NULL,
	[CustomerName] [nvarchar](max) NULL,
	[CustomerEmail] [nvarchar](max) NULL,
	[CustomerPhone] [nvarchar](max) NULL,
	[CustomerCountry] [nvarchar](max) NULL,
	[CustomerCity] [nvarchar](max) NULL,
	[CustomerAddress] [nvarchar](max) NULL,
	[CustomerZipCode] [nvarchar](max) NULL,
	[OrderCode] [nvarchar](max) NULL,
	[PaymentMethod] [int] NOT NULL,
	[TotalAmmount] [decimal](18, 2) NOT NULL,
	[Discount] [decimal](18, 2) NOT NULL,
	[DeliveryCharges] [decimal](18, 2) NOT NULL,
	[FinalAmmount] [decimal](18, 2) NOT NULL,
	[PlacedOn] [datetime] NOT NULL,
	[TransactionID] [nvarchar](max) NULL,
	[IsGuestOrder] [bit] NOT NULL,
	[PromoID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_dbo.Orders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pictures]    Script Date: 22/06/2023 13:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pictures](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[URL] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_dbo.Pictures] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDiscountDetails]    Script Date: 22/06/2023 13:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDiscountDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Fullwidth] [nvarchar](max) NULL,
	[Centrefoldedwidth] [nvarchar](max) NULL,
	[Rolllength] [nvarchar](max) NULL,
	[Priceperroll_1to5] [decimal](18, 2) NOT NULL,
	[Priceperroll_6to15] [decimal](18, 2) NOT NULL,
	[Priceperroll_16to23] [decimal](18, 2) NOT NULL,
	[Priceperroll_24to47] [decimal](18, 2) NOT NULL,
	[Priceperroll_48] [decimal](18, 2) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ProductRecordID] [int] NOT NULL,
	[ItemDiscountID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ProductDiscountDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductPictures]    Script Date: 22/06/2023 13:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductPictures](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[PictureID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_dbo.ProductPictures] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductRecords]    Script Date: 22/06/2023 13:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductRecords](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[LanguageID] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Summary] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[VideoLink] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ProductRecords] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 22/06/2023 13:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Discount] [decimal](18, 2) NULL,
	[Cost] [decimal](18, 2) NULL,
	[isFeatured] [bit] NOT NULL,
	[ThumbnailPictureID] [int] NOT NULL,
	[SKU] [nvarchar](max) NULL,
	[Tags] [nvarchar](max) NULL,
	[Barcode] [nvarchar](max) NULL,
	[Supplier] [nvarchar](max) NULL,
	[StockQuantity] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[IsLead] [bit] NULL,
 CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSpecifications]    Script Date: 22/06/2023 13:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSpecifications](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductRecordID] [int] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Value] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_dbo.ProductSpecifications] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promoes]    Script Date: 22/06/2023 13:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promoes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Code] [nvarchar](50) NULL,
	[PromoType] [int] NOT NULL,
	[Value] [decimal](18, 2) NOT NULL,
	[ValidTill] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_dbo.Promoes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 22/06/2023 13:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserClaims]    Script Date: 22/06/2023 13:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.UserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLogins]    Script Date: 22/06/2023 13:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.UserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 22/06/2023 13:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 22/06/2023 13:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [nvarchar](128) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[ZipCode] [nvarchar](max) NULL,
	[PictureID] [int] NULL,
	[RegisteredOn] [datetime] NULL,
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
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT ((0)) FOR [IsLead]
GO
ALTER TABLE [dbo].[ProductDiscountDetails] ADD  DEFAULT ((0)) FOR [ItemDiscountID]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Categories_dbo.Categories_ParentCategoryID] FOREIGN KEY([ParentCategoryID])
REFERENCES [dbo].[Categories] ([ID])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_dbo.Categories_dbo.Categories_ParentCategoryID]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Categories_dbo.Pictures_PictureID] FOREIGN KEY([PictureID])
REFERENCES [dbo].[Pictures] ([ID])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_dbo.Categories_dbo.Pictures_PictureID]
GO
ALTER TABLE [dbo].[CategoryRecords]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CategoryRecords_dbo.Categories_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CategoryRecords] CHECK CONSTRAINT [FK_dbo.CategoryRecords_dbo.Categories_CategoryID]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Comments_dbo.Users_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_dbo.Comments_dbo.Users_UserID]
GO
ALTER TABLE [dbo].[OrderHistories]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderHistories_dbo.Orders_OrderID] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderHistories] CHECK CONSTRAINT [FK_dbo.OrderHistories_dbo.Orders_OrderID]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderItems_dbo.Orders_OrderID] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_dbo.OrderItems_dbo.Orders_OrderID]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderItems_dbo.Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_dbo.OrderItems_dbo.Products_ProductID]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Orders_dbo.Promoes_PromoID] FOREIGN KEY([PromoID])
REFERENCES [dbo].[Promoes] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_dbo.Orders_dbo.Promoes_PromoID]
GO
ALTER TABLE [dbo].[ProductDiscountDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductDiscountDetails_dbo.ProductRecords_ProductRecordID] FOREIGN KEY([ProductRecordID])
REFERENCES [dbo].[ProductRecords] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductDiscountDetails] CHECK CONSTRAINT [FK_dbo.ProductDiscountDetails_dbo.ProductRecords_ProductRecordID]
GO
ALTER TABLE [dbo].[ProductPictures]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductPictures_dbo.Pictures_PictureID] FOREIGN KEY([PictureID])
REFERENCES [dbo].[Pictures] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductPictures] CHECK CONSTRAINT [FK_dbo.ProductPictures_dbo.Pictures_PictureID]
GO
ALTER TABLE [dbo].[ProductPictures]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductPictures_dbo.Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductPictures] CHECK CONSTRAINT [FK_dbo.ProductPictures_dbo.Products_ProductID]
GO
ALTER TABLE [dbo].[ProductRecords]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductRecords_dbo.Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductRecords] CHECK CONSTRAINT [FK_dbo.ProductRecords_dbo.Products_ProductID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.Categories_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.Categories_CategoryID]
GO
ALTER TABLE [dbo].[ProductSpecifications]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductSpecifications_dbo.ProductRecords_ProductRecordID] FOREIGN KEY([ProductRecordID])
REFERENCES [dbo].[ProductRecords] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductSpecifications] CHECK CONSTRAINT [FK_dbo.ProductSpecifications_dbo.ProductRecords_ProductRecordID]
GO
ALTER TABLE [dbo].[UserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserClaims_dbo.Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserClaims] CHECK CONSTRAINT [FK_dbo.UserClaims_dbo.Users_UserId]
GO
ALTER TABLE [dbo].[UserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserLogins_dbo.Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserLogins] CHECK CONSTRAINT [FK_dbo.UserLogins_dbo.Users_UserId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserRoles_dbo.Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_dbo.UserRoles_dbo.Roles_RoleId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserRoles_dbo.Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_dbo.UserRoles_dbo.Users_UserId]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Users_dbo.Pictures_PictureID] FOREIGN KEY([PictureID])
REFERENCES [dbo].[Pictures] ([ID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_dbo.Users_dbo.Pictures_PictureID]
GO
USE [master]
GO
ALTER DATABASE [eCommerceMVC4] SET  READ_WRITE 
GO
