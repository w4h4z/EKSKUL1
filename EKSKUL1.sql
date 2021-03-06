USE [master]
GO
/****** Object:  Database [EKSKUL1]    Script Date: 17/10/2017 15:44:09 ******/
CREATE DATABASE [EKSKUL1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EKSKUL1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\EKSKUL1.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EKSKUL1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\EKSKUL1_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EKSKUL1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EKSKUL1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EKSKUL1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EKSKUL1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EKSKUL1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EKSKUL1] SET ARITHABORT OFF 
GO
ALTER DATABASE [EKSKUL1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EKSKUL1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EKSKUL1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EKSKUL1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EKSKUL1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EKSKUL1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EKSKUL1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EKSKUL1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EKSKUL1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EKSKUL1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EKSKUL1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EKSKUL1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EKSKUL1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EKSKUL1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EKSKUL1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EKSKUL1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EKSKUL1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EKSKUL1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EKSKUL1] SET  MULTI_USER 
GO
ALTER DATABASE [EKSKUL1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EKSKUL1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EKSKUL1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EKSKUL1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [EKSKUL1] SET DELAYED_DURABILITY = DISABLED 
GO
USE [EKSKUL1]
GO
/****** Object:  Table [dbo].[Ekskul]    Script Date: 17/10/2017 15:44:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ekskul](
	[id_ekskul] [char](5) NOT NULL,
	[id_guru] [char](5) NOT NULL,
	[nama_ekskul] [varchar](50) NOT NULL,
	[foto_ekskul] [text] NOT NULL,
 CONSTRAINT [PK_Ekskul] PRIMARY KEY CLUSTERED 
(
	[id_ekskul] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Guru]    Script Date: 17/10/2017 15:44:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guru](
	[id_guru] [char](5) NOT NULL,
	[nama_guru] [varchar](50) NOT NULL,
	[foto_guru] [text] NOT NULL,
 CONSTRAINT [PK_Guru] PRIMARY KEY CLUSTERED 
(
	[id_guru] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Jadwal_Ekskul]    Script Date: 17/10/2017 15:44:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jadwal_Ekskul](
	[id_jadwal] [char](5) NOT NULL,
	[id_ekskul] [char](5) NOT NULL,
	[hari_ekskul] [varchar](50) NOT NULL,
	[jam_ekskul] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Jadwal_Ekskul] PRIMARY KEY CLUSTERED 
(
	[id_jadwal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Nilai_Ekskul]    Script Date: 17/10/2017 15:44:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nilai_Ekskul](
	[id_nilai] [char](5) NOT NULL,
	[id_siswa] [char](5) NOT NULL,
	[id_ekskul] [char](5) NOT NULL,
	[nilai_mid] [int] NULL,
	[nilai_final] [int] NULL,
	[soal_mid] [text] NULL,
	[soal_final] [text] NULL,
	[jawaban_mid] [text] NULL,
	[jawaban_final] [text] NULL,
 CONSTRAINT [PK_Nilai_Ekskul] PRIMARY KEY CLUSTERED 
(
	[id_nilai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Siswa]    Script Date: 17/10/2017 15:44:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Siswa](
	[id_siswa] [char](5) NOT NULL,
	[id_ekskul] [char](5) NULL,
	[nama_siswa] [varchar](50) NOT NULL,
	[tgl_lhr_siswa] [date] NOT NULL,
	[telp_siswa] [varchar](15) NOT NULL,
	[jenis_kelamin] [varchar](10) NOT NULL,
	[asal_sekolah] [varchar](50) NOT NULL,
	[foto_siswa] [text] NOT NULL,
 CONSTRAINT [PK_Siswa] PRIMARY KEY CLUSTERED 
(
	[id_siswa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[Ekskul] ([id_ekskul], [id_guru], [nama_ekskul], [foto_ekskul]) VALUES (N'E0001', N'G0002', N'Basket', N'C:\Users\Owner\Pictures\asdasdad.PNG')
INSERT [dbo].[Ekskul] ([id_ekskul], [id_guru], [nama_ekskul], [foto_ekskul]) VALUES (N'E0002', N'G0001', N'Futsal', N'')
INSERT [dbo].[Ekskul] ([id_ekskul], [id_guru], [nama_ekskul], [foto_ekskul]) VALUES (N'E0003', N'G0003', N'Tari', N'')
INSERT [dbo].[Guru] ([id_guru], [nama_guru], [foto_guru]) VALUES (N'G0001', N'aldi', N'C:\Users\Owner\Pictures\asdasdad.PNG')
INSERT [dbo].[Guru] ([id_guru], [nama_guru], [foto_guru]) VALUES (N'G0002', N'faishal', N'C:\Users\Owner\Pictures\download.jpg')
INSERT [dbo].[Guru] ([id_guru], [nama_guru], [foto_guru]) VALUES (N'G0003', N'wildan', N'C:\Users\Owner\Pictures\final.PNG')
INSERT [dbo].[Jadwal_Ekskul] ([id_jadwal], [id_ekskul], [hari_ekskul], [jam_ekskul]) VALUES (N'J0001', N'E0001', N'Senin', N'15.00-16.00')
INSERT [dbo].[Jadwal_Ekskul] ([id_jadwal], [id_ekskul], [hari_ekskul], [jam_ekskul]) VALUES (N'J0002', N'E0002', N'Kamis', N'16.00')
INSERT [dbo].[Jadwal_Ekskul] ([id_jadwal], [id_ekskul], [hari_ekskul], [jam_ekskul]) VALUES (N'J0003', N'E0003', N'Jumat', N'14.00')
INSERT [dbo].[Nilai_Ekskul] ([id_nilai], [id_siswa], [id_ekskul], [nilai_mid], [nilai_final], [soal_mid], [soal_final], [jawaban_mid], [jawaban_final]) VALUES (N'N0001', N'S0001', N'E0001', 70, 0, N'D:\Modul ASP MVC SQL Server 2.pdf', NULL, N'D:\Modul ASP MVC SQL Server 2.pdf', N'D:\Modul ASP MVC SQL Server 3.pdf')
INSERT [dbo].[Nilai_Ekskul] ([id_nilai], [id_siswa], [id_ekskul], [nilai_mid], [nilai_final], [soal_mid], [soal_final], [jawaban_mid], [jawaban_final]) VALUES (N'N0002', N'S0003', N'E0002', NULL, NULL, N'D:\Modul ASP MVC SQL Server 3.pdf', N'D:\Modul ASP MVC SQL Server 4.pdf', NULL, NULL)
INSERT [dbo].[Siswa] ([id_siswa], [id_ekskul], [nama_siswa], [tgl_lhr_siswa], [telp_siswa], [jenis_kelamin], [asal_sekolah], [foto_siswa]) VALUES (N'S0001', N'E0001', N'wahaz', CAST(N'2017-10-17' AS Date), N'134', N'Laki-Laki', N'smk telkom', N'C:\Users\Owner\Pictures\blank.jpg')
INSERT [dbo].[Siswa] ([id_siswa], [id_ekskul], [nama_siswa], [tgl_lhr_siswa], [telp_siswa], [jenis_kelamin], [asal_sekolah], [foto_siswa]) VALUES (N'S0002', N'E0001', N'ziaulhaq', CAST(N'2017-10-17' AS Date), N'1', N'Laki-Laki', N'asas', N'C:\Users\Owner\Pictures\blank.jpg')
INSERT [dbo].[Siswa] ([id_siswa], [id_ekskul], [nama_siswa], [tgl_lhr_siswa], [telp_siswa], [jenis_kelamin], [asal_sekolah], [foto_siswa]) VALUES (N'S0003', N'E0002', N'akbar', CAST(N'2017-10-17' AS Date), N'1234', N'Laki-Laki', N'telkom', N'C:\Users\Owner\Pictures\final.PNG')
INSERT [dbo].[Siswa] ([id_siswa], [id_ekskul], [nama_siswa], [tgl_lhr_siswa], [telp_siswa], [jenis_kelamin], [asal_sekolah], [foto_siswa]) VALUES (N'S0004', NULL, N'grinaldi', CAST(N'2017-10-17' AS Date), N'13', N'Laki-Laki', N'moklet', N'C:\Users\Owner\Pictures\asdasdad.PNG')
ALTER TABLE [dbo].[Ekskul]  WITH CHECK ADD  CONSTRAINT [FK_Ekskul_Guru] FOREIGN KEY([id_guru])
REFERENCES [dbo].[Guru] ([id_guru])
GO
ALTER TABLE [dbo].[Ekskul] CHECK CONSTRAINT [FK_Ekskul_Guru]
GO
ALTER TABLE [dbo].[Jadwal_Ekskul]  WITH CHECK ADD  CONSTRAINT [FK_Jadwal_Ekskul_Ekskul] FOREIGN KEY([id_ekskul])
REFERENCES [dbo].[Ekskul] ([id_ekskul])
GO
ALTER TABLE [dbo].[Jadwal_Ekskul] CHECK CONSTRAINT [FK_Jadwal_Ekskul_Ekskul]
GO
ALTER TABLE [dbo].[Nilai_Ekskul]  WITH CHECK ADD  CONSTRAINT [FK_Nilai_Ekskul_Ekskul] FOREIGN KEY([id_ekskul])
REFERENCES [dbo].[Ekskul] ([id_ekskul])
GO
ALTER TABLE [dbo].[Nilai_Ekskul] CHECK CONSTRAINT [FK_Nilai_Ekskul_Ekskul]
GO
ALTER TABLE [dbo].[Nilai_Ekskul]  WITH CHECK ADD  CONSTRAINT [FK_Nilai_Ekskul_Siswa] FOREIGN KEY([id_siswa])
REFERENCES [dbo].[Siswa] ([id_siswa])
GO
ALTER TABLE [dbo].[Nilai_Ekskul] CHECK CONSTRAINT [FK_Nilai_Ekskul_Siswa]
GO
ALTER TABLE [dbo].[Siswa]  WITH CHECK ADD  CONSTRAINT [FK_Siswa_Ekskul] FOREIGN KEY([id_ekskul])
REFERENCES [dbo].[Ekskul] ([id_ekskul])
GO
ALTER TABLE [dbo].[Siswa] CHECK CONSTRAINT [FK_Siswa_Ekskul]
GO
USE [master]
GO
ALTER DATABASE [EKSKUL1] SET  READ_WRITE 
GO
