USE [master]
GO
/****** Object:  Database [CS_TDAMovieTheater]    Script Date: 16-Nov-20 2:53:23 PM ******/
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
/****** Object:  Table [dbo].[Account]    Script Date: 16-Nov-20 2:53:23 PM ******/
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
/****** Object:  Table [dbo].[Auditorium]    Script Date: 16-Nov-20 2:53:23 PM ******/
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
/****** Object:  Table [dbo].[Discount]    Script Date: 16-Nov-20 2:53:23 PM ******/
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
/****** Object:  Table [dbo].[Movie]    Script Date: 16-Nov-20 2:53:23 PM ******/
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
/****** Object:  Table [dbo].[Role]    Script Date: 16-Nov-20 2:53:23 PM ******/
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
/****** Object:  Table [dbo].[Row_classification]    Script Date: 16-Nov-20 2:53:23 PM ******/
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
/****** Object:  Table [dbo].[Screening]    Script Date: 16-Nov-20 2:53:23 PM ******/
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
/****** Object:  Table [dbo].[Seat]    Script Date: 16-Nov-20 2:53:23 PM ******/
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
/****** Object:  Table [dbo].[Seat_reservation]    Script Date: 16-Nov-20 2:53:23 PM ******/
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
SET IDENTITY_INSERT [dbo].[Movie] ON 

INSERT [dbo].[Movie] ([Id], [Title], [Director], [Cast], [Description], [Duration_min], [Thumnail_link]) VALUES (1, N'Coco', N'Adrian Molina, Lee Unkrich', N'Anthony Gonzalez, Benjamin Bratt, Gael García Bernal, MORE', N'Despite his familys generations-old ban on music, young Miguel dreams of becoming an accompli
shed musician like his idol Ernesto de la Cruz. Desperate to prove his talent, Miguel fi
nds himself in the stunning and colorful Land of the Dead. After meeting a charming trickster
named Héctor, the two new friends embark on an extraordinary journey to unlock the real story behind
Miguels family history.', 109, N'\DTA_Theater\images\coco.jpg')
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
