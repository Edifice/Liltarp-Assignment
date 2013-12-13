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
SET IDENTITY_INSERT [dbo].[House] ON 

GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (1, N'SM-T2', 1, N'Typen SM-T2 giver med sin T-form gode og sp�ndende muligheder for hyggelig indretning, og udvendig er der masser af l�kroge p� terrassen.Som det fremg�r af grundplanen, er indretningen n�rmest det ultimative med hensyn til et hus uden spildplads.', N'sm-t/2.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (2, N'SM-T3', 1, N'Typen T3 giver med sin T-form gode og sp�ndende muligheder for hyggelig indretning, og udvendig er der masser af l�kroge p� terrassen. Som det fremg�r af grundplanen, er indretningen n�rmest det ultimative med hensyn til et hus uden spildplads.', N'sm-t/3.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (3, N'SM-T4', 1, N'Mange �rs erfaring med produktion af vor lille T � type har vi overf�rt til denne type, som er blevet lidt st�rre, s� der bl.a. er blevet plads til hj�rne spa, entre til garderobe m.m. T � serien giver uanede l�- og solmuligheder p� terrassen.', N'sm-t/4.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (4, N'SM-T5', 1, N'Vi har med denne nye T-type opfyldt et stort �nske fra vore kunder om en type, som har 3 store sovev�relser samt et rum til solarium, og hvilket vi har lavet her i denne type, hvor der er plads til et stort sandwich-solarium i g�stetoilettet. Men som det g�r sig g�ldende med vores �vrige modeller, kan denne type ogs� kombineres p� mange m�der.', N'sm-t/5.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (5, N'SM-T5S', 1, N'Vi har med denne nye T-type opfyldt et stort �nske fra vore kunder om en type, som har 3 store sovev�relser samt et rum til solarium, og hvilket vi har lavet her i denne type, hvor der er plads til et stort sandwich solarium i g�stetoilettet. Men som det g�r sig g�ldende med vores �vrige modeller, kan denne type ogs� kombineres p� mange m�der. NB: Vi har forl�nget denne type med 1,2 m. og derved har vi f�et et st�rre redskabsrum + overbygget terrasse ved hovedindgang + dejlig vindfang med faste skabe. Ligeledes er der monteret terrassed�r fra sovev�relset.', N'sm-t/5S.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (6, N'SM-T6', 1, N'Hermed pr�senterer vi vores sidste nye T-type, her i str�tagudf�relse. Typen er en videreudvikling af vor popul�re SM-T 5, hvor huset her er udf�rt med fors�nket pejsestue, muret skorsten og br�ndeovn, spisestue og opholdsstue med tv-hj�rne ellers er indretningen som type SM-T5s.', N'sm-t/6.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (7, N'SM-T7', 1, N'Hermed pr�senterer vi vores sidste nye T-type. Typen er en videreudvikling af vor popul�re SM-T 5s som her er udstyret med 4 sovev�relse og g�stetoilet med bruser samt privat depotrum, hvis huset lejes ud. Denne type er for den store familie eller for dem som �nsker et meget popul�rt hus til udlejning.', N'sm-t/7.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (8, N'SM-T8', 1, N'Her pr�senterer vi vores sidste nye T-type. Typen er en videreudvikling af vor popul�re SM-T 7, huset indeholder bl.a. 4 dobbelt v�relser, stor spabadev�relse med sauna, g�stetoilet med brus og plads til solarium samt stor overbygget terrasse ved indgangsparti m.m. Denne type er for den store.', N'sm-t/8.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (9, N'SM-T9', 1, N'Vi har med denne nye T- type udviklet et fritidshus som opfylder alt, hvad man kan �nske af et luksus fritidshus. Huset indeholder bl.a. aktivitetsrum med billard/bordtennisbord, dart, m.m., stort spabadev�relse, sauna, g�stetoilet med stor wellness kabine, l�kkert k�kken m/granit bordplade, alt i h�rde hvide varer bl.a. amerikanerk�leskab, stor overbygget terrasse og meget mere, som ikke kan beskrives, men som skal ses!', N'sm-t/9.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (10, N'SM-T10', 1, N'Vi har med denne nye type, som er en videre udvikling af vores popul�re T- serie, skabt et fritidshus, som opfylder alt, hvad man kan �nske af et luksus hus. Huset indeholder bl.a. aktivitetsrum med billard/bordtennisbord, dart, m.m. Stort spabadev�relse, sauna, g�stetoilet med stor wellnes kabine, l�kkert k�kken med alt i h�rde hvide varer bl.a. amerikanerk�leskab, bryggers med vaskes�jle, stor overbygget terrasse og meget mere som ikke kan beskrives, men som skal ses!', N'sm-t/10.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (11, N'SM-T11', 1, N'Efter �nske fra vores kunder har vi udviklet denne nye type, hvor vi bl.a. har �ndret sideh�jden. Typen er en videreudvikling af vores popul�re T- serie. Huset indeholder bl.a. aktivitetsrum med billard/bordtennisbord, dart, m.m. Stort spabadev�relse, sauna, g�stetoilet med stor wellness- kabine, l�kkert k�kken med alt i h�rde hvide varer bl.a. amerikanerk�leskab. 5 v�relser, entre med skabe, stor overbygget terrasse med glaspartier og meget mere som ikke kan beskrives, men som skal ses! Vi har med denne type fors�gt at skabe et fritidshus som opfylder alt, hvad man kan �nske sig af et luksushus.', N'sm-t/11.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (12, N'SM-T12', 1, N'Efter �nske fra vores kunder har vi udviklet denne nye type, hvor vi bl.a. har �ndret sideh�jden. Typen er en videreudvikling af vores popul�re SM-T10. Huset indeholder bl.a. aktivitetsrum med billard/bordtennisbord, dart, m.m. Stort spabadev�relse, sauna, g�stetoilet med stor muret brusehj�rne, l�kkert k�kken med alt i h�rde hvide varer bl.a. amerikanerk�leskab. 5 v�relser, entre med skabe, stor overbygget terrasse med glaspartier og meget mere som ikke kan beskrives, men som skal ses! Vi har med denne type fors�gt at skabe et fritidshus som opfylder alt, hvad man kan �nske sig af et luksushus.', N'sm-t/12.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (13, N'SM-V1', 2, N'Vores popul�re vinkelhus-serie blev startet helt tilbage i 1973, men er selvf�lgelig blevet videreudviklet gennem �rene. Typen SM-V1 har en funktionel indretning og en god planl�sning uden spildplads, og vinkelhuset giver mulighed for dejlige har en funktionel indretning og en god planl�sning uden spildplads, og vinkelhuset giver mulighed for dejlige hygge og l�kroge p� terrassen.', N'sm-v/1.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (14, N'SM-V2', 2, N'Vores popul�re vinkelhus-serie blev startet helt tilbage i 1973, men er selvf�lgelig blevet videreudviklet gennem �rene. Typen SM-V2 har en funktionel indretning og en god planl�sning uden spildplads, og vinkelhuset giver mulighed for dejlige hygge og l�kroge p� terrassen.', N'sm-v/2.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (15, N'SM-V3S', 2, N'Her er videreudviklingen af vor vinkelhusserie, hvor huset er udstyret med spa- badev�relse, g�stetoilet og speciel terrasseparti, som giver mere plads i stuen ved br�ndeovnen samt Velux ovenlysparti i k�kkenet.', N'sm-v/3S.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (16, N'SM-V3SS', 2, N'Som det fremg�r af grundplanen, har vi udviklet en ny type til vores popul�re vinkelhusserie, som tilgodeser nogle af de �nsker vores kunder har p�peget med hensyn til bl.a. 3 store sovev�relser, g�stetoilet med plads til sandwich solarium, ekstra stor overbygget terrasse ved indgangsd�r samt l�kker dobbelt Velux ovenlysparti i stuen.', N'sm-v/3SS.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (17, N'SM-V4', 2, N'Alle vore typer kan udf�res med str�tag, som her, hvor det er vores type SM-V4. Ogs� i denne type er der en l�kker neds�nket pejsestue, opholdsstue og spisestue med direkte �bning til k�kkenafdeling og meget mere�', N'sm-v/4.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (18, N'SM-V5S', 2, N'Vores erfaring med opf�relse af individuelle kvalitetsfritidshuse har resulteret i udvikling af denne vinkeltype med bl.a. stort spa-badev�relse, stort g�stetoilet med bruseniche samt l�kker neds�nket pejsestue med direkte udgang til stor terrasse og meget mere�', N'sm-v/5S.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (19, N'SM-V6S', 2, N'Her har vi vores st�rste type i vort standardprogram. Huset er et super l�kkert hus med alt, hvad man m�tte �nske sig af et fritidshus. Huset har to l�kre badev�relser, hvor det ene er med stor spa, sp�ndende k�kken med dobbelt Velux ovenlyskarnap, som giver masser af dejligt lys ind i k�kkenet, bryggers med vaskemaskine og t�rre- tumbler, neds�nket pejsestue og meget mere�', N'sm-v/6S.jpg')
GO
INSERT [dbo].[House] ([Id], [Name], [TypeID], [Description], [Image]) VALUES (20, N'SM-L2', 3, N'Vi har med dette l�ngehus opfyldt et �nske fra vores kunder, som har en meget smal grund. Her er denne type meget velegnet. Bem�rk det specielle overbyggede indgangsparti i siden, der giver huset et helt specielt look.', N'sm-l/2.jpg')
GO
INSERT [dbo].[HouseType] ([ID], [Name]) VALUES (N'1', N'SM-T')
GO
INSERT [dbo].[HouseType] ([ID], [Name]) VALUES (N'2', N'SM-V')
GO
INSERT [dbo].[HouseType] ([ID], [Name]) VALUES (N'3', N'SM-L')
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
