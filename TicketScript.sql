USE [master]
GO
/****** Object:  Database [TCA]    Script Date: 7/24/2018 1:49:13 PM ******/
CREATE DATABASE [TCA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TCA', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQL\MSSQL\DATA\TCA.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TCA_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQL\MSSQL\DATA\TCA_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TCA] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TCA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TCA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TCA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TCA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TCA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TCA] SET ARITHABORT OFF 
GO
ALTER DATABASE [TCA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TCA] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [TCA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TCA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TCA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TCA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TCA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TCA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TCA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TCA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TCA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TCA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TCA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TCA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TCA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TCA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TCA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TCA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TCA] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TCA] SET  MULTI_USER 
GO
ALTER DATABASE [TCA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TCA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TCA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TCA] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [TCA]
GO
/****** Object:  Table [dbo].[cust_detail]    Script Date: 7/24/2018 1:49:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cust_detail](
	[cust_name] [varchar](50) NULL,
	[cust_cnic] [varchar](50) NOT NULL,
	[cust_address] [varchar](50) NULL,
	[cust_area] [varchar](50) NULL,
	[cust_city] [varchar](50) NULL,
	[cust_not] [varchar](50) NULL,
	[cust_t_price] [varchar](50) NULL,
 CONSTRAINT [PK_cust_detail] PRIMARY KEY CLUSTERED 
(
	[cust_cnic] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[price_table]    Script Date: 7/24/2018 1:49:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[price_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[price] [int] NULL,
 CONSTRAINT [PK_price_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[signup_table]    Script Date: 7/24/2018 1:49:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[signup_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[pass] [varchar](50) NULL,
	[con_pass] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[gen] [varchar](50) NULL,
 CONSTRAINT [PK_signup_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[cust_detail] ([cust_name], [cust_cnic], [cust_address], [cust_area], [cust_city], [cust_not], [cust_t_price]) VALUES (N'jamal', N'1234-1234567-9', N'hk', N'nk', N'karachi', N'3', N'36000')
INSERT [dbo].[cust_detail] ([cust_name], [cust_cnic], [cust_address], [cust_area], [cust_city], [cust_not], [cust_t_price]) VALUES (N'shakeib', N'1234512345678', N'house#345,north nazimabad', N'North nazimabad #2', N'Karachi', N'2', N'24000')
INSERT [dbo].[cust_detail] ([cust_name], [cust_cnic], [cust_address], [cust_area], [cust_city], [cust_not], [cust_t_price]) VALUES (N'asif', N'4212312345671', N'house#32,latif nagar', N'NK', N'Karachi', N'1', N'12000')
INSERT [dbo].[cust_detail] ([cust_name], [cust_cnic], [cust_address], [cust_area], [cust_city], [cust_not], [cust_t_price]) VALUES (N'khuzaima', N'5432176543219', N'house#99,block 13D', N'Gulshan e Iqbal', N'Karachi', N'3', N'3000')
SET IDENTITY_INSERT [dbo].[price_table] ON 

INSERT [dbo].[price_table] ([id], [name], [price]) VALUES (1, N'vip', 12000)
INSERT [dbo].[price_table] ([id], [name], [price]) VALUES (2, N'premium', 6000)
INSERT [dbo].[price_table] ([id], [name], [price]) VALUES (3, N'first class', 4000)
INSERT [dbo].[price_table] ([id], [name], [price]) VALUES (4, N'general', 1000)
SET IDENTITY_INSERT [dbo].[price_table] OFF
SET IDENTITY_INSERT [dbo].[signup_table] ON 

INSERT [dbo].[signup_table] ([id], [name], [pass], [con_pass], [email], [gen]) VALUES (1, N'atif', N'123', N'123', N'atif@gmail.com', N'Male')
INSERT [dbo].[signup_table] ([id], [name], [pass], [con_pass], [email], [gen]) VALUES (2, N'ghazi', N'12345', N'12345', N'ghazinaqvi@gmail.com', N'Male')
INSERT [dbo].[signup_table] ([id], [name], [pass], [con_pass], [email], [gen]) VALUES (3, N'murtaza', N'54321', N'54321', N'murtaza12@gmail.com', N'Male')
INSERT [dbo].[signup_table] ([id], [name], [pass], [con_pass], [email], [gen]) VALUES (4, N'asad', N'1234', N'1234', N'123@gmail/com', N'Male')
SET IDENTITY_INSERT [dbo].[signup_table] OFF
USE [master]
GO
ALTER DATABASE [TCA] SET  READ_WRITE 
GO
