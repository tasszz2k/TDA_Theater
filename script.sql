USE [master]
GO
/****** Object:  Database [CS_TDAMovieTheater]    Script Date: 17-Nov-20 2:38:42 PM ******/
CREATE DATABASE [CS_TDAMovieTheater]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CS_TDAMovieTheater', FILENAME = N'D:\important_Software\SQL\MSSQL14.HOANG\MSSQL\DATA\CS_TDAMovieTheater.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CS_TDAMovieTheater_log', FILENAME = N'D:\important_Software\SQL\MSSQL14.HOANG\MSSQL\DATA\CS_TDAMovieTheater_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [CS_TDAMovieTheater] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CS_TDAMovieTheater].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CS_TDAMovieTheater] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CS_TDAMovieTheater] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CS_TDAMovieTheater] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CS_TDAMovieTheater] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CS_TDAMovieTheater] SET ARITHABORT OFF 
GO
ALTER DATABASE [CS_TDAMovieTheater] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CS_TDAMovieTheater] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CS_TDAMovieTheater] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CS_TDAMovieTheater] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CS_TDAMovieTheater] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CS_TDAMovieTheater] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CS_TDAMovieTheater] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CS_TDAMovieTheater] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CS_TDAMovieTheater] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CS_TDAMovieTheater] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CS_TDAMovieTheater] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CS_TDAMovieTheater] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CS_TDAMovieTheater] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CS_TDAMovieTheater] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CS_TDAMovieTheater] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CS_TDAMovieTheater] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CS_TDAMovieTheater] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CS_TDAMovieTheater] SET RECOVERY FULL 
GO
ALTER DATABASE [CS_TDAMovieTheater] SET  MULTI_USER 
GO
ALTER DATABASE [CS_TDAMovieTheater] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CS_TDAMovieTheater] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CS_TDAMovieTheater] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CS_TDAMovieTheater] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CS_TDAMovieTheater] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CS_TDAMovieTheater', N'ON'
GO
ALTER DATABASE [CS_TDAMovieTheater] SET QUERY_STORE = OFF
GO
USE [CS_TDAMovieTheater]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 17-Nov-20 2:38:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](100) NULL,
	[Password] [varchar](100) NULL,
	[Name] [nvarchar](100) NULL,
	[Dob] [date] NULL,
	[Address] [varchar](100) NULL,
	[Phone] [varchar](100) NULL,
	[Mail] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[Role_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Auditorium]    Script Date: 17-Nov-20 2:38:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auditorium](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](32) NULL,
	[Seats_no] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discount]    Script Date: 17-Nov-20 2:38:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Discount_percent] [int] NULL,
	[Code] [text] NULL,
	[Age_approved] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Food]    Script Date: 17-Nov-20 2:38:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Food](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Price] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movie]    Script Date: 17-Nov-20 2:38:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](100) NULL,
	[Director] [varchar](100) NULL,
	[Cast] [varchar](1000) NULL,
	[Description] [text] NULL,
	[Duration_min] [int] NULL,
	[Thumnail_link] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 17-Nov-20 2:38:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Role_name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Row_classification]    Script Date: 17-Nov-20 2:38:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Row_classification](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](32) NULL,
	[Price] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Screening]    Script Date: 17-Nov-20 2:38:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Screening](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Movie_id] [int] NULL,
	[Auditorium_id] [int] NULL,
	[Screening_Date] [date] NULL,
	[Start] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seat]    Script Date: 17-Nov-20 2:38:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seat](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Row_name] [varchar](32) NULL,
	[Number] [int] NULL,
	[Auditorium_id] [int] NULL,
	[Type_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seat_reservation]    Script Date: 17-Nov-20 2:38:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seat_reservation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Seat_id] [int] NULL,
	[Screening_id] [int] NULL,
	[Employee_id] [int] NULL,
	[Note] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Auditorium] ON 

INSERT [dbo].[Auditorium] ([Id], [Name], [Seats_no]) VALUES (1, N'A', 108)
INSERT [dbo].[Auditorium] ([Id], [Name], [Seats_no]) VALUES (2, N'B', 108)
INSERT [dbo].[Auditorium] ([Id], [Name], [Seats_no]) VALUES (3, N'C', 108)
INSERT [dbo].[Auditorium] ([Id], [Name], [Seats_no]) VALUES (4, N'D', 108)
INSERT [dbo].[Auditorium] ([Id], [Name], [Seats_no]) VALUES (5, N'G', 108)
INSERT [dbo].[Auditorium] ([Id], [Name], [Seats_no]) VALUES (6, N'H', 108)
SET IDENTITY_INSERT [dbo].[Auditorium] OFF
SET IDENTITY_INSERT [dbo].[Discount] ON 

INSERT [dbo].[Discount] ([Id], [Discount_percent], [Code], [Age_approved]) VALUES (1, 5, N'U30', 30)
INSERT [dbo].[Discount] ([Id], [Discount_percent], [Code], [Age_approved]) VALUES (2, 10, N'U20', 20)
INSERT [dbo].[Discount] ([Id], [Discount_percent], [Code], [Age_approved]) VALUES (3, 12, N'U10', 10)
SET IDENTITY_INSERT [dbo].[Discount] OFF
SET IDENTITY_INSERT [dbo].[Food] ON 

