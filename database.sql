USE [master]
GO
/****** Object:  Database [Assignment]    Script Date: 6/15/2022 9:28:05 PM ******/
CREATE DATABASE [Assignment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Assignment', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Assignment.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Assignment_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Assignment_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Assignment] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Assignment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Assignment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Assignment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Assignment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Assignment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Assignment] SET ARITHABORT OFF 
GO
ALTER DATABASE [Assignment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Assignment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Assignment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Assignment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Assignment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Assignment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Assignment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Assignment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Assignment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Assignment] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Assignment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Assignment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Assignment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Assignment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Assignment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Assignment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Assignment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Assignment] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Assignment] SET  MULTI_USER 
GO
ALTER DATABASE [Assignment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Assignment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Assignment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Assignment] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Assignment] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Assignment] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Assignment] SET QUERY_STORE = OFF
GO
USE [Assignment]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 6/15/2022 9:28:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[ID] [nchar](10) NOT NULL,
	[Room] [nvarchar](50) NOT NULL,
	[Slot] [nchar](10) NOT NULL,
	[TeacherName] [nvarchar](50) NOT NULL,
	[Subject] [nvarchar](50) NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecture]    Script Date: 6/15/2022 9:28:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecture](
	[LectureID] [nvarchar](50) NOT NULL,
	[Namelecture] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Lecture] PRIMARY KEY CLUSTERED 
(
	[Namelecture] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 6/15/2022 9:28:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[Room] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[Room] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slot]    Script Date: 6/15/2022 9:28:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slot](
	[Slot] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Slot] PRIMARY KEY CLUSTERED 
