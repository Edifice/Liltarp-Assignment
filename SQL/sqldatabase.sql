USE [master]
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
/****** Object:  Table [dbo].[House]    Script Date: 12/5/2013 10:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[House](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[TypeID] [int] NOT NULL,
	[Description] [text] NOT NULL,
	[Image] [varchar](50) NOT NULL,
 CONSTRAINT [PK_House] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HouseType]    Script Date: 12/5/2013 10:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HouseType](
	[ID] [int] NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_HouseType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 12/5/2013 10:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ticket](
	[ID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[E-mail] [varchar](50) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[HouseID] [int] NOT NULL,
	[SolvedBy] [int] NOT NULL,
	[Solved] [bit] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 12/5/2013 10:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] NOT NULL,
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
SET IDENTITY_INSERT [dbo].[House] ON 

GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (1, N'SM-T2', 1, N'aaaaaa', N'sm-t/2.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (2, N'SM-T3', 1, N'AAAAA', N'sm-t/3.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (3, N'SM-T4', 1, N'aaaaaaa', N'sm-t/4.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (4, N'SM-T5', 1, N'aaaaaaa', N'sm-t/5.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (5, N'SM-T5S', 1, N'aaaaaaa', N'sm-t/5S.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (6, N'SM-T6', 1, N'aaaaaaa', N'sm-t/6.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (7, N'SM-T7', 1, N'aaaaaaa', N'sm-t/7.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (8, N'SM-T8', 1, N'aaaaaaa', N'sm-t/8.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (9, N'SM-T9', 1, N'aaaaaaa', N'sm-t/9.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (10, N'SM-T10', 1, N'aaaaaaa', N'sm-t/10.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (11, N'SM-T11', 1, N'aaaaaaa', N'sm-t/11.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (12, N'SM-T12', 1, N'aaaaaaa', N'sm-t/12.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (13, N'SM-V1', 2, N'aaaaaaa', N'sm-v/1.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (14, N'SM-V2', 2, N'aaaaaaa', N'sm-v/2.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (15, N'SM-V3S', 2, N'aaaaaaa', N'sm-v/3S.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (16, N'SM-V3SS', 2, N'aaaaaaa', N'sm-v/3SS.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (17, N'SM-V4', 2, N'aaaaaaa', N'sm-v/4.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (18, N'SM-V5S', 2, N'aaaaaaa', N'sm-v/5S.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (19, N'SM-V6S', 2, N'aaaaaaa', N'sm-v/6S.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (20, N'SM-L2', 3, N'aaaaaaa', N'sm-l/2.jpg')
GO
SET IDENTITY_INSERT [dbo].[House] OFF
GO
INSERT [dbo].[HouseType] ([ID], [Name]) VALUES (1, N'SM-T')
GO
INSERT [dbo].[HouseType] ([ID], [Name]) VALUES (2, N'SM-V')
GO
INSERT [dbo].[HouseType] ([ID], [Name]) VALUES (3, NULL)
GO
INSERT [dbo].[User] ([ID], [E-mail], [Password]) VALUES (1, N'admin@liltarp.dk', N'foobar')
GO
ALTER TABLE [dbo].[House]  WITH CHECK ADD  CONSTRAINT [FK_House_HouseType] FOREIGN KEY([TypeID])
REFERENCES [dbo].[HouseType] ([ID])
GO
ALTER TABLE [dbo].[House] CHECK CONSTRAINT [FK_House_HouseType]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_House] FOREIGN KEY([HouseID])
REFERENCES [dbo].[House] ([Id])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_House]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_User] FOREIGN KEY([SolvedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_User]
GO
USE [master]
GO
ALTER DATABASE [liltarp] SET  READ_WRITE 
GO