INSERT [dbo].[Food] ([Id], [Name], [Price]) VALUES (1, N'Normal Popcorn', 30)
INSERT [dbo].[Food] ([Id], [Name], [Price]) VALUES (2, N'Mixed Popcorn', 50)
INSERT [dbo].[Food] ([Id], [Name], [Price]) VALUES (3, N'Caramel Popcorn', 60)
INSERT [dbo].[Food] ([Id], [Name], [Price]) VALUES (4, N'Cheese Popcorn', 40)
INSERT [dbo].[Food] ([Id], [Name], [Price]) VALUES (5, N'Coca Cola', 100)
INSERT [dbo].[Food] ([Id], [Name], [Price]) VALUES (6, N'7 Up', 40)
INSERT [dbo].[Food] ([Id], [Name], [Price]) VALUES (7, N'Danisa', 40)
SET IDENTITY_INSERT [dbo].[Food] OFF
SET IDENTITY_INSERT [dbo].[Movie] ON 

INSERT [dbo].[Movie] ([Id], [Title], [Director], [Cast], [Description], [Duration_min], [Thumnail_link]) VALUES (1, N'Coco', N'Adrian Molina, Lee Unkrich', N'Anthony Gonzalez, Benjamin Bratt, Gael García Bernal, MORE', N'Despite his familys generations-old ban on music, young Miguel dreams of becoming an accompli
shed musician like his idol Ernesto de la Cruz. Desperate to prove his talent, Miguel fi
nds himself in the stunning and colorful Land of the Dead. After meeting a charming trickster
named Héctor, the two new friends embark on an extraordinary journey to unlock the real story behind
Miguels family history.', 109, N'images\coco.jpg')
INSERT [dbo].[Movie] ([Id], [Title], [Director], [Cast], [Description], [Duration_min], [Thumnail_link]) VALUES (2, N'Spider-Man: Into the Spider-Verse', N'Peter Ramsey, Rodney Rothman, Bob Persichetti', N'Shameik Moore, Jake Johnson, Hailee Steinfeld, MORE', N'After gaining superpowers from a spider bite, Miles Morales protects the city as Spider-Man. Soon, he meets alternate version
s of himself and gets embroiled in an epic battle to save the multiverse.', 116, N'images\into_spider_verse.jpg')
INSERT [dbo].[Movie] ([Id], [Title], [Director], [Cast], [Description], [Duration_min], [Thumnail_link]) VALUES (3, N'Your Name', N'Makoto Shinkai', N'Mone Kamishiraishi, Ryunosuke Kamiki, Aoi Yuki, MORE', N'Two teenagers share a profound, magical connection upon discovering they are swapping bodies. But things become even more complicated
when the boy and girl decide to meet in person.', 112, N'images\onamaewa.jpg')
INSERT [dbo].[Movie] ([Id], [Title], [Director], [Cast], [Description], [Duration_min], [Thumnail_link]) VALUES (4, N'The Truman Show', N'Peter Weir', N'Jim Carrey, Laura Linney, Ed Harris, MORE', N'Truman Burbank is the unsuspecting star of The Truman Show, a reality television program broadcast live around
the clock worldwide. He has spent his entire life in the seaside town of Seahaven Island—in reality an enormous
set visible from space—situated near Hollywood on Mount Lee and equipped with state-of-the-art technology to simulate
day and night and weather conditions. There are 5,000 cameras to record Trumans every move, which have gradually grown
in number and secrecy as he ages.', 107, N'images\truman.jpg')
INSERT [dbo].[Movie] ([Id], [Title], [Director], [Cast], [Description], [Duration_min], [Thumnail_link]) VALUES (5, N'Birdman', N'Alejandro Gonzalez Inarritu', N'Michael Keaton, Edward Norton, Emma Stone, MORE', N'Riggan Thomson, a fading cinema star, plans to resurrect his career with a passionate Broadway production. 
However, during rehearsals, his co-star is injured forcing him to hire a new actor.', 120, N'images\birdman.jpg')
INSERT [dbo].[Movie] ([Id], [Title], [Director], [Cast], [Description], [Duration_min], [Thumnail_link]) VALUES (6, N'The Amazing Spider-Man', N'Marc Webb', N'Andrew Garfield, Emma Stone, Stan Lee', N'Peter Parker, an outcast high school student, gets bitten by a radioactive spider a
nd attains superpowers. While unravelling his parentss disappearance, he must fight against the Lizard.', 155, N'images\amazing.jpg')
SET IDENTITY_INSERT [dbo].[Movie] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Role_name]) VALUES (1, N'Employee')
INSERT [dbo].[Role] ([Id], [Role_name]) VALUES (2, N'Admin')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[Row_classification] ON 

INSERT [dbo].[Row_classification] ([Id], [Type], [Price]) VALUES (1, N'Normal', 75)
INSERT [dbo].[Row_classification] ([Id], [Type], [Price]) VALUES (2, N'Vip', 95)
INSERT [dbo].[Row_classification] ([Id], [Type], [Price]) VALUES (3, N'Deluxe', 120)
INSERT [dbo].[Row_classification] ([Id], [Type], [Price]) VALUES (4, N'SweetBox', 100)
SET IDENTITY_INSERT [dbo].[Row_classification] OFF
SET IDENTITY_INSERT [dbo].[Screening] ON 

INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (1, 1, 1, CAST(N'2020-11-17' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (2, 2, 2, CAST(N'2020-11-17' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (3, 3, 3, CAST(N'2020-11-17' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (4, 4, 4, CAST(N'2020-11-17' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (5, 5, 5, CAST(N'2020-11-17' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (6, 6, 6, CAST(N'2020-11-17' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (7, 1, 1, CAST(N'2020-11-17' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (8, 2, 2, CAST(N'2020-11-17' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (9, 3, 3, CAST(N'2020-11-17' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (10, 4, 4, CAST(N'2020-11-17' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (11, 5, 5, CAST(N'2020-11-17' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (12, 6, 6, CAST(N'2020-11-17' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (13, 1, 1, CAST(N'2020-11-17' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (14, 2, 2, CAST(N'2020-11-17' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (15, 3, 3, CAST(N'2020-11-17' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (16, 4, 4, CAST(N'2020-11-17' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (17, 5, 5, CAST(N'2020-11-17' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (18, 6, 6, CAST(N'2020-11-17' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (19, 1, 1, CAST(N'2020-11-17' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (20, 2, 2, CAST(N'2020-11-17' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (21, 3, 3, CAST(N'2020-11-17' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (22, 4, 4, CAST(N'2020-11-17' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (23, 5, 5, CAST(N'2020-11-17' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (24, 6, 6, CAST(N'2020-11-17' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (25, 1, 1, CAST(N'2020-11-17' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (26, 2, 2, CAST(N'2020-11-17' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (27, 3, 3, CAST(N'2020-11-17' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (28, 4, 4, CAST(N'2020-11-17' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (29, 5, 5, CAST(N'2020-11-17' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (30, 6, 6, CAST(N'2020-11-17' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (31, 1, 1, CAST(N'2020-11-18' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (32, 2, 2, CAST(N'2020-11-18' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (33, 3, 3, CAST(N'2020-11-18' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (34, 4, 4, CAST(N'2020-11-18' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (35, 5, 5, CAST(N'2020-11-18' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (36, 6, 6, CAST(N'2020-11-18' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (37, 1, 1, CAST(N'2020-11-18' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (38, 2, 2, CAST(N'2020-11-18' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (39, 3, 3, CAST(N'2020-11-18' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (40, 4, 4, CAST(N'2020-11-18' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (41, 5, 5, CAST(N'2020-11-18' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (42, 6, 6, CAST(N'2020-11-18' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (43, 1, 1, CAST(N'2020-11-18' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (44, 2, 2, CAST(N'2020-11-18' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (45, 3, 3, CAST(N'2020-11-18' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (46, 4, 4, CAST(N'2020-11-18' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (47, 5, 5, CAST(N'2020-11-18' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (48, 6, 6, CAST(N'2020-11-18' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (49, 1, 1, CAST(N'2020-11-18' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (50, 2, 2, CAST(N'2020-11-18' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (51, 3, 3, CAST(N'2020-11-18' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (52, 4, 4, CAST(N'2020-11-18' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (53, 5, 5, CAST(N'2020-11-18' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (54, 6, 6, CAST(N'2020-11-18' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (55, 1, 1, CAST(N'2020-11-18' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (56, 2, 2, CAST(N'2020-11-18' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (57, 3, 3, CAST(N'2020-11-18' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (58, 4, 4, CAST(N'2020-11-18' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (59, 5, 5, CAST(N'2020-11-18' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (60, 6, 6, CAST(N'2020-11-18' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (61, 1, 1, CAST(N'2020-11-19' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (62, 2, 2, CAST(N'2020-11-19' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (63, 3, 3, CAST(N'2020-11-19' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (64, 4, 4, CAST(N'2020-11-19' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (65, 5, 5, CAST(N'2020-11-19' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (66, 6, 6, CAST(N'2020-11-19' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (67, 1, 1, CAST(N'2020-11-19' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (68, 2, 2, CAST(N'2020-11-19' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (69, 3, 3, CAST(N'2020-11-19' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (70, 4, 4, CAST(N'2020-11-19' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (71, 5, 5, CAST(N'2020-11-19' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (72, 6, 6, CAST(N'2020-11-19' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (73, 1, 1, CAST(N'2020-11-19' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (74, 2, 2, CAST(N'2020-11-19' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (75, 3, 3, CAST(N'2020-11-19' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (76, 4, 4, CAST(N'2020-11-19' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (77, 5, 5, CAST(N'2020-11-19' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (78, 6, 6, CAST(N'2020-11-19' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (79, 1, 1, CAST(N'2020-11-19' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (80, 2, 2, CAST(N'2020-11-19' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (81, 3, 3, CAST(N'2020-11-19' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (82, 4, 4, CAST(N'2020-11-19' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (83, 5, 5, CAST(N'2020-11-19' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (84, 6, 6, CAST(N'2020-11-19' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (85, 1, 1, CAST(N'2020-11-19' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (86, 2, 2, CAST(N'2020-11-19' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (87, 3, 3, CAST(N'2020-11-19' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (88, 4, 4, CAST(N'2020-11-19' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (89, 5, 5, CAST(N'2020-11-19' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (90, 6, 6, CAST(N'2020-11-19' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (91, 1, 1, CAST(N'2020-11-20' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (92, 2, 2, CAST(N'2020-11-20' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (93, 3, 3, CAST(N'2020-11-20' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (94, 4, 4, CAST(N'2020-11-20' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (95, 5, 5, CAST(N'2020-11-20' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (96, 6, 6, CAST(N'2020-11-20' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (97, 1, 1, CAST(N'2020-11-20' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (98, 2, 2, CAST(N'2020-11-20' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (99, 3, 3, CAST(N'2020-11-20' AS Date), 11)
GO
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (100, 4, 4, CAST(N'2020-11-20' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (101, 5, 5, CAST(N'2020-11-20' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (102, 6, 6, CAST(N'2020-11-20' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (103, 1, 1, CAST(N'2020-11-20' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (104, 2, 2, CAST(N'2020-11-20' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (105, 3, 3, CAST(N'2020-11-20' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (106, 4, 4, CAST(N'2020-11-20' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (107, 5, 5, CAST(N'2020-11-20' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (108, 6, 6, CAST(N'2020-11-20' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (109, 1, 1, CAST(N'2020-11-20' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (110, 2, 2, CAST(N'2020-11-20' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (111, 3, 3, CAST(N'2020-11-20' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (112, 4, 4, CAST(N'2020-11-20' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (113, 5, 5, CAST(N'2020-11-20' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (114, 6, 6, CAST(N'2020-11-20' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (115, 1, 1, CAST(N'2020-11-20' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (116, 2, 2, CAST(N'2020-11-20' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (117, 3, 3, CAST(N'2020-11-20' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (118, 4, 4, CAST(N'2020-11-20' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (119, 5, 5, CAST(N'2020-11-20' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (120, 6, 6, CAST(N'2020-11-20' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (121, 1, 1, CAST(N'2020-11-21' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (122, 2, 2, CAST(N'2020-11-21' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (123, 3, 3, CAST(N'2020-11-21' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (124, 4, 4, CAST(N'2020-11-21' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (125, 5, 5, CAST(N'2020-11-21' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (126, 6, 6, CAST(N'2020-11-21' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (127, 1, 1, CAST(N'2020-11-21' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (128, 2, 2, CAST(N'2020-11-21' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (129, 3, 3, CAST(N'2020-11-21' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (130, 4, 4, CAST(N'2020-11-21' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (131, 5, 5, CAST(N'2020-11-21' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (132, 6, 6, CAST(N'2020-11-21' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (133, 1, 1, CAST(N'2020-11-21' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (134, 2, 2, CAST(N'2020-11-21' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (135, 3, 3, CAST(N'2020-11-21' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (136, 4, 4, CAST(N'2020-11-21' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (137, 5, 5, CAST(N'2020-11-21' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (138, 6, 6, CAST(N'2020-11-21' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (139, 1, 1, CAST(N'2020-11-21' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (140, 2, 2, CAST(N'2020-11-21' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (141, 3, 3, CAST(N'2020-11-21' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (142, 4, 4, CAST(N'2020-11-21' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (143, 5, 5, CAST(N'2020-11-21' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (144, 6, 6, CAST(N'2020-11-21' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (145, 1, 1, CAST(N'2020-11-21' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (146, 2, 2, CAST(N'2020-11-21' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (147, 3, 3, CAST(N'2020-11-21' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (148, 4, 4, CAST(N'2020-11-21' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (149, 5, 5, CAST(N'2020-11-21' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (150, 6, 6, CAST(N'2020-11-21' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (151, 1, 1, CAST(N'2020-11-22' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (152, 2, 2, CAST(N'2020-11-22' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (153, 3, 3, CAST(N'2020-11-22' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (154, 4, 4, CAST(N'2020-11-22' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (155, 5, 5, CAST(N'2020-11-22' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (156, 6, 6, CAST(N'2020-11-22' AS Date), 8)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (157, 1, 1, CAST(N'2020-11-22' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (158, 2, 2, CAST(N'2020-11-22' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (159, 3, 3, CAST(N'2020-11-22' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (160, 4, 4, CAST(N'2020-11-22' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (161, 5, 5, CAST(N'2020-11-22' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (162, 6, 6, CAST(N'2020-11-22' AS Date), 11)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (163, 1, 1, CAST(N'2020-11-22' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (164, 2, 2, CAST(N'2020-11-22' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (165, 3, 3, CAST(N'2020-11-22' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (166, 4, 4, CAST(N'2020-11-22' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (167, 5, 5, CAST(N'2020-11-22' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (168, 6, 6, CAST(N'2020-11-22' AS Date), 14)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (169, 1, 1, CAST(N'2020-11-22' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (170, 2, 2, CAST(N'2020-11-22' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (171, 3, 3, CAST(N'2020-11-22' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (172, 4, 4, CAST(N'2020-11-22' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (173, 5, 5, CAST(N'2020-11-22' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (174, 6, 6, CAST(N'2020-11-22' AS Date), 19)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (175, 1, 1, CAST(N'2020-11-22' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (176, 2, 2, CAST(N'2020-11-22' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (177, 3, 3, CAST(N'2020-11-22' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (178, 4, 4, CAST(N'2020-11-22' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (179, 5, 5, CAST(N'2020-11-22' AS Date), 22)
INSERT [dbo].[Screening] ([Id], [Movie_id], [Auditorium_id], [Screening_Date], [Start]) VALUES (180, 6, 6, CAST(N'2020-11-22' AS Date), 22)
SET IDENTITY_INSERT [dbo].[Screening] OFF
SET IDENTITY_INSERT [dbo].[Seat] ON 

INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (1, N'A', 1, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (2, N'A', 2, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (3, N'A', 3, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (4, N'A', 4, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (5, N'A', 5, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (6, N'A', 6, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (7, N'A', 7, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (8, N'A', 8, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (9, N'A', 9, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (10, N'A', 10, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (11, N'A', 11, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (12, N'A', 12, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (13, N'B', 1, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (14, N'B', 2, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (15, N'B', 3, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (16, N'B', 4, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (17, N'B', 5, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (18, N'B', 6, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (19, N'B', 7, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (20, N'B', 8, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (21, N'B', 9, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (22, N'B', 10, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (23, N'B', 11, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (24, N'B', 12, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (25, N'C', 1, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (26, N'C', 2, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (27, N'C', 3, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (28, N'C', 4, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (29, N'C', 5, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (30, N'C', 6, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (31, N'C', 7, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (32, N'C', 8, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (33, N'C', 9, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (34, N'C', 10, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (35, N'C', 11, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (36, N'C', 12, 1, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (37, N'D', 1, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (38, N'D', 2, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (39, N'D', 3, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (40, N'D', 4, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (41, N'D', 5, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (42, N'D', 6, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (43, N'D', 7, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (44, N'D', 8, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (45, N'D', 9, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (46, N'D', 10, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (47, N'D', 11, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (48, N'D', 12, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (49, N'E', 1, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (50, N'E', 2, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (51, N'E', 3, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (52, N'E', 4, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (53, N'E', 5, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (54, N'E', 6, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (55, N'E', 7, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (56, N'E', 8, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (57, N'E', 9, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (58, N'E', 10, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (59, N'E', 11, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (60, N'E', 12, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (61, N'F', 1, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (62, N'F', 2, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (63, N'F', 3, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (64, N'F', 4, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (65, N'F', 5, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (66, N'F', 6, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (67, N'F', 7, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (68, N'F', 8, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (69, N'F', 9, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (70, N'F', 10, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (71, N'F', 11, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (72, N'F', 12, 1, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (73, N'G', 1, 1, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (74, N'G', 2, 1, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (75, N'G', 3, 1, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (76, N'G', 4, 1, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (77, N'G', 5, 1, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (78, N'G', 6, 1, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (79, N'G', 7, 1, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (80, N'G', 8, 1, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (81, N'G', 9, 1, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (82, N'G', 10, 1, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (83, N'G', 11, 1, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (84, N'G', 12, 1, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (85, N'H', 1, 1, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (86, N'H', 2, 1, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (87, N'H', 3, 1, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (88, N'H', 4, 1, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (89, N'H', 5, 1, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (90, N'H', 6, 1, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (91, N'H', 7, 1, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (92, N'H', 8, 1, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (93, N'H', 9, 1, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (94, N'H', 10, 1, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (95, N'H', 11, 1, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (96, N'H', 12, 1, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (97, N'J', 1, 1, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (98, N'J', 2, 1, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (99, N'J', 3, 1, 4)
GO
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (100, N'J', 4, 1, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (101, N'J', 5, 1, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (102, N'J', 6, 1, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (103, N'J', 7, 1, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (104, N'J', 8, 1, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (105, N'J', 9, 1, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (106, N'J', 10, 1, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (107, N'J', 11, 1, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (108, N'J', 12, 1, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (109, N'A', 1, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (110, N'A', 2, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (111, N'A', 3, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (112, N'A', 4, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (113, N'A', 5, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (114, N'A', 6, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (115, N'A', 7, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (116, N'A', 8, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (117, N'A', 9, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (118, N'A', 10, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (119, N'A', 11, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (120, N'A', 12, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (121, N'B', 1, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (122, N'B', 2, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (123, N'B', 3, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (124, N'B', 4, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (125, N'B', 5, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (126, N'B', 6, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (127, N'B', 7, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (128, N'B', 8, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (129, N'B', 9, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (130, N'B', 10, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (131, N'B', 11, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (132, N'B', 12, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (133, N'C', 1, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (134, N'C', 2, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (135, N'C', 3, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (136, N'C', 4, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (137, N'C', 5, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (138, N'C', 6, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (139, N'C', 7, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (140, N'C', 8, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (141, N'C', 9, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (142, N'C', 10, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (143, N'C', 11, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (144, N'C', 12, 2, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (145, N'D', 1, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (146, N'D', 2, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (147, N'D', 3, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (148, N'D', 4, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (149, N'D', 5, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (150, N'D', 6, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (151, N'D', 7, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (152, N'D', 8, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (153, N'D', 9, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (154, N'D', 10, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (155, N'D', 11, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (156, N'D', 12, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (157, N'E', 1, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (158, N'E', 2, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (159, N'E', 3, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (160, N'E', 4, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (161, N'E', 5, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (162, N'E', 6, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (163, N'E', 7, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (164, N'E', 8, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (165, N'E', 9, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (166, N'E', 10, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (167, N'E', 11, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (168, N'E', 12, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (169, N'F', 1, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (170, N'F', 2, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (171, N'F', 3, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (172, N'F', 4, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (173, N'F', 5, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (174, N'F', 6, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (175, N'F', 7, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (176, N'F', 8, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (177, N'F', 9, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (178, N'F', 10, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (179, N'F', 11, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (180, N'F', 12, 2, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (181, N'G', 1, 2, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (182, N'G', 2, 2, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (183, N'G', 3, 2, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (184, N'G', 4, 2, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (185, N'G', 5, 2, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (186, N'G', 6, 2, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (187, N'G', 7, 2, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (188, N'G', 8, 2, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (189, N'G', 9, 2, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (190, N'G', 10, 2, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (191, N'G', 11, 2, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (192, N'G', 12, 2, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (193, N'H', 1, 2, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (194, N'H', 2, 2, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (195, N'H', 3, 2, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (196, N'H', 4, 2, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (197, N'H', 5, 2, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (198, N'H', 6, 2, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (199, N'H', 7, 2, 3)
GO
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (200, N'H', 8, 2, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (201, N'H', 9, 2, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (202, N'H', 10, 2, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (203, N'H', 11, 2, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (204, N'H', 12, 2, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (205, N'J', 1, 2, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (206, N'J', 2, 2, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (207, N'J', 3, 2, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (208, N'J', 4, 2, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (209, N'J', 5, 2, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (210, N'J', 6, 2, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (211, N'J', 7, 2, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (212, N'J', 8, 2, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (213, N'J', 9, 2, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (214, N'J', 10, 2, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (215, N'J', 11, 2, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (216, N'J', 12, 2, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (217, N'A', 1, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (218, N'A', 2, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (219, N'A', 3, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (220, N'A', 4, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (221, N'A', 5, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (222, N'A', 6, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (223, N'A', 7, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (224, N'A', 8, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (225, N'A', 9, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (226, N'A', 10, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (227, N'A', 11, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (228, N'A', 12, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (229, N'B', 1, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (230, N'B', 2, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (231, N'B', 3, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (232, N'B', 4, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (233, N'B', 5, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (234, N'B', 6, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (235, N'B', 7, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (236, N'B', 8, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (237, N'B', 9, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (238, N'B', 10, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (239, N'B', 11, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (240, N'B', 12, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (241, N'C', 1, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (242, N'C', 2, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (243, N'C', 3, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (244, N'C', 4, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (245, N'C', 5, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (246, N'C', 6, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (247, N'C', 7, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (248, N'C', 8, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (249, N'C', 9, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (250, N'C', 10, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (251, N'C', 11, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (252, N'C', 12, 3, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (253, N'D', 1, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (254, N'D', 2, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (255, N'D', 3, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (256, N'D', 4, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (257, N'D', 5, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (258, N'D', 6, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (259, N'D', 7, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (260, N'D', 8, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (261, N'D', 9, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (262, N'D', 10, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (263, N'D', 11, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (264, N'D', 12, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (265, N'E', 1, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (266, N'E', 2, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (267, N'E', 3, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (268, N'E', 4, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (269, N'E', 5, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (270, N'E', 6, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (271, N'E', 7, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (272, N'E', 8, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (273, N'E', 9, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (274, N'E', 10, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (275, N'E', 11, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (276, N'E', 12, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (277, N'F', 1, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (278, N'F', 2, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (279, N'F', 3, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (280, N'F', 4, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (281, N'F', 5, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (282, N'F', 6, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (283, N'F', 7, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (284, N'F', 8, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (285, N'F', 9, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (286, N'F', 10, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (287, N'F', 11, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (288, N'F', 12, 3, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (289, N'G', 1, 3, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (290, N'G', 2, 3, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (291, N'G', 3, 3, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (292, N'G', 4, 3, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (293, N'G', 5, 3, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (294, N'G', 6, 3, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (295, N'G', 7, 3, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (296, N'G', 8, 3, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (297, N'G', 9, 3, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (298, N'G', 10, 3, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (299, N'G', 11, 3, 3)
GO
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (300, N'G', 12, 3, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (301, N'H', 1, 3, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (302, N'H', 2, 3, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (303, N'H', 3, 3, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (304, N'H', 4, 3, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (305, N'H', 5, 3, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (306, N'H', 6, 3, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (307, N'H', 7, 3, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (308, N'H', 8, 3, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (309, N'H', 9, 3, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (310, N'H', 10, 3, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (311, N'H', 11, 3, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (312, N'H', 12, 3, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (313, N'J', 1, 3, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (314, N'J', 2, 3, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (315, N'J', 3, 3, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (316, N'J', 4, 3, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (317, N'J', 5, 3, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (318, N'J', 6, 3, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (319, N'J', 7, 3, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (320, N'J', 8, 3, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (321, N'J', 9, 3, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (322, N'J', 10, 3, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (323, N'J', 11, 3, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (324, N'J', 12, 3, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (325, N'A', 1, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (326, N'A', 2, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (327, N'A', 3, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (328, N'A', 4, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (329, N'A', 5, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (330, N'A', 6, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (331, N'A', 7, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (332, N'A', 8, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (333, N'A', 9, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (334, N'A', 10, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (335, N'A', 11, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (336, N'A', 12, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (337, N'B', 1, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (338, N'B', 2, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (339, N'B', 3, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (340, N'B', 4, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (341, N'B', 5, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (342, N'B', 6, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (343, N'B', 7, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (344, N'B', 8, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (345, N'B', 9, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (346, N'B', 10, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (347, N'B', 11, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (348, N'B', 12, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (349, N'C', 1, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (350, N'C', 2, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (351, N'C', 3, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (352, N'C', 4, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (353, N'C', 5, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (354, N'C', 6, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (355, N'C', 7, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (356, N'C', 8, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (357, N'C', 9, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (358, N'C', 10, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (359, N'C', 11, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (360, N'C', 12, 4, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (361, N'D', 1, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (362, N'D', 2, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (363, N'D', 3, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (364, N'D', 4, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (365, N'D', 5, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (366, N'D', 6, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (367, N'D', 7, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (368, N'D', 8, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (369, N'D', 9, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (370, N'D', 10, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (371, N'D', 11, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (372, N'D', 12, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (373, N'E', 1, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (374, N'E', 2, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (375, N'E', 3, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (376, N'E', 4, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (377, N'E', 5, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (378, N'E', 6, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (379, N'E', 7, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (380, N'E', 8, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (381, N'E', 9, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (382, N'E', 10, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (383, N'E', 11, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (384, N'E', 12, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (385, N'F', 1, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (386, N'F', 2, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (387, N'F', 3, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (388, N'F', 4, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (389, N'F', 5, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (390, N'F', 6, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (391, N'F', 7, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (392, N'F', 8, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (393, N'F', 9, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (394, N'F', 10, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (395, N'F', 11, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (396, N'F', 12, 4, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (397, N'G', 1, 4, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (398, N'G', 2, 4, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (399, N'G', 3, 4, 3)
GO
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (400, N'G', 4, 4, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (401, N'G', 5, 4, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (402, N'G', 6, 4, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (403, N'G', 7, 4, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (404, N'G', 8, 4, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (405, N'G', 9, 4, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (406, N'G', 10, 4, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (407, N'G', 11, 4, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (408, N'G', 12, 4, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (409, N'H', 1, 4, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (410, N'H', 2, 4, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (411, N'H', 3, 4, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (412, N'H', 4, 4, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (413, N'H', 5, 4, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (414, N'H', 6, 4, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (415, N'H', 7, 4, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (416, N'H', 8, 4, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (417, N'H', 9, 4, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (418, N'H', 10, 4, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (419, N'H', 11, 4, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (420, N'H', 12, 4, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (421, N'J', 1, 4, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (422, N'J', 2, 4, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (423, N'J', 3, 4, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (424, N'J', 4, 4, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (425, N'J', 5, 4, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (426, N'J', 6, 4, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (427, N'J', 7, 4, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (428, N'J', 8, 4, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (429, N'J', 9, 4, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (430, N'J', 10, 4, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (431, N'J', 11, 4, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (432, N'J', 12, 4, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (433, N'A', 1, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (434, N'A', 2, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (435, N'A', 3, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (436, N'A', 4, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (437, N'A', 5, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (438, N'A', 6, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (439, N'A', 7, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (440, N'A', 8, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (441, N'A', 9, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (442, N'A', 10, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (443, N'A', 11, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (444, N'A', 12, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (445, N'B', 1, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (446, N'B', 2, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (447, N'B', 3, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (448, N'B', 4, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (449, N'B', 5, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (450, N'B', 6, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (451, N'B', 7, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (452, N'B', 8, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (453, N'B', 9, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (454, N'B', 10, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (455, N'B', 11, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (456, N'B', 12, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (457, N'C', 1, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (458, N'C', 2, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (459, N'C', 3, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (460, N'C', 4, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (461, N'C', 5, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (462, N'C', 6, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (463, N'C', 7, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (464, N'C', 8, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (465, N'C', 9, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (466, N'C', 10, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (467, N'C', 11, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (468, N'C', 12, 5, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (469, N'D', 1, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (470, N'D', 2, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (471, N'D', 3, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (472, N'D', 4, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (473, N'D', 5, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (474, N'D', 6, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (475, N'D', 7, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (476, N'D', 8, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (477, N'D', 9, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (478, N'D', 10, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (479, N'D', 11, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (480, N'D', 12, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (481, N'E', 1, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (482, N'E', 2, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (483, N'E', 3, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (484, N'E', 4, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (485, N'E', 5, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (486, N'E', 6, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (487, N'E', 7, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (488, N'E', 8, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (489, N'E', 9, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (490, N'E', 10, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (491, N'E', 11, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (492, N'E', 12, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (493, N'F', 1, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (494, N'F', 2, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (495, N'F', 3, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (496, N'F', 4, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (497, N'F', 5, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (498, N'F', 6, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (499, N'F', 7, 5, 2)
GO
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (500, N'F', 8, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (501, N'F', 9, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (502, N'F', 10, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (503, N'F', 11, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (504, N'F', 12, 5, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (505, N'G', 1, 5, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (506, N'G', 2, 5, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (507, N'G', 3, 5, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (508, N'G', 4, 5, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (509, N'G', 5, 5, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (510, N'G', 6, 5, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (511, N'G', 7, 5, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (512, N'G', 8, 5, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (513, N'G', 9, 5, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (514, N'G', 10, 5, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (515, N'G', 11, 5, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (516, N'G', 12, 5, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (517, N'H', 1, 5, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (518, N'H', 2, 5, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (519, N'H', 3, 5, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (520, N'H', 4, 5, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (521, N'H', 5, 5, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (522, N'H', 6, 5, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (523, N'H', 7, 5, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (524, N'H', 8, 5, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (525, N'H', 9, 5, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (526, N'H', 10, 5, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (527, N'H', 11, 5, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (528, N'H', 12, 5, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (529, N'J', 1, 5, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (530, N'J', 2, 5, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (531, N'J', 3, 5, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (532, N'J', 4, 5, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (533, N'J', 5, 5, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (534, N'J', 6, 5, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (535, N'J', 7, 5, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (536, N'J', 8, 5, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (537, N'J', 9, 5, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (538, N'J', 10, 5, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (539, N'J', 11, 5, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (540, N'J', 12, 5, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (541, N'A', 1, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (542, N'A', 2, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (543, N'A', 3, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (544, N'A', 4, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (545, N'A', 5, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (546, N'A', 6, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (547, N'A', 7, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (548, N'A', 8, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (549, N'A', 9, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (550, N'A', 10, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (551, N'A', 11, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (552, N'A', 12, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (553, N'B', 1, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (554, N'B', 2, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (555, N'B', 3, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (556, N'B', 4, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (557, N'B', 5, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (558, N'B', 6, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (559, N'B', 7, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (560, N'B', 8, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (561, N'B', 9, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (562, N'B', 10, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (563, N'B', 11, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (564, N'B', 12, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (565, N'C', 1, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (566, N'C', 2, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (567, N'C', 3, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (568, N'C', 4, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (569, N'C', 5, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (570, N'C', 6, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (571, N'C', 7, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (572, N'C', 8, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (573, N'C', 9, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (574, N'C', 10, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (575, N'C', 11, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (576, N'C', 12, 6, 1)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (577, N'D', 1, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (578, N'D', 2, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (579, N'D', 3, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (580, N'D', 4, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (581, N'D', 5, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (582, N'D', 6, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (583, N'D', 7, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (584, N'D', 8, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (585, N'D', 9, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (586, N'D', 10, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (587, N'D', 11, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (588, N'D', 12, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (589, N'E', 1, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (590, N'E', 2, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (591, N'E', 3, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (592, N'E', 4, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (593, N'E', 5, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (594, N'E', 6, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (595, N'E', 7, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (596, N'E', 8, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (597, N'E', 9, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (598, N'E', 10, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (599, N'E', 11, 6, 2)
GO
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (600, N'E', 12, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (601, N'F', 1, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (602, N'F', 2, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (603, N'F', 3, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (604, N'F', 4, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (605, N'F', 5, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (606, N'F', 6, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (607, N'F', 7, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (608, N'F', 8, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (609, N'F', 9, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (610, N'F', 10, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (611, N'F', 11, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (612, N'F', 12, 6, 2)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (613, N'G', 1, 6, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (614, N'G', 2, 6, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (615, N'G', 3, 6, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (616, N'G', 4, 6, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (617, N'G', 5, 6, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (618, N'G', 6, 6, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (619, N'G', 7, 6, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (620, N'G', 8, 6, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (621, N'G', 9, 6, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (622, N'G', 10, 6, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (623, N'G', 11, 6, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (624, N'G', 12, 6, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (625, N'H', 1, 6, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (626, N'H', 2, 6, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (627, N'H', 3, 6, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (628, N'H', 4, 6, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (629, N'H', 5, 6, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (630, N'H', 6, 6, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (631, N'H', 7, 6, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (632, N'H', 8, 6, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (633, N'H', 9, 6, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (634, N'H', 10, 6, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (635, N'H', 11, 6, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (636, N'H', 12, 6, 3)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (637, N'J', 1, 6, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (638, N'J', 2, 6, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (639, N'J', 3, 6, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (640, N'J', 4, 6, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (641, N'J', 5, 6, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (642, N'J', 6, 6, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (643, N'J', 7, 6, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (644, N'J', 8, 6, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (645, N'J', 9, 6, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (646, N'J', 10, 6, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (647, N'J', 11, 6, 4)
INSERT [dbo].[Seat] ([Id], [Row_name], [Number], [Auditorium_id], [Type_id]) VALUES (648, N'J', 12, 6, 4)
SET IDENTITY_INSERT [dbo].[Seat] OFF
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([Role_id])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Screening]  WITH CHECK ADD FOREIGN KEY([Auditorium_id])
REFERENCES [dbo].[Auditorium] ([Id])
GO
ALTER TABLE [dbo].[Screening]  WITH CHECK ADD FOREIGN KEY([Movie_id])
REFERENCES [dbo].[Movie] ([Id])
GO
ALTER TABLE [dbo].[Seat]  WITH CHECK ADD FOREIGN KEY([Auditorium_id])
REFERENCES [dbo].[Auditorium] ([Id])
GO
ALTER TABLE [dbo].[Seat]  WITH CHECK ADD FOREIGN KEY([Type_id])
REFERENCES [dbo].[Row_classification] ([Id])
GO
ALTER TABLE [dbo].[Seat_reservation]  WITH CHECK ADD FOREIGN KEY([Employee_id])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Seat_reservation]  WITH CHECK ADD FOREIGN KEY([Screening_id])
REFERENCES [dbo].[Screening] ([Id])
GO
ALTER TABLE [dbo].[Seat_reservation]  WITH CHECK ADD FOREIGN KEY([Seat_id])
REFERENCES [dbo].[Seat] ([Id])
GO
USE [master]
GO
ALTER DATABASE [CS_TDAMovieTheater] SET  READ_WRITE 
GO
