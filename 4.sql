USE [master]
GO
/****** Object:  Database [pr4_bobylev]    Script Date: 31.01.2024 20:44:06 ******/
CREATE DATABASE [pr4_bobylev]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'pr4_bobylev', FILENAME = N'C:\Users\79375\pr4_bobylev.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'pr4_bobylev_log', FILENAME = N'C:\Users\79375\pr4_bobylev_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [pr4_bobylev] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [pr4_bobylev].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [pr4_bobylev] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [pr4_bobylev] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [pr4_bobylev] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [pr4_bobylev] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [pr4_bobylev] SET ARITHABORT OFF 
GO
ALTER DATABASE [pr4_bobylev] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [pr4_bobylev] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [pr4_bobylev] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [pr4_bobylev] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [pr4_bobylev] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [pr4_bobylev] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [pr4_bobylev] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [pr4_bobylev] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [pr4_bobylev] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [pr4_bobylev] SET  DISABLE_BROKER 
GO
ALTER DATABASE [pr4_bobylev] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [pr4_bobylev] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [pr4_bobylev] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [pr4_bobylev] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [pr4_bobylev] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [pr4_bobylev] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [pr4_bobylev] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [pr4_bobylev] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [pr4_bobylev] SET  MULTI_USER 
GO
ALTER DATABASE [pr4_bobylev] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [pr4_bobylev] SET DB_CHAINING OFF 
GO
ALTER DATABASE [pr4_bobylev] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [pr4_bobylev] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [pr4_bobylev] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [pr4_bobylev] SET QUERY_STORE = OFF
GO
USE [pr4_bobylev]
GO
/****** Object:  Table [dbo].[DOCTORS]    Script Date: 31.01.2024 20:44:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCTORS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FIO_d] [nvarchar](255) NULL,
	[specialnist_d] [nvarchar](255) NULL,
	[cost] [decimal](10, 2) NULL,
	[percent_zp] [decimal](5, 2) NULL,
 CONSTRAINT [PK__DOCTORS__3214EC27F723D040] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[patient]    Script Date: 31.01.2024 20:44:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[patient](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[F_p] [nvarchar](255) NULL,
	[I_p] [nvarchar](255) NULL,
	[O_p] [nvarchar](255) NULL,
	[hb] [date] NULL,
	[adress] [nvarchar](255) NULL,
 CONSTRAINT [PK__patient__3214EC27D9FE93FA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[patient_reception]    Script Date: 31.01.2024 20:44:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[patient_reception](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_d] [int] NULL,
	[ID_p] [int] NULL,
	[date_reception] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DOCTORS] ON 

INSERT [dbo].[DOCTORS] ([ID], [FIO_d], [specialnist_d], [cost], [percent_zp]) VALUES (1, N'?????? ???? ????????', N'????????', CAST(12000.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(5, 2)))
INSERT [dbo].[DOCTORS] ([ID], [FIO_d], [specialnist_d], [cost], [percent_zp]) VALUES (2, N'?????? ???? ????????', N'??????', CAST(12000.00 AS Decimal(10, 2)), CAST(12.00 AS Decimal(5, 2)))
INSERT [dbo].[DOCTORS] ([ID], [FIO_d], [specialnist_d], [cost], [percent_zp]) VALUES (3, N'???????? ???? ????????', N'???????', CAST(12000.00 AS Decimal(10, 2)), CAST(11.00 AS Decimal(5, 2)))
INSERT [dbo].[DOCTORS] ([ID], [FIO_d], [specialnist_d], [cost], [percent_zp]) VALUES (4, N'?????? ??????? ??????????', N'??????????', CAST(12000.00 AS Decimal(10, 2)), CAST(11.50 AS Decimal(5, 2)))
INSERT [dbo].[DOCTORS] ([ID], [FIO_d], [specialnist_d], [cost], [percent_zp]) VALUES (5, N'???????? ????? ??????????', N'???????', CAST(12000.00 AS Decimal(10, 2)), CAST(10.50 AS Decimal(5, 2)))
INSERT [dbo].[DOCTORS] ([ID], [FIO_d], [specialnist_d], [cost], [percent_zp]) VALUES (6, N'??????? ???????? ????????', N'????????', CAST(12000.00 AS Decimal(10, 2)), CAST(12.50 AS Decimal(5, 2)))
INSERT [dbo].[DOCTORS] ([ID], [FIO_d], [specialnist_d], [cost], [percent_zp]) VALUES (7, N'????????? ????? ?????????????', N'?????????', CAST(12000.00 AS Decimal(10, 2)), CAST(13.00 AS Decimal(5, 2)))
INSERT [dbo].[DOCTORS] ([ID], [FIO_d], [specialnist_d], [cost], [percent_zp]) VALUES (8, N'??????? ??????? ?????????', N'??????', CAST(12000.00 AS Decimal(10, 2)), CAST(14.00 AS Decimal(5, 2)))
INSERT [dbo].[DOCTORS] ([ID], [FIO_d], [specialnist_d], [cost], [percent_zp]) VALUES (9, N'??????? ????? ?????????', N'?????????', CAST(12000.00 AS Decimal(10, 2)), CAST(15.00 AS Decimal(5, 2)))
INSERT [dbo].[DOCTORS] ([ID], [FIO_d], [specialnist_d], [cost], [percent_zp]) VALUES (10, N'???????? ??????? ??????????', N'????????????', CAST(12000.00 AS Decimal(10, 2)), CAST(11.25 AS Decimal(5, 2)))
INSERT [dbo].[DOCTORS] ([ID], [FIO_d], [specialnist_d], [cost], [percent_zp]) VALUES (11, N'Иванов Иван Иванович', N'Терапевт', CAST(12000.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(5, 2)))
INSERT [dbo].[DOCTORS] ([ID], [FIO_d], [specialnist_d], [cost], [percent_zp]) VALUES (12, N'Петров Петр Петрович', N'Хирург', CAST(12000.00 AS Decimal(10, 2)), CAST(12.00 AS Decimal(5, 2)))
INSERT [dbo].[DOCTORS] ([ID], [FIO_d], [specialnist_d], [cost], [percent_zp]) VALUES (13, N'Сидорова Анна Павловна', N'Окулист', CAST(12000.00 AS Decimal(10, 2)), CAST(11.00 AS Decimal(5, 2)))
INSERT [dbo].[DOCTORS] ([ID], [FIO_d], [specialnist_d], [cost], [percent_zp]) VALUES (14, N'Козлов Алексей Николаевич', N'Терапевт', CAST(12000.00 AS Decimal(10, 2)), CAST(11.50 AS Decimal(5, 2)))
INSERT [dbo].[DOCTORS] ([ID], [FIO_d], [specialnist_d], [cost], [percent_zp]) VALUES (15, N'Смирнова Елена Васильевна', N'Педиатр', CAST(12000.00 AS Decimal(10, 2)), CAST(10.50 AS Decimal(5, 2)))
INSERT [dbo].[DOCTORS] ([ID], [FIO_d], [specialnist_d], [cost], [percent_zp]) VALUES (16, N'Никитин Владимир Игоревич', N'Невролог', CAST(12000.00 AS Decimal(10, 2)), CAST(12.50 AS Decimal(5, 2)))
INSERT [dbo].[DOCTORS] ([ID], [FIO_d], [specialnist_d], [cost], [percent_zp]) VALUES (17, N'Кузнецова Ольга Александровна', N'Гинеколог', CAST(12000.00 AS Decimal(10, 2)), CAST(13.00 AS Decimal(5, 2)))
INSERT [dbo].[DOCTORS] ([ID], [FIO_d], [specialnist_d], [cost], [percent_zp]) VALUES (18, N'Морозов Дмитрий Сергеевич', N'Терапевт', CAST(12000.00 AS Decimal(10, 2)), CAST(14.00 AS Decimal(5, 2)))
INSERT [dbo].[DOCTORS] ([ID], [FIO_d], [specialnist_d], [cost], [percent_zp]) VALUES (19, N'Волкова Мария Андреевна', N'Кардиолог', CAST(12000.00 AS Decimal(10, 2)), CAST(15.00 AS Decimal(5, 2)))
INSERT [dbo].[DOCTORS] ([ID], [FIO_d], [specialnist_d], [cost], [percent_zp]) VALUES (20, N'Алексеев Алексей Алексеевич', N'Эндокринолог', CAST(12000.00 AS Decimal(10, 2)), CAST(11.25 AS Decimal(5, 2)))
INSERT [dbo].[DOCTORS] ([ID], [FIO_d], [specialnist_d], [cost], [percent_zp]) VALUES (21, N'Иванов Иван Иванович', N'Терапевт', CAST(12000.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(5, 2)))
INSERT [dbo].[DOCTORS] ([ID], [FIO_d], [specialnist_d], [cost], [percent_zp]) VALUES (22, N'Петров Петр Петрович', N'Хирург', CAST(12000.00 AS Decimal(10, 2)), CAST(12.00 AS Decimal(5, 2)))
INSERT [dbo].[DOCTORS] ([ID], [FIO_d], [specialnist_d], [cost], [percent_zp]) VALUES (24, N'Козлов Алексей Николаевич', N'Терапевт', CAST(12000.00 AS Decimal(10, 2)), CAST(11.50 AS Decimal(5, 2)))
INSERT [dbo].[DOCTORS] ([ID], [FIO_d], [specialnist_d], [cost], [percent_zp]) VALUES (25, N'Смирнова Елена Васильевна', N'Педиатр', CAST(12000.00 AS Decimal(10, 2)), CAST(10.50 AS Decimal(5, 2)))
INSERT [dbo].[DOCTORS] ([ID], [FIO_d], [specialnist_d], [cost], [percent_zp]) VALUES (26, N'Никитин Владимир Игоревич', N'Невролог', CAST(12000.00 AS Decimal(10, 2)), CAST(12.50 AS Decimal(5, 2)))
INSERT [dbo].[DOCTORS] ([ID], [FIO_d], [specialnist_d], [cost], [percent_zp]) VALUES (27, N'Кузнецова Ольга Александровна', N'Гинеколог', CAST(12000.00 AS Decimal(10, 2)), CAST(13.00 AS Decimal(5, 2)))
INSERT [dbo].[DOCTORS] ([ID], [FIO_d], [specialnist_d], [cost], [percent_zp]) VALUES (28, N'Морозов Дмитрий Сергеевич', N'Терапевт', CAST(12000.00 AS Decimal(10, 2)), CAST(14.00 AS Decimal(5, 2)))
INSERT [dbo].[DOCTORS] ([ID], [FIO_d], [specialnist_d], [cost], [percent_zp]) VALUES (29, N'Волкова Мария Андреевна', N'Кардиолог', CAST(12000.00 AS Decimal(10, 2)), CAST(15.00 AS Decimal(5, 2)))
INSERT [dbo].[DOCTORS] ([ID], [FIO_d], [specialnist_d], [cost], [percent_zp]) VALUES (30, N'Алексеев Алексей Алексеевич', N'Эндокринолог', CAST(12000.00 AS Decimal(10, 2)), CAST(11.25 AS Decimal(5, 2)))
INSERT [dbo].[DOCTORS] ([ID], [FIO_d], [specialnist_d], [cost], [percent_zp]) VALUES (31, N'Львов Лев Львович', N'Терапевт', CAST(1000.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(5, 2)))
SET IDENTITY_INSERT [dbo].[DOCTORS] OFF
GO
SET IDENTITY_INSERT [dbo].[patient] ON 

INSERT [dbo].[patient] ([ID], [F_p], [I_p], [O_p], [hb], [adress]) VALUES (1, N'??????', N'????', N'?????????', CAST(N'1990-05-15' AS Date), N'ул.Пушкина, д.Колотушкина')
INSERT [dbo].[patient] ([ID], [F_p], [I_p], [O_p], [hb], [adress]) VALUES (2, N'??????', N'????', N'?????????????', CAST(N'1985-12-20' AS Date), N'ул.Пушкина, д.Колотушкина')
INSERT [dbo].[patient] ([ID], [F_p], [I_p], [O_p], [hb], [adress]) VALUES (3, N'???????', N'????', N'????????', CAST(N'1978-08-30' AS Date), N'ул.Пушкина, д.Колотушкина')
INSERT [dbo].[patient] ([ID], [F_p], [I_p], [O_p], [hb], [adress]) VALUES (4, N'??????', N'?????', N'????????', CAST(N'2000-01-10' AS Date), N'ул.Пушкина, д.Колотушкина')
INSERT [dbo].[patient] ([ID], [F_p], [I_p], [O_p], [hb], [adress]) VALUES (5, N'???????', N'???????', N'????????????', CAST(N'1995-11-05' AS Date), N'ул.Пушкина, д.Колотушкина')
INSERT [dbo].[patient] ([ID], [F_p], [I_p], [O_p], [hb], [adress]) VALUES (6, N'????????', N'?????', N'??????????', CAST(N'1982-04-25' AS Date), N'ул.Пушкина, д.Колотушкина')
INSERT [dbo].[patient] ([ID], [F_p], [I_p], [O_p], [hb], [adress]) VALUES (7, N'????????', N'???????', N'????????', CAST(N'1970-07-18' AS Date), N'ул.Пушкина, д.Колотушкина')
INSERT [dbo].[patient] ([ID], [F_p], [I_p], [O_p], [hb], [adress]) VALUES (8, N'???????', N'?????', N'????????', CAST(N'1998-09-22' AS Date), N'ул.Пушкина, д.Колотушкина')
INSERT [dbo].[patient] ([ID], [F_p], [I_p], [O_p], [hb], [adress]) VALUES (9, N'??????', N'??????', N'?????????', CAST(N'1989-06-12' AS Date), N'ул.Пушкина, д.Колотушкина')
INSERT [dbo].[patient] ([ID], [F_p], [I_p], [O_p], [hb], [adress]) VALUES (10, N'????????', N'???????', N'?????????????', CAST(N'1993-02-28' AS Date), N'ул.Пушкина, д.Колотушкина')
INSERT [dbo].[patient] ([ID], [F_p], [I_p], [O_p], [hb], [adress]) VALUES (11, N'Иванов', N'Петр', N'Сергеевич', CAST(N'1990-05-15' AS Date), N'ул.Пушкина, д.Колотушкина')
INSERT [dbo].[patient] ([ID], [F_p], [I_p], [O_p], [hb], [adress]) VALUES (12, N'Петров', N'Иван', N'Александрович', CAST(N'1985-12-20' AS Date), N'ул.Пушкина, д.Колотушкина')
INSERT [dbo].[patient] ([ID], [F_p], [I_p], [O_p], [hb], [adress]) VALUES (13, N'Сидоров', N'Анна', N'Ивановна', CAST(N'1978-08-30' AS Date), N'ул.Пушкина, д.Колотушкина')
INSERT [dbo].[patient] ([ID], [F_p], [I_p], [O_p], [hb], [adress]) VALUES (14, N'Козлов', N'Елена', N'Петровна', CAST(N'2000-01-10' AS Date), N'ул.Пушкина, д.Колотушкина')
INSERT [dbo].[patient] ([ID], [F_p], [I_p], [O_p], [hb], [adress]) VALUES (15, N'Смирнов', N'Алексей', N'Владимирович', CAST(N'1995-11-05' AS Date), N'ул.Пушкина, д.Колотушкина')
INSERT [dbo].[patient] ([ID], [F_p], [I_p], [O_p], [hb], [adress]) VALUES (16, N'Никитина', N'Ольга', N'Дмитриевна', CAST(N'1982-04-25' AS Date), N'ул.Пушкина, д.Колотушкина')
INSERT [dbo].[patient] ([ID], [F_p], [I_p], [O_p], [hb], [adress]) VALUES (17, N'Кузнецов', N'Дмитрий', N'Иванович', CAST(N'1970-07-18' AS Date), N'ул.Пушкина, д.Колотушкина')
INSERT [dbo].[patient] ([ID], [F_p], [I_p], [O_p], [hb], [adress]) VALUES (18, N'Морозов', N'Мария', N'Петровна', CAST(N'1998-09-22' AS Date), N'ул.Пушкина, д.Колотушкина')
INSERT [dbo].[patient] ([ID], [F_p], [I_p], [O_p], [hb], [adress]) VALUES (19, N'Волков', N'Андрей', N'Сергеевич', CAST(N'1989-06-12' AS Date), N'ул.Пушкина, д.Колотушкина')
INSERT [dbo].[patient] ([ID], [F_p], [I_p], [O_p], [hb], [adress]) VALUES (20, N'Алексеев', N'Василий', N'Александрович', CAST(N'1993-02-28' AS Date), N'ул.Пушкина, д.Колотушкина')
INSERT [dbo].[patient] ([ID], [F_p], [I_p], [O_p], [hb], [adress]) VALUES (31, N'Сидоров', N'Анна', N'Ивановна', CAST(N'1978-08-30' AS Date), N'ул. Пушкина, д. 5, кв. 12')
SET IDENTITY_INSERT [dbo].[patient] OFF
GO
SET IDENTITY_INSERT [dbo].[patient_reception] ON 

INSERT [dbo].[patient_reception] ([ID], [ID_d], [ID_p], [date_reception]) VALUES (11, 1, 2, CAST(N'2022-04-17' AS Date))
INSERT [dbo].[patient_reception] ([ID], [ID_d], [ID_p], [date_reception]) VALUES (12, 3, 4, CAST(N'2022-04-17' AS Date))
INSERT [dbo].[patient_reception] ([ID], [ID_d], [ID_p], [date_reception]) VALUES (13, 5, 6, CAST(N'2022-04-17' AS Date))
INSERT [dbo].[patient_reception] ([ID], [ID_d], [ID_p], [date_reception]) VALUES (14, 7, 8, CAST(N'2022-04-17' AS Date))
INSERT [dbo].[patient_reception] ([ID], [ID_d], [ID_p], [date_reception]) VALUES (15, 9, 10, CAST(N'2022-04-17' AS Date))
INSERT [dbo].[patient_reception] ([ID], [ID_d], [ID_p], [date_reception]) VALUES (16, 2, 3, CAST(N'2022-04-17' AS Date))
INSERT [dbo].[patient_reception] ([ID], [ID_d], [ID_p], [date_reception]) VALUES (17, 4, 5, CAST(N'2022-04-17' AS Date))
INSERT [dbo].[patient_reception] ([ID], [ID_d], [ID_p], [date_reception]) VALUES (18, 6, 7, CAST(N'2022-04-17' AS Date))
INSERT [dbo].[patient_reception] ([ID], [ID_d], [ID_p], [date_reception]) VALUES (19, 8, 9, CAST(N'2022-04-17' AS Date))
INSERT [dbo].[patient_reception] ([ID], [ID_d], [ID_p], [date_reception]) VALUES (20, 10, 1, CAST(N'2022-04-17' AS Date))
INSERT [dbo].[patient_reception] ([ID], [ID_d], [ID_p], [date_reception]) VALUES (31, 6, 7, CAST(N'2022-02-15' AS Date))
SET IDENTITY_INSERT [dbo].[patient_reception] OFF
GO
ALTER TABLE [dbo].[patient_reception]  WITH CHECK ADD  CONSTRAINT [FK__patient_re__ID_d__286302EC] FOREIGN KEY([ID_d])
REFERENCES [dbo].[DOCTORS] ([ID])
GO
ALTER TABLE [dbo].[patient_reception] CHECK CONSTRAINT [FK__patient_re__ID_d__286302EC]
GO
ALTER TABLE [dbo].[patient_reception]  WITH CHECK ADD  CONSTRAINT [FK__patient_re__ID_p__29572725] FOREIGN KEY([ID_p])
REFERENCES [dbo].[patient] ([ID])
GO
ALTER TABLE [dbo].[patient_reception] CHECK CONSTRAINT [FK__patient_re__ID_p__29572725]
GO
USE [master]
GO
ALTER DATABASE [pr4_bobylev] SET  READ_WRITE 
GO
