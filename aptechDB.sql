USE [master]
GO
/****** Object:  Database [aptechDB]    Script Date: 9/30/2019 11:35:40 AM ******/
CREATE DATABASE [aptechDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'aptechDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\aptechDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'aptechDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\aptechDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [aptechDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [aptechDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [aptechDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [aptechDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [aptechDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [aptechDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [aptechDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [aptechDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [aptechDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [aptechDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [aptechDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [aptechDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [aptechDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [aptechDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [aptechDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [aptechDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [aptechDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [aptechDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [aptechDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [aptechDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [aptechDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [aptechDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [aptechDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [aptechDB] SET RECOVERY FULL 
GO
ALTER DATABASE [aptechDB] SET  MULTI_USER 
GO
ALTER DATABASE [aptechDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [aptechDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [aptechDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [aptechDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'aptechDB', N'ON'
GO
USE [aptechDB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [aptechDB]
GO
/****** Object:  Table [dbo].[batch]    Script Date: 9/30/2019 11:35:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[batch](
	[b_id] [bigint] IDENTITY(1,1) NOT NULL,
	[b_name] [varchar](6) NOT NULL,
	[b_dayID] [tinyint] NOT NULL,
	[b_timID] [tinyint] NOT NULL,
	[b_facID] [int] NOT NULL,
	[b_status] [tinyint] NOT NULL,
	[b_startDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[b_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[campuses]    Script Date: 9/30/2019 11:35:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[campuses](
	[c_id] [int] IDENTITY(1,1) NOT NULL,
	[c_name] [varchar](30) NOT NULL,
	[c_address] [varchar](100) NOT NULL,
	[c_phone] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[c_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[coursesOffered]    Script Date: 9/30/2019 11:35:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[coursesOffered](
	[co_id] [int] IDENTITY(1,1) NOT NULL,
	[co_name] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[co_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[curriculum]    Script Date: 9/30/2019 11:35:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[curriculum](
	[c_id] [int] IDENTITY(1,1) NOT NULL,
	[c_name] [varchar](30) NOT NULL,
	[c_code] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[c_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dayss]    Script Date: 9/30/2019 11:35:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dayss](
	[d_id] [tinyint] IDENTITY(1,1) NOT NULL,
	[d_name] [varchar](3) NOT NULL,
 CONSTRAINT [PK_dayss] PRIMARY KEY CLUSTERED 
(
	[d_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[departments]    Script Date: 9/30/2019 11:35:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departments](
	[d_id] [int] IDENTITY(1,1) NOT NULL,
	[d_name] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[d_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[enrollType]    Script Date: 9/30/2019 11:35:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[enrollType](
	[et_id] [int] IDENTITY(1,1) NOT NULL,
	[et_name] [varchar](30) NOT NULL,
	[et_currID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[et_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mediaFormats]    Script Date: 9/30/2019 11:35:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mediaFormats](
	[mf_id] [int] IDENTITY(1,1) NOT NULL,
	[mf_name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[mf_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[roles]    Script Date: 9/30/2019 11:35:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[r_id] [int] IDENTITY(1,1) NOT NULL,
	[r_name] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[r_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[semesters]    Script Date: 9/30/2019 11:35:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[semesters](
	[s_id] [int] IDENTITY(1,1) NOT NULL,
	[s_name] [varchar](10) NOT NULL,
	[s_currID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[s_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[timings]    Script Date: 9/30/2019 11:35:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[timings](
	[t_id] [tinyint] IDENTITY(1,1) NOT NULL,
	[t_name] [varchar](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[t_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[users]    Script Date: 9/30/2019 11:35:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[u_id] [int] IDENTITY(1,1) NOT NULL,
	[u_name] [varchar](30) NOT NULL,
	[u_username] [varchar](30) NOT NULL,
	[u_pass] [nvarchar](20) NOT NULL,
	[u_phone] [varchar](15) NOT NULL,
	[u_email] [varchar](15) NOT NULL,
	[u_roleID] [int] NOT NULL,
	[u_departID] [int] NOT NULL,
	[u_address] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[u_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[walkins]    Script Date: 9/30/2019 11:35:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[walkins](
	[w_id] [bigint] IDENTITY(1,1) NOT NULL,
	[w_datetime] [datetime] NOT NULL,
	[w_fullname] [varchar](30) NOT NULL,
	[w_phone1] [varchar](15) NOT NULL,
	[w_phone2] [varchar](15) NULL,
	[w_email] [varchar](30) NOT NULL,
	[w_dob] [date] NULL,
	[w_coID] [int] NOT NULL,
	[w_mfID] [int] NOT NULL,
	[w_userID] [int] NOT NULL,
	[w_serialNo] [varchar](25) NULL,
	[w_isAdmissionTaken] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[w_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[campuses] ON 

INSERT [dbo].[campuses] ([c_id], [c_name], [c_address], [c_phone]) VALUES (1002, N'North Karachi', N'Sector 11-B', N'0213-1234567')
INSERT [dbo].[campuses] ([c_id], [c_name], [c_address], [c_phone]) VALUES (1003, N'North Nazimabad', N'Block A ', N'0213-233434')
SET IDENTITY_INSERT [dbo].[campuses] OFF
SET IDENTITY_INSERT [dbo].[coursesOffered] ON 

INSERT [dbo].[coursesOffered] ([co_id], [co_name]) VALUES (1, N'ACCP Program')
INSERT [dbo].[coursesOffered] ([co_id], [co_name]) VALUES (8, N'Advance Excel')
INSERT [dbo].[coursesOffered] ([co_id], [co_name]) VALUES (3, N'ASP.NET')
INSERT [dbo].[coursesOffered] ([co_id], [co_name]) VALUES (2, N'C# .NET')
INSERT [dbo].[coursesOffered] ([co_id], [co_name]) VALUES (4, N'Java')
INSERT [dbo].[coursesOffered] ([co_id], [co_name]) VALUES (6, N'MS Office')
INSERT [dbo].[coursesOffered] ([co_id], [co_name]) VALUES (9, N'PHP MYSQL')
INSERT [dbo].[coursesOffered] ([co_id], [co_name]) VALUES (5, N'Web Designing')
INSERT [dbo].[coursesOffered] ([co_id], [co_name]) VALUES (7, N'Web Development')
SET IDENTITY_INSERT [dbo].[coursesOffered] OFF
SET IDENTITY_INSERT [dbo].[curriculum] ON 

INSERT [dbo].[curriculum] ([c_id], [c_name], [c_code]) VALUES (1, N'ACCP PRIME', N'6740')
INSERT [dbo].[curriculum] ([c_id], [c_name], [c_code]) VALUES (2, N'ACCP EE', N'6673')
SET IDENTITY_INSERT [dbo].[curriculum] OFF
SET IDENTITY_INSERT [dbo].[departments] ON 

INSERT [dbo].[departments] ([d_id], [d_name]) VALUES (4, N'Accounts')
INSERT [dbo].[departments] ([d_id], [d_name]) VALUES (3, N'Administration')
INSERT [dbo].[departments] ([d_id], [d_name]) VALUES (1, N'Faculty')
INSERT [dbo].[departments] ([d_id], [d_name]) VALUES (2, N'Marketing')
SET IDENTITY_INSERT [dbo].[departments] OFF
SET IDENTITY_INSERT [dbo].[mediaFormats] ON 

INSERT [dbo].[mediaFormats] ([mf_id], [mf_name]) VALUES (1, N'News Paper / Magazine')
INSERT [dbo].[mediaFormats] ([mf_id], [mf_name]) VALUES (2, N'Flyer / Handbill / Brochure')
INSERT [dbo].[mediaFormats] ([mf_id], [mf_name]) VALUES (3, N'Banner / Bill Board')
INSERT [dbo].[mediaFormats] ([mf_id], [mf_name]) VALUES (4, N'Friend')
INSERT [dbo].[mediaFormats] ([mf_id], [mf_name]) VALUES (5, N'Email / Website')
INSERT [dbo].[mediaFormats] ([mf_id], [mf_name]) VALUES (6, N'Other')
SET IDENTITY_INSERT [dbo].[mediaFormats] OFF
SET IDENTITY_INSERT [dbo].[roles] ON 

INSERT [dbo].[roles] ([r_id], [r_name]) VALUES (1, N'Administrator')
INSERT [dbo].[roles] ([r_id], [r_name]) VALUES (1003, N'Career Councillor')
INSERT [dbo].[roles] ([r_id], [r_name]) VALUES (2, N'Faculty')
INSERT [dbo].[roles] ([r_id], [r_name]) VALUES (1002, N'Receptionist')
SET IDENTITY_INSERT [dbo].[roles] OFF
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([u_id], [u_name], [u_username], [u_pass], [u_phone], [u_email], [u_roleID], [u_departID], [u_address]) VALUES (1, N'Ali', N'ali', N'123456', N'23423423', N'dfgdfgfdg', 1, 1, N'sdfsdf')
INSERT [dbo].[users] ([u_id], [u_name], [u_username], [u_pass], [u_phone], [u_email], [u_roleID], [u_departID], [u_address]) VALUES (2, N'Tahir', N'tahir', N'12345', N'456456456', N'tahir@gmail.com', 1002, 3, N'NK')
SET IDENTITY_INSERT [dbo].[users] OFF
SET IDENTITY_INSERT [dbo].[walkins] ON 

INSERT [dbo].[walkins] ([w_id], [w_datetime], [w_fullname], [w_phone1], [w_phone2], [w_email], [w_dob], [w_coID], [w_mfID], [w_userID], [w_serialNo], [w_isAdmissionTaken]) VALUES (1, CAST(N'2019-09-18T00:00:00.000' AS DateTime), N'Farooq', N'0345-1231231', NULL, N'farooq@gmail.com', CAST(N'2001-04-23' AS Date), 1, 3, 2, NULL, 0)
INSERT [dbo].[walkins] ([w_id], [w_datetime], [w_fullname], [w_phone1], [w_phone2], [w_email], [w_dob], [w_coID], [w_mfID], [w_userID], [w_serialNo], [w_isAdmissionTaken]) VALUES (2, CAST(N'2019-09-18T00:00:00.000' AS DateTime), N'Javeria', N'0345-3453453', N'-', N'jaw@gmail.com', CAST(N'2001-01-01' AS Date), 3, 4, 2, NULL, 0)
SET IDENTITY_INSERT [dbo].[walkins] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__batch__E904528BC85F7320]    Script Date: 9/30/2019 11:35:40 AM ******/
ALTER TABLE [dbo].[batch] ADD UNIQUE NONCLUSTERED 
(
	[b_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__campuses__29397C8197D2DA98]    Script Date: 9/30/2019 11:35:40 AM ******/
ALTER TABLE [dbo].[campuses] ADD UNIQUE NONCLUSTERED 
(
	[c_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__coursesO__D481848476054FF4]    Script Date: 9/30/2019 11:35:40 AM ******/
ALTER TABLE [dbo].[coursesOffered] ADD UNIQUE NONCLUSTERED 
(
	[co_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__curricul__156760F561479CEB]    Script Date: 9/30/2019 11:35:40 AM ******/
ALTER TABLE [dbo].[curriculum] ADD UNIQUE NONCLUSTERED 
(
	[c_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__curricul__29397C8119AE2E07]    Script Date: 9/30/2019 11:35:40 AM ******/
ALTER TABLE [dbo].[curriculum] ADD UNIQUE NONCLUSTERED 
(
	[c_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__dayss__0F8E33BCBC62998C]    Script Date: 9/30/2019 11:35:40 AM ******/
ALTER TABLE [dbo].[dayss] ADD  CONSTRAINT [UQ__dayss__0F8E33BCBC62998C] UNIQUE NONCLUSTERED 
(
	[d_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__departme__0F8E33BCC775D550]    Script Date: 9/30/2019 11:35:40 AM ******/
ALTER TABLE [dbo].[departments] ADD UNIQUE NONCLUSTERED 
(
	[d_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [unique_ab]    Script Date: 9/30/2019 11:35:40 AM ******/
ALTER TABLE [dbo].[enrollType] ADD  CONSTRAINT [unique_ab] UNIQUE NONCLUSTERED 
(
	[et_name] ASC,
	[et_currID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__roles__92CB0F55C719ABD7]    Script Date: 9/30/2019 11:35:40 AM ******/
ALTER TABLE [dbo].[roles] ADD UNIQUE NONCLUSTERED 
(
	[r_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [unique_bc]    Script Date: 9/30/2019 11:35:40 AM ******/
ALTER TABLE [dbo].[semesters] ADD  CONSTRAINT [unique_bc] UNIQUE NONCLUSTERED 
(
	[s_name] ASC,
	[s_currID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__timings__B85BEBFE9DB1C935]    Script Date: 9/30/2019 11:35:40 AM ******/
ALTER TABLE [dbo].[timings] ADD UNIQUE NONCLUSTERED 
(
	[t_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__users__D7B24D677D08F2A6]    Script Date: 9/30/2019 11:35:40 AM ******/
ALTER TABLE [dbo].[users] ADD UNIQUE NONCLUSTERED 
(
	[u_username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__walkins__245764451413AA1A]    Script Date: 9/30/2019 11:35:40 AM ******/
ALTER TABLE [dbo].[walkins] ADD UNIQUE NONCLUSTERED 
(
	[w_phone1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__walkins__2858DC24AF973623]    Script Date: 9/30/2019 11:35:40 AM ******/
ALTER TABLE [dbo].[walkins] ADD UNIQUE NONCLUSTERED 
(
	[w_email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[walkins] ADD  DEFAULT ((0)) FOR [w_isAdmissionTaken]
GO
ALTER TABLE [dbo].[batch]  WITH CHECK ADD FOREIGN KEY([b_dayID])
REFERENCES [dbo].[dayss] ([d_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[batch]  WITH CHECK ADD FOREIGN KEY([b_facID])
REFERENCES [dbo].[users] ([u_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[batch]  WITH CHECK ADD FOREIGN KEY([b_timID])
REFERENCES [dbo].[timings] ([t_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[enrollType]  WITH CHECK ADD FOREIGN KEY([et_currID])
REFERENCES [dbo].[curriculum] ([c_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[semesters]  WITH CHECK ADD FOREIGN KEY([s_currID])
REFERENCES [dbo].[curriculum] ([c_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD FOREIGN KEY([u_departID])
REFERENCES [dbo].[departments] ([d_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD FOREIGN KEY([u_roleID])
REFERENCES [dbo].[roles] ([r_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[walkins]  WITH CHECK ADD FOREIGN KEY([w_coID])
REFERENCES [dbo].[coursesOffered] ([co_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[walkins]  WITH CHECK ADD FOREIGN KEY([w_mfID])
REFERENCES [dbo].[mediaFormats] ([mf_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[walkins]  WITH CHECK ADD FOREIGN KEY([w_userID])
REFERENCES [dbo].[users] ([u_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
/****** Object:  StoredProcedure [dbo].[st_getCampusCount]    Script Date: 9/30/2019 11:35:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[st_getCampusCount]
as

select count(c.c_name) as 'Col1', 'Campus' as 'Col2' from campuses c 
union all
select count(c.c_name)as 'Col1', 'Curriculum'as 'Col2'   from curriculum c
union all
select count(r.r_name)as 'Col1','Roles' as 'Col2'from roles r 
union all
select count(c.d_name)as 'Col1' ,'Department'as 'Col2' from departments c
union all
select count(u.u_name)as 'Col1' ,'Users'as 'Col2' from users u


GO
/****** Object:  StoredProcedure [dbo].[st_getLoginDetails]    Script Date: 9/30/2019 11:35:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[st_getLoginDetails]
@user varchar(30),
@pass nvarchar(20)
as
select u.u_name as 'Name',d.d_id as 'DepartID',d.d_name as 'Department',r.r_id as 'RoleID',r.r_name as 'Role',u.u_id as 'UID'  from users u
inner join roles r
on r.r_id = u.u_roleID
inner join departments d
on d.d_id = u.u_departID
 where u.u_username =@user and u.u_pass =@pass

GO
/****** Object:  StoredProcedure [dbo].[st_getTodaysWalkins]    Script Date: 9/30/2019 11:35:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[st_getTodaysWalkins]
@day int ,
@month int,
@year int,
@userID int
as
select 
w.w_id as 'WalkinID',
w.w_fullname as 'Fullname',
w.w_phone1 as 'Phone1',
w.w_phone2 as 'Phone2'
 from walkins w
 inner join users u
 on u.u_id = w.w_userID
  where day(w.w_datetime) = @day
and month(w.w_datetime) = @month and year(w.w_datetime) = @year
and u.u_id = @userID
 order by w.w_id desc

GO
USE [master]
GO
ALTER DATABASE [aptechDB] SET  READ_WRITE 
GO
