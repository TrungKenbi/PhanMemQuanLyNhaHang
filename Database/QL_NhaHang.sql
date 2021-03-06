USE [master]
GO
/****** Object:  Database [QL_NhaHang]    Script Date: 23/07/2020 1:23:15 AM ******/
CREATE DATABASE [QL_NhaHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QL_NhaHang', FILENAME = N'D:\Code\C#\QLDiaDiemNhaHang\QL_NhaHang.mdf' , SIZE = 10240KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QL_NhaHang_log', FILENAME = N'D:\Code\C#\QLDiaDiemNhaHang\QL_NhaHang_log.ldf' , SIZE = 10240KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QL_NhaHang] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_NhaHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_NhaHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_NhaHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_NhaHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_NhaHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_NhaHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_NhaHang] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QL_NhaHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_NhaHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_NhaHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_NhaHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_NhaHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_NhaHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_NhaHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_NhaHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_NhaHang] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QL_NhaHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_NhaHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_NhaHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_NhaHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_NhaHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_NhaHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_NhaHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_NhaHang] SET RECOVERY FULL 
GO
ALTER DATABASE [QL_NhaHang] SET  MULTI_USER 
GO
ALTER DATABASE [QL_NhaHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_NhaHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_NhaHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_NhaHang] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QL_NhaHang] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QL_NhaHang', N'ON'
GO
ALTER DATABASE [QL_NhaHang] SET QUERY_STORE = OFF
GO
USE [QL_NhaHang]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 23/07/2020 1:23:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](20) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Role] [int] NOT NULL,
	[TimeCreated] [date] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Restaurent]    Script Date: 23/07/2020 1:23:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Restaurent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [ntext] NULL,
	[Address] [nvarchar](200) NOT NULL,
	[Email] [varchar](50) NULL,
	[Hotline] [varchar](10) NULL,
 CONSTRAINT [PK_Restaurent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([Id], [Username], [Password], [Role], [TimeCreated]) VALUES (1, N'trungkenbi', N'123456', 2, CAST(N'2020-07-22' AS Date))
INSERT [dbo].[Account] ([Id], [Username], [Password], [Role], [TimeCreated]) VALUES (2, N'ngocminhit2000', N'123456', 0, CAST(N'2020-07-22' AS Date))
INSERT [dbo].[Account] ([Id], [Username], [Password], [Role], [TimeCreated]) VALUES (3, N'nghiaph', N'123456', 1, CAST(N'2020-07-23' AS Date))
INSERT [dbo].[Account] ([Id], [Username], [Password], [Role], [TimeCreated]) VALUES (6, N'longpro', N'123456', 0, CAST(N'2020-07-23' AS Date))
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Restaurent] ON 

INSERT [dbo].[Restaurent] ([Id], [Name], [Description], [Address], [Email], [Hotline]) VALUES (1, N'Trung tâm Hội nghị - Tiệc cưới The Mira', N'Nếu nhắc đến một trong những nhà hàng tiệc cưới uy tín tại Bình Dương thì chắc chắn không thể nào bỏ qua được Trung Tâm Hội Nghị Tiệc Cưới The Mira của Khách sạn The Mira.

The Mira Hotel là khách sạn 5 sao đầu tiên và duy nhất tại Bình Dương. Tọa lạc ở vị trí vô cùng đắc địa ngay trung tâm thành phố Thủ Dầu Một, thuận tiện để di chuyển đến các vùng lân cận như Thành phố Hồ Chí Minh, Đồng Nai, Tây Ninh,…Với lối kiến trúc độc đáo, đặc trưng, The Mira là một địa chỉ cung cấp phòng nghỉ trong những chuyến công tác cho nhiều du khách, đặc biệt là khách quốc tế.

Ngoài dịch vụ lưu trú đẳng cấp chuẩn 5 sao thì đây là một địa điểm lí tưởng để tổ chức sự kiện, hội nghị, tiệc cưới sang trọng và độc đáo bậc nhất tại Bình Dương.', N'555B Đại lộ Bình Dương, Phường Hiệp Thành, TP Thủ Dầu Một, Bình Dương', N'sales@themirahotel.com.vn', N'0918265353')
INSERT [dbo].[Restaurent] ([Id], [Name], [Description], [Address], [Email], [Hotline]) VALUES (2, N'Trung Tâm Tiệc Cưới & Hội Nghị Hà Nam Plaza', N'Trung tâm tiệc cưới & Hội nghị Hà Nam Plaza nằm ở tầng trên cùng của tòa nhà siêu thị điện máy nội thất Hà Nam. Ở đây sảnh tiệc được thiết kế rộng rãi sang trọng, hiện đại, không gian ấm cúng. Đội ngũ quản lý chuyên nghiệp, phục vụ tận tình chu đáo, nhóm đầu bếp với nhiều năm kinh nghiệm ở khách sạn 3 sao sẽ mang đến cho quý khách hàng sự hài lòng khi đến đây.', N'Quốc lộ 13, Phường Vĩnh Phú, TX Thuận An, Bình Dương', N'htvphihung.88@gmail.com', N'0904307642')
INSERT [dbo].[Restaurent] ([Id], [Name], [Description], [Address], [Email], [Hotline]) VALUES (7, N'cc', N'cc2', N'cc', N'cc', N'cc')
SET IDENTITY_INSERT [dbo].[Restaurent] OFF
GO
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF_Account_Role]  DEFAULT ((0)) FOR [Role]
GO
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF_Account_TimeCreated]  DEFAULT (getdate()) FOR [TimeCreated]
GO
USE [master]
GO
ALTER DATABASE [QL_NhaHang] SET  READ_WRITE 
GO