(
	[Slot] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 6/15/2022 9:28:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[IdStudent] [nvarchar](50) NOT NULL,
	[NameStudent] [nvarchar](50) NOT NULL,
	[Male] [bit] NOT NULL,
	[NameSubject] [nvarchar](50) NOT NULL,
	[GROUP] [nchar](10) NULL,
	[Atendent] [bit] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[IdStudent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 6/15/2022 9:28:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[Subject] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[Subject] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Group] ([ID], [Room], [Slot], [TeacherName], [Subject], [Date]) VALUES (N'1         ', N'BE-201', N'1         ', N'Sonnt5', N'PRJ301', CAST(N'2022-01-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Group] ([ID], [Room], [Slot], [TeacherName], [Subject], [Date]) VALUES (N'10        ', N'AL-311', N'4         ', N'Sonnt5', N'PRJ301', CAST(N'2022-02-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Group] ([ID], [Room], [Slot], [TeacherName], [Subject], [Date]) VALUES (N'2         ', N'BE-202', N'1         ', N'Thopn', N'PRO192', CAST(N'2022-01-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Group] ([ID], [Room], [Slot], [TeacherName], [Subject], [Date]) VALUES (N'3         ', N'BE-201', N'2         ', N'Chilp', N'PRN292', CAST(N'2022-01-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Group] ([ID], [Room], [Slot], [TeacherName], [Subject], [Date]) VALUES (N'4         ', N'BE-202', N'2         ', N'Thopn', N'PRF192', CAST(N'2022-01-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Group] ([ID], [Room], [Slot], [TeacherName], [Subject], [Date]) VALUES (N'5         ', N'BE-301', N'1         ', N'Sonnt5', N'PRO192', CAST(N'2022-01-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Group] ([ID], [Room], [Slot], [TeacherName], [Subject], [Date]) VALUES (N'6         ', N'AL-101', N'1         ', N'Sonnt5', N'PRN292', CAST(N'2022-02-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Group] ([ID], [Room], [Slot], [TeacherName], [Subject], [Date]) VALUES (N'7         ', N'AL-101', N'2         ', N'Hapn', N'PRN292', CAST(N'2022-02-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Group] ([ID], [Room], [Slot], [TeacherName], [Subject], [Date]) VALUES (N'8         ', N'AL-123', N'2         ', N'Sonnt5', N'PRJ301', CAST(N'2022-02-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Group] ([ID], [Room], [Slot], [TeacherName], [Subject], [Date]) VALUES (N'9         ', N'AL-211', N'3         ', N'Sonnt5', N'PRJ301', CAST(N'2022-02-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lecture] ([LectureID], [Namelecture]) VALUES (N'312412', N'Chilp')
INSERT [dbo].[Lecture] ([LectureID], [Namelecture]) VALUES (N'212313', N'Hapn')
INSERT [dbo].[Lecture] ([LectureID], [Namelecture]) VALUES (N'321312', N'Khuongpn')
INSERT [dbo].[Lecture] ([LectureID], [Namelecture]) VALUES (N'123211', N'Sonnt5')
INSERT [dbo].[Lecture] ([LectureID], [Namelecture]) VALUES (N'123456', N'Thopn')
GO
INSERT [dbo].[Room] ([Room]) VALUES (N'AL-101')
INSERT [dbo].[Room] ([Room]) VALUES (N'AL-111')
INSERT [dbo].[Room] ([Room]) VALUES (N'AL-123')
INSERT [dbo].[Room] ([Room]) VALUES (N'AL-211')
INSERT [dbo].[Room] ([Room]) VALUES (N'AL-311')
INSERT [dbo].[Room] ([Room]) VALUES (N'AL-321')
INSERT [dbo].[Room] ([Room]) VALUES (N'BE-201')
INSERT [dbo].[Room] ([Room]) VALUES (N'BE-202')
INSERT [dbo].[Room] ([Room]) VALUES (N'BE-301')
INSERT [dbo].[Room] ([Room]) VALUES (N'BE-304')
INSERT [dbo].[Room] ([Room]) VALUES (N'BE-321')
INSERT [dbo].[Room] ([Room]) VALUES (N'DE-201')
INSERT [dbo].[Room] ([Room]) VALUES (N'DE-211')
INSERT [dbo].[Room] ([Room]) VALUES (N'DE-221')
INSERT [dbo].[Room] ([Room]) VALUES (N'DE-303')
GO
INSERT [dbo].[Slot] ([Slot]) VALUES (N'1         ')
INSERT [dbo].[Slot] ([Slot]) VALUES (N'2         ')
INSERT [dbo].[Slot] ([Slot]) VALUES (N'3         ')
INSERT [dbo].[Slot] ([Slot]) VALUES (N'4         ')
INSERT [dbo].[Slot] ([Slot]) VALUES (N'5         ')
INSERT [dbo].[Slot] ([Slot]) VALUES (N'6         ')
INSERT [dbo].[Slot] ([Slot]) VALUES (N'7         ')
GO
INSERT [dbo].[Student] ([IdStudent], [NameStudent], [Male], [NameSubject], [GROUP], [Atendent]) VALUES (N'1', N'Congbthe153213', 1, N'PRN292', N'3         ', 0)
INSERT [dbo].[Student] ([IdStudent], [NameStudent], [Male], [NameSubject], [GROUP], [Atendent]) VALUES (N'10', N'Hunghe161555', 1, N'PRF192', N'4         ', 0)
INSERT [dbo].[Student] ([IdStudent], [NameStudent], [Male], [NameSubject], [GROUP], [Atendent]) VALUES (N'11', N'Huyhe176543', 1, N'PRF192', N'4         ', 0)
INSERT [dbo].[Student] ([IdStudent], [NameStudent], [Male], [NameSubject], [GROUP], [Atendent]) VALUES (N'12', N'Hoanthe173219', 0, N'PRF192', N'4         ', 0)
INSERT [dbo].[Student] ([IdStudent], [NameStudent], [Male], [NameSubject], [GROUP], [Atendent]) VALUES (N'13', N'Hatthe164123', 0, N'PRO192', N'5         ', 0)
INSERT [dbo].[Student] ([IdStudent], [NameStudent], [Male], [NameSubject], [GROUP], [Atendent]) VALUES (N'14', N'Hoangtv152224', 1, N'PRJ301', N'9         ', 0)
INSERT [dbo].[Student] ([IdStudent], [NameStudent], [Male], [NameSubject], [GROUP], [Atendent]) VALUES (N'2', N'Giangttthe155666', 0, N'PRN292', N'6         ', 0)
INSERT [dbo].[Student] ([IdStudent], [NameStudent], [Male], [NameSubject], [GROUP], [Atendent]) VALUES (N'3', N'Anhnbt141555', 1, N'PRN292', N'7         ', 0)
INSERT [dbo].[Student] ([IdStudent], [NameStudent], [Male], [NameSubject], [GROUP], [Atendent]) VALUES (N'4', N'Anhnbhe141111', 1, N'PRJ301', N'1         ', 0)
INSERT [dbo].[Student] ([IdStudent], [NameStudent], [Male], [NameSubject], [GROUP], [Atendent]) VALUES (N'5', N'Thuynthe1513321', 0, N'PRN292', N'6         ', 0)
INSERT [dbo].[Student] ([IdStudent], [NameStudent], [Male], [NameSubject], [GROUP], [Atendent]) VALUES (N'6', N'Anhnbthe141555', 1, N'PRJ301', N'10        ', 0)
INSERT [dbo].[Student] ([IdStudent], [NameStudent], [Male], [NameSubject], [GROUP], [Atendent]) VALUES (N'7', N'Thuynthe151555', 1, N'PRJ301', N'8         ', 0)
INSERT [dbo].[Student] ([IdStudent], [NameStudent], [Male], [NameSubject], [GROUP], [Atendent]) VALUES (N'8', N'Thuybthe151555', 1, N'PRO192', N'2         ', 0)
INSERT [dbo].[Student] ([IdStudent], [NameStudent], [Male], [NameSubject], [GROUP], [Atendent]) VALUES (N'9', N'Vietnthe154321', 0, N'PRO192', N'2         ', 0)
GO
INSERT [dbo].[Subject] ([Subject]) VALUES (N'PRF192')
INSERT [dbo].[Subject] ([Subject]) VALUES (N'PRJ301')
INSERT [dbo].[Subject] ([Subject]) VALUES (N'PRN292')
INSERT [dbo].[Subject] ([Subject]) VALUES (N'PRO192')
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Lecture] FOREIGN KEY([TeacherName])
REFERENCES [dbo].[Lecture] ([Namelecture])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Lecture]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Room] FOREIGN KEY([Room])
REFERENCES [dbo].[Room] ([Room])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Room]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Slot] FOREIGN KEY([Slot])
REFERENCES [dbo].[Slot] ([Slot])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Slot]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Subject] FOREIGN KEY([Subject])
REFERENCES [dbo].[Subject] ([Subject])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Subject]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Group] FOREIGN KEY([GROUP])
REFERENCES [dbo].[Group] ([ID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Group]
GO
USE [master]
GO
ALTER DATABASE [Assignment] SET  READ_WRITE 
GO
