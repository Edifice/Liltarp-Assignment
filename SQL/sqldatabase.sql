USE [master]
GO
/****** Object:  Database [liltarp]    Script Date: 10-12-2013 13:17:14 ******/
ALTER DATABASE [liltarp] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [liltarp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [liltarp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [liltarp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [liltarp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [liltarp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [liltarp] SET ARITHABORT OFF 
GO
ALTER DATABASE [liltarp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [liltarp] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [liltarp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [liltarp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [liltarp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [liltarp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [liltarp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [liltarp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [liltarp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [liltarp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [liltarp] SET  DISABLE_BROKER 
GO
ALTER DATABASE [liltarp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [liltarp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [liltarp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [liltarp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [liltarp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [liltarp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [liltarp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [liltarp] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [liltarp] SET  MULTI_USER 
GO
ALTER DATABASE [liltarp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [liltarp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [liltarp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [liltarp] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [liltarp]
GO
/****** Object:  Table [dbo].[House]    Script Date: 10-12-2013 13:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[House](
	[ID] [nvarchar](38) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[TypeID] [nvarchar](38) NOT NULL,
	[Description] [text] NOT NULL,
	[Image] [varchar](50) NOT NULL,
 CONSTRAINT [PK_House] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HouseType]    Script Date: 10-12-2013 13:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HouseType](
	[ID] [nvarchar](38) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_HouseType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 10-12-2013 13:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ticket](
	[ID] [nvarchar](38) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[E-mail] [varchar](50) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[HouseID] [nvarchar](38) NULL,
	[SolvedBy] [int] NULL,
	[Solved] [bit] NULL,
	[UserText] [text] NULL,
 CONSTRAINT [PK_Ticket] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 10-12-2013 13:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[ID] [nvarchar](38) NOT NULL,
	[E-mail] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[House] ([ID], [Name], [TypeID], [Description], [Image]) VALUES (N'1', N'SM-T2', N'1', N'aaaaaa', N'sm-t/2.jpg')
GO
INSERT [dbo].[House] ([ID], [Name], [TypeID], [Description], [Image]) VALUES (N'10', N'SM-T10', N'1', N'aaaaaaa', N'sm-t/10.jpg')
GO
INSERT [dbo].[House] ([ID], [Name], [TypeID], [Description], [Image]) VALUES (N'11', N'SM-T11', N'1', N'aaaaaaa', N'sm-t/11.jpg')
GO
INSERT [dbo].[House] ([ID], [Name], [TypeID], [Description], [Image]) VALUES (N'12', N'SM-T12', N'1', N'aaaaaaa', N'sm-t/12.jpg')
GO
INSERT [dbo].[House] ([ID], [Name], [TypeID], [Description], [Image]) VALUES (N'13', N'SM-V1', N'2', N'aaaaaaa', N'sm-v/1.jpg')
GO
INSERT [dbo].[House] ([ID], [Name], [TypeID], [Description], [Image]) VALUES (N'14', N'SM-V2', N'2', N'aaaaaaa', N'sm-v/2.jpg')
GO
INSERT [dbo].[House] ([ID], [Name], [TypeID], [Description], [Image]) VALUES (N'15', N'SM-V3S', N'2', N'aaaaaaa', N'sm-v/3S.jpg')
GO
INSERT [dbo].[House] ([ID], [Name], [TypeID], [Description], [Image]) VALUES (N'16', N'SM-V3SS', N'2', N'aaaaaaa', N'sm-v/3SS.jpg')
GO
INSERT [dbo].[House] ([ID], [Name], [TypeID], [Description], [Image]) VALUES (N'17', N'SM-V4', N'2', N'aaaaaaa', N'sm-v/4.jpg')
GO
INSERT [dbo].[House] ([ID], [Name], [TypeID], [Description], [Image]) VALUES (N'18', N'SM-V5S', N'2', N'aaaaaaa', N'sm-v/5S.jpg')
GO
INSERT [dbo].[House] ([ID], [Name], [TypeID], [Description], [Image]) VALUES (N'19', N'SM-V6S', N'2', N'aaaaaaa', N'sm-v/6S.jpg')
GO
INSERT [dbo].[House] ([ID], [Name], [TypeID], [Description], [Image]) VALUES (N'2', N'SM-T3', N'1', N'AAAAA', N'sm-t/3.jpg')
GO
INSERT [dbo].[House] ([ID], [Name], [TypeID], [Description], [Image]) VALUES (N'20', N'SM-L2', N'3', N'aaaaaaa', N'sm-l/2.jpg')
GO
INSERT [dbo].[House] ([ID], [Name], [TypeID], [Description], [Image]) VALUES (N'3', N'SM-T4', N'1', N'aaaaaaa', N'sm-t/4.jpg')
GO
INSERT [dbo].[House] ([ID], [Name], [TypeID], [Description], [Image]) VALUES (N'4', N'SM-T5', N'1', N'aaaaaaa', N'sm-t/5.jpg')
GO
INSERT [dbo].[House] ([ID], [Name], [TypeID], [Description], [Image]) VALUES (N'5', N'SM-T5S', N'1', N'aaaaaaa', N'sm-t/5S.jpg')
GO
INSERT [dbo].[House] ([ID], [Name], [TypeID], [Description], [Image]) VALUES (N'6', N'SM-T6', N'1', N'aaaaaaa', N'sm-t/6.jpg')
GO
INSERT [dbo].[House] ([ID], [Name], [TypeID], [Description], [Image]) VALUES (N'7', N'SM-T7', N'1', N'aaaaaaa', N'sm-t/7.jpg')
GO
INSERT [dbo].[House] ([ID], [Name], [TypeID], [Description], [Image]) VALUES (N'8', N'SM-T8', N'1', N'aaaaaaa', N'sm-t/8.jpg')
GO
INSERT [dbo].[House] ([ID], [Name], [TypeID], [Description], [Image]) VALUES (N'9', N'SM-T9', N'1', N'aaaaaaa', N'sm-t/9.jpg')
GO
INSERT [dbo].[HouseType] ([ID], [Name]) VALUES (N'1', N'SM-T')
GO
INSERT [dbo].[HouseType] ([ID], [Name]) VALUES (N'2', N'SM-V')
GO
INSERT [dbo].[HouseType] ([ID], [Name]) VALUES (N'3', NULL)
GO
INSERT [dbo].[User] ([ID], [E-mail], [Password]) VALUES (N'1', N'admin@liltarp.dk', N'foobar')
GO
ALTER TABLE [dbo].[House]  WITH CHECK ADD  CONSTRAINT [FK_House_HouseType] FOREIGN KEY([TypeID])
REFERENCES [dbo].[HouseType] ([ID])
GO
ALTER TABLE [dbo].[House] CHECK CONSTRAINT [FK_House_HouseType]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_House1] FOREIGN KEY([HouseID])
REFERENCES [dbo].[House] ([ID])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_House1]
GO
USE [master]
GO
ALTER DATABASE [liltarp] SET  READ_WRITE 
GO
