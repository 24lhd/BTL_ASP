USE [master]
GO
/****** Object:  Database [DocBaoOnlineFinal]    Script Date: 8/15/2017 05:42:23 PM ******/
CREATE DATABASE [DocBaoOnlineFinal]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DocBaoOnlineFinal', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\DocBaoOnlineFinal.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DocBaoOnlineFinal_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\DocBaoOnlineFinal_log.ldf' , SIZE = 1088KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DocBaoOnlineFinal] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DocBaoOnlineFinal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DocBaoOnlineFinal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DocBaoOnlineFinal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DocBaoOnlineFinal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DocBaoOnlineFinal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DocBaoOnlineFinal] SET ARITHABORT OFF 
GO
ALTER DATABASE [DocBaoOnlineFinal] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DocBaoOnlineFinal] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [DocBaoOnlineFinal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DocBaoOnlineFinal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DocBaoOnlineFinal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DocBaoOnlineFinal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DocBaoOnlineFinal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DocBaoOnlineFinal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DocBaoOnlineFinal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DocBaoOnlineFinal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DocBaoOnlineFinal] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DocBaoOnlineFinal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DocBaoOnlineFinal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DocBaoOnlineFinal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DocBaoOnlineFinal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DocBaoOnlineFinal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DocBaoOnlineFinal] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DocBaoOnlineFinal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DocBaoOnlineFinal] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DocBaoOnlineFinal] SET  MULTI_USER 
GO
ALTER DATABASE [DocBaoOnlineFinal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DocBaoOnlineFinal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DocBaoOnlineFinal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DocBaoOnlineFinal] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [DocBaoOnlineFinal]
GO
/****** Object:  Table [dbo].[BaiBao]    Script Date: 8/15/2017 05:42:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiBao](
	[MaBaiBao] [nvarchar](50) NOT NULL,
	[MaTheLoai] [nvarchar](50) NULL,
	[Title] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[MoTaNgan] [nvarchar](max) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[Username] [nvarchar](50) NULL,
	[NgayDang] [datetime] NULL,
 CONSTRAINT [PK_BaiBao] PRIMARY KEY CLUSTERED 
(
	[MaBaiBao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GiaoDien]    Script Date: 8/15/2017 05:42:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoDien](
	[IDGiaoDien] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Logo] [nvarchar](max) NULL,
	[Header] [nvarchar](max) NULL,
	[Footer] [nvarchar](max) NULL,
 CONSTRAINT [PK_GiaoDien3] PRIMARY KEY CLUSTERED 
(
	[IDGiaoDien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 8/15/2017 05:42:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[HoTen] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[Phonenumber] [nvarchar](50) NULL,
	[MaQuyen] [nvarchar](50) NULL,
	[ImagePro] [nvarchar](max) NULL,
	[Address] [nvarchar](200) NULL,
 CONSTRAINT [PK_NguoiDung2] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 8/15/2017 05:42:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[MaQuyen] [nvarchar](50) NOT NULL,
	[TenQuyen] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhanQuyen2] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuangCao]    Script Date: 8/15/2017 05:42:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuangCao](
	[MaQC] [nchar](10) NOT NULL,
	[ImageQC] [nchar](10) NULL,
	[Linkcontent] [nchar](10) NULL,
 CONSTRAINT [PK_QuangCao2] PRIMARY KEY CLUSTERED 
(
	[MaQC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 8/15/2017 05:42:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaTheLoai] [nvarchar](50) NOT NULL,
	[TenTheLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_TheLoai] PRIMARY KEY CLUSTERED 
(
	[MaTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
 
 INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'bb0031', N'TL02', N'HEHE', N'public/Images/image 3-2.jpg', N'mMô tả ngắn', N'Nội dung html', N'Anh Minh', CAST(N'2017-08-04 09:03:43.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB01', N'TL02', N'Nhà khoa học phản ứng vì có tên trong dự án ''Vĩnh Tân nhận chìm bùn', N'BB01', N'Nhiều nhà khoa học khẳng định không thẩm định dự án nhận chìm gần triệu m3 bùn của Nhiệt điện Vĩnh Tân, nhưng bị đưa tên vào danh sách.
', N'Ngày 21/7, tiến sĩ Nguyễn Tác An - Phó chủ tịch Hội Khoa học kỹ thuật biển Việt Nam, nguyên Viện trưởng Viện Hải dương học Nha Trang - cho biết, ông không tham gia quá trình đánh giá, thẩm định dự án nhận chìm gần một triệu m3 bùn xuống biển Bình Thuận của Công ty TNHH Điện lực Vĩnh Tân 1. 

Tuy nhiên, mấy hôm trước, ông bất ngờ khi biết mình là một trong 14 nhà khoa học tham gia dự án này. "Tôi chưa lần nào làm việc với chủ đầu tư và đơn vị tư vấn về việc nhận chìm bùn xuống biển Vĩnh Tân. Suốt 50 năm làm khoa học, đây là đầu tiên tôi bị lôi tên vào một dự án mà mình không hay biết", Phó chủ tịch Hội Khoa học kỹ thuật biển Việt Nam nói.

Nguyên viện trưởng Viện Hải dương học Nha Trang đặt hoài nghi "động cơ của đơn vị tư vấn" khi đưa tên ông vào danh sách. "Đấy khác gì sản phẩm của sự nguỵ tạo, dối trá và không kém phần ấu trĩ. Nếu không làm rõ sẽ tạo tiền lệ xấu đối với hoạt động khoa học tại Việt Nam", ông An bức xúc.

Theo ông An, hôm qua có người xưng là người của công ty tư vấn gọi điện xin lỗi vì những sai sót khi tự ý đề tên ông trong danh sách các nhà khoa học. "Tôi nói với họ phải trả lời trực tiếp, rõ ràng chứ không thể qua gọi điện thoại", Phó chủ tịch Hội Khoa học kỹ thuật biển Việt Nam cho biết.

Về việc xử lý bị mạo danh nhà khoa học, ông An bảo đang chờ cơ quan có thẩm quyền làm rõ. "Về nguyên tắc, hồ sơ đã làm giả thì phải hủy. Còn giấy phép đã cấp căn cứ theo hồ sơ giả đó thì cũng phải bị thu hồi", tiến sĩ An nói.

Ngoài ông An, thạc sĩ Lê Thị Vân Linh (Viện kỹ thuật biển) và thạc sĩ Nguyễn Ngọc Bảo Trâm (Trung tâm Quy hoạch và quản lý tổng hợp vùng duyên hải khu vực phía Nam) cũng đã lên tiếng việc không tham gia thẩm định dự án nhận chìm gần triệu m3 bùn xuống biển Bình Thuận, nhưng bị đưa tên vào danh sách các nhà khoa học.

Trao đổi với VnExpress, ông Phan Ngọc Cẩm Thành - Phó tổng giám đốc Công ty TNHH nhiệt điện Vĩnh Tân 1 - cho biết việc mời các nhà khoa học trên nhiều lĩnh vực tham gia vào đánh giá, thẩm định các tác động của dự án đều do Công ty cổ phần Tư vấn xây dựng cảng biển Việt Nam thực hiện.

Theo ông Thành, trong giai đoạn bắt đầu thực hiện, đơn vị tư vấn có mời tiến sĩ An. Tuy nhiên trong quá trình tham gia do ông tuổi cao, lại ở xa nên họ không mời nữa. "Để hoàn thiện hồ sơ, đơn vị tư vấn phải làm rất nhiều lần. Trong danh sách các nhà khoa học tham gia dự án của hồ sơ cuối cùng trình lên Bộ Tài nguyên Môi trường không có tên của tiến sĩ An", ông Thành nói.

Về một số nhà khoa học khác cũng phản ứng bị đưa tên vào danh sách, ông Thành cho biết chưa nắm, sẽ làm việc lại với công ty tư vấn. "Danh sách các nhà khoa học cuối cùng trình lên Bộ Tài nguyên để xin phép nhấn chìm vật chất nạo vét xuống biển đều được đơn vị tư vấn thông qua hết", ông khẳng định.

Còn tiến độ dự án, ông Thành cho biết công ty đang thực hiện theo đúng chỉ đạo của Bộ trưởng Bộ Tài nguyên.
Trước đó, Bộ Tài nguyên cấp phép cho Công ty TNHH Điện lực Vĩnh Tân 1 nhận chìm gần một triệu m3 bùn, cát, vỏ sò, sạn sỏi ra vùng biển thuộc xã Vĩnh Tân, huyện Tuy Phong. Thời gian thực hiện từ tháng 6 đến tháng 10. Khu vực biển nhận chìm có diện tích 30 ha, cách Hòn Cau 8 km và nơi nhận chìm độ sâu lớn nhất là -31 đến -36 m.

Tuy nhiên, nhiều nhà khoa học, trong đó có tiến sĩ An, lo ngại có thể xảy ra "thảm họa môi trường" nếu việc nhận chìm được triển khai.', N'Anh Tú', CAST(N'2017-07-20 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB02', N'TL02', N'Hồ Hòa Bình mở thêm cửa xả đáy
', N'BB02', N'Mực nước hồ Hòa Bình vẫn cao hơn cho phép, Ban chỉ đạo Trung ương về phòng chống thiên tai lệnh mở thêm một cửa xả vào 6h ngày 22/7.
', N'Tại cuộc họp điều hành liên hồ chứa lưu vực sông Hồng, ông Trần Quang Hoài, thành viên Ban chỉ đạo Trung ương về phòng chống thiên tai, cho biết đến 10h ngày 21/7 mực nước hồ Hòa Bình là 106,3 m, cao hơn mực nước cho phép 5,3 m. Còn hồ Sơn La cao hơn giới hạn cho phép 3,77 m.

"Sau hai ngày xả lũ, mực nước tại hồ Sơn La xuống chậm, nhưng Hòa Bình thì vẫn cao hơn so với trước khi xả do lưu lượng về hồ lớn hơn tổng lưu lượng xả và phát điện", ông Hoài nói.

Trong khi đó, theo Trung tâm dự báo khí tượng thủy văn Trung ương, Bắc Bộ tiếp tục có mưa diện rộng, phổ biến 20-30 mm, riêng Điện Biên, Lai Châu, Lào Cai, Yên Bái 30-60 mm, có nơi hơn 60 mm.

Để đưa các hồ Sơn La, Hòa Bình về mực nước cho phép trong thời kỳ lũ chính vụ, đảm bảo dung tích phòng lũ cho hạ du, Ban chỉ đạo Trung ương về phòng chống thiên tai tiếp tục lệnh cho giám đốc Công ty thủy điện Hòa Bình mở thêm một cửa xả đáy lúc 6h ngày 22/7, phát tối đa 8 tổ máy với tổng lưu lượng 2.400 m3/s, nâng tổng số cửa xả lên 3. Hồ Sơn La không mở thêm cửa xả. 
Liên quan đến phương án mở cửa xả của hồ thủy điện, 6 đơn vị đầu ngành về tư vấn vận hành liên hồ chứa đưa ra các ý kiến khác nhau. Với hồ Hòa Bình, 2 đơn vị đề nghị mở 2 cửa xả đáy; 4 cơ quan còn lại cho rằng nên mở thêm một cửa xả.

Theo Viện quy hoạch thủy lợi, hiện mực nước các hồ đều vượt giới hạn cho phép, trong khi nước thượng nguồn các sông đang lên, việc phát điện tại hồ không phát huy nhiều tác dụng vì nền nhiệt không cao. Do đó Viện này đề nghị mở thêm cửa xả.

"Hai cửa xả của Hòa Bình mở, mực nước hạ du lên chưa tới 7 m, đảm bảo an toàn vì còn xa mới tới mức báo động 1 (9,5 m). Nếu mở thêm 1-2 nữa khả năng chưa đến mức báo động 1. Vì vậy chúng ta cần cân nhắc vì bây giờ mới là đầu mùa lũ", đại diện Viện nói.

Đồng quan điểm, Đại học Thủy lợi kiến nghị mở 2 cửa xả đáy hồ Hòa Bình. "Mực nước hồ Sơn La giảm chậm, hồ Hòa Bình tăng nhẹ, lưu lượng đến hồ vẫn cao và ổn định nên cần thiết mở cửa xả đáy", đại diện này nói.Phát biểu tại cuộc họp, Phó thủ tướng Trịnh Đình Dũng yêu cầu Bộ Nông nghiệp và Phát triển nông thôn có giải pháp cụ thể, khi xả lũ phải đảm bảo an toàn cho công trình hồ đập thủy lợi, thủy điện và vùng hạ du. Thời gian tới còn mưa, nếu xả lũ không khoa học thì sẽ gây thiệt hại lớn. Bên cạnh đó cần chủ động tích nước về mùa khô, đảm bảo đủ cho sản xuất, sinh hoạt, nông nghiệp.

Bộ Công thương cần đảm bảo cung cấp điện cho sản xuất, sinh hoạt; phối hợp với bộ ngành liên quan vận hành liên hồ chứa an toàn; không để mất điện trên toàn hệ thống.', N'Anh Minh', CAST(N'2017-07-21 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB03', N'TL02', N'Bộ Giao thông yêu cầu dừng triển khai xe buýt 2 tầng
', N'BB03', N'Trong khi chờ ý kiến chính thức của Chính phủ, Bộ Giao thông yêu cầu các địa phương tạm dừng việc triển khai dịch vụ buýt hai tầng. 
', N'Theo Bộ Giao thông, ngày 7/7, cơ quan này đã có văn bản báo cáo Thủ tướng về góp ý của các bộ ngành và địa phương về loại hình xe buýt 2 tầng và xin ý kiến chỉ đạo.

Trong khi Thủ tướng chưa có ý kiến chính thức, ngày 20/7, Bộ có văn bản yêu cầu các địa phương tạm dừng triển khai vì chưa đủ tính pháp lý cho hoạt động này. 

Theo Bộ Giao thông, sau khi nhận được ý kiến của lãnh đạo Chính phủ, cơ quan này sẽ ban hành quyết định để các địa phương tiếp tục triển khai. 

"Góp ý của các bộ ngành, địa phương gửi về Bộ Giao thông đều đồng thuận với chủ trương triển khai xe buýt hai tầng, loại hình này cũng đã phổ biến ở nhiều nước nên chúng tôi tin Chính phủ sẽ chấp thuận trong thời gian tới", đại diện Bộ Giao thông cho hay. Hiện một số thành phố như Hà Nội, Đà Nẵng đang triển khai thí điểm xe buýt hai tầng phục vụ khách du lịch. Đại diện Tổng công ty Vận tải Hà Nội cho hay doanh nghiệp đang đặt đóng mới xe buýt 2 tầng sau đợt khảo sát. 

"Chúng tôi nghĩ rằng các cơ quan sẽ sớm hoàn tất thủ tục pháp lý cho xe buýt 2 tầng, vì loại hình phương tiện này đang được nhiều du khách quan tâm, ủng hộ", lãnh đạo Transerco nói. 

Trước đó tháng 12/2016, Thủ tướng đã có văn bản đồng ý về nguyên tắc việc thí điểm triển khai dịch vụ vận chuyển hành khách du lịch trong các đô thị bằng ôtô chuyên dụng 2 tầng, thoáng nóc và dịch vụ vận chuyển hành khách kết nối từ trung tâm đô thị đến các cảng hàng không bằng ôtô khách 16-45 chỗ ngồi chất lượng cao tại Hà Nội, Quảng Nam, Đà Nẵng, Thừa Thiên - Huế, Lâm Đồng, Kiên Giang, TP HCM. Thời gian thí điểm thực hiện trong 5 năm.

Cuối tháng 3/2017, Bộ Giao thông đã dự thảo "Quyết định ban hành kế hoạch thí điểm triển khai dịch vụ vận chuyển hành khách bằng ôtô góp phần thúc đẩy phát triển du lịch" gửi các bộ và địa phương liên quan để lấy ý kiến. Trong tháng 6, các bộ ngành, địa phương đã gửi ý kiến góp ý về Bộ Giao thông. ', N'Kỳ Duyên', CAST(N'2017-07-11 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB04', N'TL02', N'Giới khoa học kiến nghị dừng quy hoạch du lịch tại Sơn Trà
', N'BB04', N'Các nhà khoa học gửi thư đến Thủ tướng đề nghị không quy hoạch Sơn Trà thành khu du lịch quốc gia và đập bỏ 40 móng biệt thự.', N'Ngày 21/7, Hiệp hội Du lịch TP Đà Nẵng và Viện Sinh thái học miền Nam (trực thuộc Viện Hàn lâm Khoa học Công nghệ Việt Nam) đã gửi thư kiến nghị hiến kế bảo vệ bán đảo Sơn Trà (phường Thọ Quang, quận Sơn Trà, Đà Nẵng) lên Thủ tướng.
Thư kiến nghị đồng thời được gửi đến Tổng bí thư, Chủ tịch nước, Chủ tịch Quốc hội; các bộ trưởng Khoa học và Công nghệ, Tài nguyên và Môi trường; Nông nghiệp và Phát triển nông thôn, Văn hóa Thể thao và Du lịch; Bí thư Thành ủy, Chủ tịch HĐND, UBND TP Đà Nẵng.

Cơ sở gửi thư kiến nghị này xuất phát từ hội thảo khoa học về Sơn Trà ngày 15/7, với sự tham gia của 180 nhà khoa học và chuyên gia trong lĩnh vực bảo tồn đa dạng sinh học, rừng, xây dựng... Các đại biểu đã thảo luận và nhất trí các kiến nghị gửi đến lãnh đạo Đảng, Nhà nước và TP Đà Nẵng.

Hệ sinh thái tự nhiên đang bị tác động nghiêm trọng

Theo thư kiến nghị, các tài liệu khoa học tại hội thảo đã chứng minh bán đảo Sơn Trà là vùng sinh thái đặc thù, là "báu vật của Việt Nam", với ít nhất 1.010 loài thực vật, 370 loài động vật. Trong đó có nhiều loài quý, hiếm theo quy định của Việt Nam và quốc tế.

Sơn Trà cũng là nơi sinh sống của 700 đến 1.300 cá thể voọc chà vá chân nâu. Bán đảo này đóng vai trò quan trọng trong bảo tồn nguồn gen và loài trước nguy cơ tuyệt chủng. Thảm thực vật ở cao độ thấp hơn 200 mét (từ mặt nước biển trở lên) có vai trò quan trọng bảo vệ an toàn cho loài chà vá chân nâu.

Trong 10 năm trở lại đây, diện tích và chất lượng rạn san hô ở vùng biển ven bờ đang bị suy giảm nghiêm trọng, nhiều nơi bị biến mất. Nguyên nhân là việc lấn biển, xây dựng cơ sở hạ tầng và phát triển vùng ven bờ, sự lắng đọng trầm tích và khai thác nguồn lợi hải sản ven bờ quá mức, rác thải và ô nhiễm môi trường từ các khu đô thị, nhà hàng, hoạt động du lịch.
Diện tích thảm cỏ biển quanh bán đảo Sơn Trà chỉ còn khoảng một ha, tập trung tại Bãi Nồm và Bãi Bụt. So với năm 2006 đã có khoảng 9 ha thảm cỏ biển biến mất, cấu trúc thảm cỏ biển ở Bãi Nồm cũng bị biến động lớn theo xu hướng suy thoái do ô nhiễm và tác động môi trường.

Vùng phân bố và hoạt động của loài chà vá chân nâu đang bị chia cắt và thu hẹp một cách nghiêm trọng do các công trình xây dựng cơ sở hạ tầng. Tình trạng săn bắn trộm vẫn diễn ra và việc phát triển du lịch thiếu kiểm soát đang tạo áp lực lên quần thể loài linh trưởng này.

Hiện tượng khai thác rừng và cây thuốc trái phép vẫn đang xảy ra.

Từ năm 1977, Thủ tướng đã quy định Sơn Trà là khu rừng cấm (rừng đặc dụng), nhưng đến nay rừng này chưa có chủ quản lý. Ba quyết định chính của Thủ tướng cũng quy định các mục tiêu và diện tích rừng khác nhau cho bán đảo Sơn Trà.

"Dừng quy hoạch du lịch, đập bỏ 40 móng biệt thự"

Từ lo ngại tổn hại đến hệ sinh thái, các nhà khoa học và chuyên gia đề nghị UBND TP Đà Nẵng và Chính phủ hoàn trả diện tích rừng bị chuyển sang cho việc quy hoạch du lịch; không quy hoạch bán đảo Sơn Trà thành khu du lịch quốc gia để ưu tiên tập trung cho quy hoạch bán đảo này thành khu bảo tồn thiên nhiên và đa dạng sinh học.

"Cần giữ nguyên hiện trạng hiện nay ở Sơn Trà, không xây dựng mới các công trình hạ tầng và du lịch", kiến nghị nêu.
Các nhà khoa học cũng đề nghị "tháo bỏ ngay 40 móng biệt thự đã xây trái phép. Chủ đầu tư phải thực hiện các biện pháp chống trôi đất xuống biển trước mùa mưa bão 2017".

Công trình này do Công ty cổ phần Biển Tiên Sa làm chủ đầu tư. Tháng 3 vừa qua, sau khi người dân đăng lên mạng xã hội bức ảnh chụp khu công trình cày xới một góc bán đảo Sơn Trà, cơ quan chức năng Đà Nẵng đã kiểm tra, phát hiện 40 móng biệt thự đang xây dựng không phép.

Đầu tháng 7, khi địa bàn xuất hiện một vài cơn mưa lớn, bùn đất từ công trình không phép này đã chảy xuống biển Đà Nẵng, gây ô nhiễm môi trường và đe dọa hủy diệt rạn san hô phía dưới.

Theo Chủ tịch hiệp hội du lịch Đà Nẵng Huỳnh Tấn Vinh, nếu bản kiến nghị nêu trên của các nhà khoa học được thực hiện, trên bán đảo Sơn Trà sẽ còn 3 khu resort đã đi vào hoạt động, trong đó một khu nghỉ dưỡng cao cấp ở phía tây bắc, hai resort ở phía tây nam (nằm trên đường Hoàng Sa). Bên cạnh đó, bán đảo còn có một bảo tàng tư nhân, chùa Linh Ứng, một số biệt thự tư nhân, khu căn cứ của quân đội, trạm radar, trạm thu phát sóng, cùng 68 lều quán xây dựng trái phép trên đất rừng giao khoán...

Nêu quan điểm về bản kiến nghị, ông Vũ Quang Hùng (giám đốc Sở Xây dựng Đà Nẵng) cho biết UBND TP đang giao Sở Kế hoạch và Đầu tư rà soát toàn bộ dự án trên Sơn Trà để báo cáo Chính phủ. "Các nhà khoa học gửi kiến nghị là quan điểm của giới khoa học. Còn Đà Nẵng sẽ báo cáo Thủ tướng trước ngày 30/8. Các dự án Đà Nẵng cấp phép trước đây trên Sơn Trà đã được cập nhật vào quy hoạch khu du lịch quốc gia. Do đó, các công trình được duyệt là quy hoạch du lịch, không phải quy hoạch xây dựng", ông Hùng nói.', N'Đoàn Loan', CAST(N'2017-07-12 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB05', N'TL02', N'Nước sông vượt báo động 3, Yên Bái ngập nặng
', N'BB05', N'Mưa lớn, hồ thủy điện đầu nguồn xả lũ khiến mực nước trên sông Chảy (Yên Bái) đã vượt báo động cao nhất, nhiều nhà dân ngập sâu một mét.
', N'Đêm qua và rạng sáng nay, tỉnh Yên Bái có mưa lớn, cộng với một số thủy điện đầu nguồn xả nước nên lũ sông Chảy dâng cao đột ngột. 23h ngày 20/7, mực nước sông Chảy tại Bảo Yên đạt đỉnh 76,27 m, vượt báo động 3 (mức nguy hiểm nhất) 1,27 m. 7h hôm nay, nước đã xuống dưới mức báo động 3 là 0,45 m.

Hàng loạt xã ven sông thuộc huyện Lục Yên bị ngập, như Tân Lĩnh, Tô Mậu, Minh Chuẩn. Ngay trong đêm, gần 100 nhà dân ở 3 xã này phải sơ tán khẩn cấp do ngập sâu hơn một mét. Nước lũ cũng nhấn chìm 200 ha lúa, 50 ha ngôi của người dân Lục Yên.
Tuyến đường 171 từ xã Khánh Hòa đi xã Minh Xuân đến sáng nay có ba ngầm tràn ngập sâu nửa mét ở khu vực xã Yên Thắng, Minh Xuân. 

Ban chỉ huy Phòng chống thiên tai - Tìm kiếm cứu nạn huyện Lục Yên đang huy động dân quân các xã lân cận, giúp dân di dời tài sản lên vị trí cao hơn, tổ chức cắm biển cảnh báo nguy hiểm khu vực bị ngập, phân luồng giao thông. ', N'Phước Tuấn', CAST(N'2017-07-25 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB06', N'TL02', N'Thủ tướng lần đầu tiên làm trưởng ban chống ùn tắc giao thông
', N'BB06', N'Các phó ban gồm một phó thủ tướng, bộ trưởng kế hoạch đầu tư và chủ tịch UBND thành phố Hà Nội, TP HCM.
', N'Thủ tướng Nguyễn Xuân Phúc vừa có ý kiến chỉ đạo về việc thành lập Ban Chỉ đạo triển khai các giải pháp chống ùn tắc giao thông trên địa bàn Hà Nội và TP HCM.

Người đứng đầu Chính phủ sẽ làm Trưởng ban chỉ đạo, các phó ban gồm một phó thủ tướng, Bộ trưởng Kế hoạch Đầu tư và Chủ tịch UBND Hà Nội, TP HCM. Các thành viên gồm lãnh đạo các bộ, ngành liên quan.

Đây là lần đầu tiên Chính phủ thành lập ban chỉ đạo chuyên giải quyết vấn đề ùn tắc giao thông do người đứng đầu Chính phủ trực tiếp điều hành.

Văn phòng Chính phủ lý giải, vấn đề ùn tắc giao thông trên địa bàn Hà Nội và TP HCM hiện nay đã trở nên vô cùng cấp bách vì vậy cần phải có giải pháp đồng bộ về quy hoạch, giao thông, xây dựng, y tế, giáo dục và đào tạo, cũng như nghiên cứu, đề xuất các cơ chế, chính sách đặc thù.', N'Lâm Thỏa', CAST(N'2017-07-25 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB07', N'TL02', N'Chính phủ giao Đồng Nai quyết định ''dự án lấn sông''
', N'BB07', N'Chủ tịch UBND tỉnh Đồng Nai được Chính phủ giao quyết định và chịu trách nhiệm xử lý các vấn đề liên quan đến dự án lấn sông Đồng Nai.
', N'Phó thủ tướng Trịnh Đình Dũng vừa có văn bản giao Bộ Tài nguyên Môi trường chỉ đạo đơn vị tư vấn nghiên cứu, tiếp thu ý kiến các Bộ Nông nghiệp, Giao thông Vận tải và Bộ Xây dựng bổ sung tính toán để đánh giá, định lượng tác động của "Dự án cải tạo cảnh quan và phát triển đô thị ven sông Đồng Nai" đến sông Đồng Nai.
Trên cơ sở đánh giá tác động của dự án, cùng các quy định pháp luật hiện hành, Chủ tịch UBND tỉnh Đồng Nai quyết định xử lý các vấn đề liên quan đến dự án theo thẩm quyền. Việc quyết định phải bảo đảm đúng quy định pháp luật, không gây ảnh hưởng tiêu cực đến sông Đồng Nai và chịu trách nhiệm toàn diện về quyết định của mình.

Đồng thời, các Bộ hướng dẫn, giám sát UBND tỉnh Đồng Nai triển khai thực hiện dự án, bảo đảm đúng theo quy định pháp luật về tài nguyên nước, bảo vệ môi trường, phòng chống thiên tai, giao thông thủy nội địa, quy hoạch và xây dựng đô thị.

Dự án Cải tạo cảnh quan và phát triển đô thị ven sông Đồng Nai được khởi công tháng 9/2014 với tổng vốn đầu tư hơn 3.200 tỷ đồng với các hạng mục chính như: bờ kè, công viên, dãy nhà phố, cao ốc văn phòng, khách sạn, trung tâm thương mại... Dự án có chiều dài 1,3 km; đoạn xa nhất lấn ra ngoài sông Đồng Nai là 100 m.

Tuy nhiên, dự án sau đó vấp phải sự phản đối của các nhà khoa học bởi cho rằng lấp sông Đồng Nai là vi phạm nghiêm trọng đến tài nguyên nước. Bên cạnh đó, việc lấp sông sẽ tạo ra hiệu ứng dây chuyền khi đây là con sông lớn thứ ba, trải dài 11 tỉnh chứ không phải sở hữu riêng của Đồng Nai. Nó còn ảnh hưởng đến hạ du, thay đổi dòng chảy và gây xói lở.

Tháng 3/2015, chủ đầu tư xin tạm dừng thi công dự án và được UBND tỉnh Đồng Nai đồng ý. ', N'Nguyễn Đông', CAST(N'2017-07-20 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB08', N'TL02', N'Hàng loạt tồn tại trong thi công chức ở Bến Tre
', N'BB08', N'Bài thi chấm không sát đáp án và thang điểm, một bài thi nghiệp vụ được chấm cao hơn 5 điểm so với thực tế.
', N'Thanh tra Nội vụ vừa thông báo kết luận thanh tra việc thực hiện các quy định của pháp luật về quản lý biên chế, tuyển dụng, nâng ngạch... công chức của UBND tỉnh Bến Tre giai đoạn 2014 - 2016. Hàng loạt tồn tại, hạn chế đã được phát hiện.

Theo kết luận, đến thời điểm thanh tra, UBND tỉnh Bến Tre chưa ban hành đầy đủ các văn bản quy định cụ thể điều kiện, tiêu chuẩn chức danh lãnh đạo cấp phòng để làm căn cứ thực hiện.

Trong kỳ thi năm 2014, Bến Tre tuyển dụng được 108 công chức. Tuy nhiên, đáp án thi môn kiến thức chung và nghiệp vụ chuyên ngành không có thang điểm chi tiết. Trưởng ban chấm thi chưa báo cáo Chủ tịch hội đồng thi phê duyệt đáp án, thang điểm của đề thi trước khi chấm.

Ngoài ra, kết quả các bài thi không thể hiện 2 giám khảo chấm thi độc lập; có bài chấm không sát đáp án, thang điểm. Một bài chuyên ngành (thi trắc nghiệm) được chấm hơn 52 điểm nhưng thực tế chỉ trên 47 điểm.

Kết luận thanh tra cũng nêu, ngày 5/8/2016, UBND tỉnh Bến Tre có công văn gửi Bộ Nội vụ về việc cử 127 công chức tham dự kỳ thi nâng ngạch lên chuyên viên chính năm 2016, sau đó 66 công chức đã trúng tuyển. Tuy nhiên, kiểm tra 114 hồ sơ dự thi, Thanh tra phát hiện 41 công chức chưa có quyết định của người có thẩm quyền cử tham gia Ban soạn thảo đề tài, chương trình, đề án... trong đó 23 người đã trúng tuyển.

Khi được bổ nhiệm ngạch và xếp lương chuyên viên chính, trong 43 công chức trúng tuyển nói trên, 25 người chưa có chứng chỉ ngoại ngữ và chứng chỉ tin học.

Tương tự, Thanh tra Bộ Nội vụ cũng phát hiện kết quả các bài thi nâng ngạch năm 2014 không thể hiện có 2 giám khảo chấm thi độc lập. Một số điểm chưa sát với đáp án, thang điểm; một bài ngoại ngữ được chấm tăng thêm 4 điểm so với thực tế.

Năm 2016, một trường hợp chưa có quyết định tuyển dụng công chức nhưng được dự thi nâng ngạch, trúng tuyển và được bổ nhiệm ngạch chuyên viên.

Chưa xét chuyển công chức đã bổ nhiệm phó giám đốc sở

Qua kiểm tra trực tiếp 243 hồ sơ bổ nhiệm (thẩm quyền của Chủ tịch UBND tỉnh 60 hồ sơ, và thẩm quyền của Thủ trưởng các cơ quan, đơn vị 183 hồ sơ), Thanh tra Nội vụ phát hiện 54 trường hợp chưa đáp ứng đầy đủ điều kiện, tiêu chuẩn về lý luận chính trị; chứng chỉ quản lý nhà nước; ngoại ngữ; tin học.

Một số trường hợp được bổ nhiệm lại còn chậm so với quy định. Bổ nhiệm một Phó giám đốc Sở Y tế khi chưa thực hiện các quy trình xét chuyển thành công chức.

Từ những tồn tại, hạn chế nêu trên, Thanh tra Nội vụ kiến nghị Chủ tịch UBND tỉnh Bến Tre rà soát việc giao biên chế công chức, đảm bảo đúng số lượng, đối tượng làm việc trong đơn vị sự nghiệp công lập.

"Cần chấm dứt hợp đồng lao động đối với 33 trường hợp làm công tác chuyên môn, nghiệp vụ tại 15 cơ quan, đơn vị. Thu hồi Quyết định tuyển dụng đối với những trường hợp có bài thi không đạt trong kỳ thi tuyển công chức, thi nâng ngạch năm 2014, 2016", kết luận thanh tra nêu rõ.

Bên cạnh đó, tỉnh cũng phải kiểm tra sự tham gia xây dựng văn bản quy phạm pháp luật, đề tài, đề án đối với 23 trường hợp trước khi bổ nhiệm ngạch chuyên viên chính. 25 trường hợp đã được bổ nhiệm ngạch chuyên viên chính phải hoàn thiện điều kiện về ngoại ngữ, tin học.

Đối với công chức được bổ nhiệm giữ chức vụ lãnh đạo, Thanh tra Nội vụ kiến nghị UBND tỉnh Bến Tre rà soát, những trường hợp chưa đáp ứng yêu cầu thì có kế hoạch cử đi đào tạo, bồi dưỡng. Những trường hợp không đảm bảo điều kiện, tiêu chuẩn chức danh theo quy định thì không được bổ nhiệm lại.', N'Phương Đông', CAST(N'2017-07-22 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB09', N'TL02', N'Phát sai dự báo thiên tai bị phạt tới 50 triệu đồng
', N'BB09', N'Người truyền, phát bản tin cảnh báo thiên tai, khí tượng sai hoặc chậm có thể bị phạt từ 20 đến 50 triệu đồng.
', N'Chính phủ vừa ban hành Nghị định 84 sửa đổi, bổ sung một số điều của Nghị định 173 năm 2013 quy định về xử phạt hành chính trong lĩnh vực khí tượng thuỷ văn, đo đạc và bản đồ.

Theo quy định mới, việc truyền, phát sai lệch bản tin dự báo, cảnh báo thiên tai khí tượng thủy văn bị phạt 40-50 triệu đồng. Bản tin chậm so với thời gian quy định cũng bị phạt tiền 20-30 triệu đồng.

Hình thức xử phạt vi phạm hành chính trong lĩnh vực khí tượng thủy văn, đo đạc và bản đồ cũng bị tăng nặng. Nếu quy định cũ chỉ tước quyền sử dụng giấy phép 3-12 tháng, thì nghị định 84 quy định tước quyền sử dụng giấy phép 3-24 tháng.

Theo nghị định 173, các đơn vị hoạt động dự báo, cảnh báo khí tượng thủy văn không có giấy phép sẽ bị phạt 10-15 triệu đồng. Mức phạt này đã tăng lên 25 - 30 triệu đồng trong nghị định mới.

Nghị định 84 cũng bổ sung mức phạt 3-5 triệu đồng với hành vi ban hành bản tin dự báo, cảnh báo khí tượng thuỷ văn 3 lần liên tiếp trong một tháng không đủ độ tin cậy. 

Ngoài ra, các đơn vị cũng bị phạt tiền 10-15 triệu đồng nếu không tuân thủ quy chuẩn kỹ thuật về dự báo, cảnh báo khí tượng thủy văn; không tuân thủ quy trình kỹ thuật, quy trình đánh giá chất lượng trong dự báo, cảnh báo khí tượng thủy văn.

Nghị định có hiệu lực từ 10/9/2017.', N'Anh Minh', CAST(N'2017-07-26 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB10', N'TL02', N'Cá sông chết hàng loạt ở Cà Mau', N'BB10', N'Cá sông chết hàng loạt ở Cà Mau', N'Những ngày qua, cá trên các sông Gành Hào, Bảy Háp và Mương Điều (Đầm Dơi, Cà Mau) bất ngờ chết hàng loạt. Người dân cho biết, khi thủy triều cạn, nước sông có màu xám đen, bốc mùi hôi thối khiến họ không dám lấy nước vào vuông nuôi tôm.

Trước tình hình trên, Chủ tịch UBND tỉnh Cà Mau chỉ đạo Sở Tài nguyên phối hợp với các Sở ngành liên quan thường xuyên theo dõi, kiểm tra rà soát khu vực cá chết để nắm chặt diễn biến môi trường trong khu vực, nhằm kịp thời xác định nguyên nhân và khẩn trương có biện pháp khắc phục.

Ngoài ra, những tập thể, cá nhân liên quan đến việc quản lý, vận hành Trạm quan trắc tự động tại kênh xáng Lương Thế Trân cũng bị đề nghị kiểm điểm do chậm trễ khắc phục sự cố xảy ra làm gián đoạn việc theo dõi số liệu quan trắc, dẫn đến không kiểm soát được ô nhiễm môi trường trong thời gian dài.', N'Kỳ Duyên', CAST(N'2017-07-23 03:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB11', N'TL03', N'Các đại gia Mỹ cất giữ ''núi tiền'' ở nước ngoài
', N'BB11', N'Apple, Google và Microsoft hiện nắm giữ khoảng 464 tỷ USD tiền mặt.
', N'Hãng nghiên cứu Moody''s vừa công bố một báo cáo cho thấy, các công ty phi tài chính của Mỹ nắm giữ khoảng 1.840 tỷ USD tiền mặt tính đến cuối năm 2016. Con số này tăng 11% so với năm 2015 và gần 2,5 lần so với năm 2008.

Tuy nhiên, 70% số tiền này - khoảng 1.300 tỷ USD đang được các doanh nghiệp cất giữ ở nước ngoài, để không phải chịu các chính sách thuế của Mỹ. Trong đó, Apple, Alphabet - Công ty mẹ của Google, Microsoft, Cisco và Oracle dự trữ 88% lượng tiền mặt tại nước ngoài.

Ba đại gia Apple, Google và Microsoft sở hữu 464 tỷ USD tiền mặt. Còn Cisco, Oracle nắm giữ 71,8 tỷ USD và 58,2 tỷ USD.
Moody''s cho rằng "núi tiền" được rải rác ở nước ngoài phản ánh mặt tiêu cực của chính sách thuế đánh vào số tiền được chuyển về Mỹ. Chính phủ Mỹ đã đề xuất miễn thuế một lần để khuyến khích các doanh nghiệp mang tiền trở về quốc gia này. 

Hồi tháng 3 năm nay, Bộ trưởng Tài chính Mỹ - Steven Mnuchin cho rằng việc Apple để toàn bộ tiền mặt tại nước ngoài cho thấy mức thuế tại Mỹ cao hơn hẳn các quốc gia khác. "Tại sao họ phải đem tiền mặt trở về và phải chịu trả mức thuế cao hơn?", ông Mnuchin chia sẻ.

Lượng tiền mặt khổng lồ cho thấy các doanh nghiệp Mỹ khoẻ mạnh như thế nào kể từ sau cuộc Đại suy thoái. Tuy nhiên, sự miễn cưỡng chi tiêu của các công ty đã ảnh hưởng lớn tới khả năng phục hồi. Lượng tiền mặt nằm trong bản cân đối kế toán sẽ không được đầu tư vào những công việc như xây dựng nhà máy mới.

Theo Moody''s, chi tiêu vốn của các doanh nghiệp Mỹ giảm 18 % xuống 727 tỷ USD trong năm ngoái. Phần lớn sự suy giảm này là do sự suy thoái của ngành dầu mỏ, buộc các công ty năng lượng phải đảm bảo tiền mặt bằng cách đầu tư trì hoãn. Thậm chí, chi tiêu cho cổ tức, cổ phiếu cũng giảm.', N'Nguyễn Đông', CAST(N'2017-07-11 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB12', N'TL03', N'Dự trữ ngoại hối Việt Nam trên 42 tỷ USD
', N'BB12', N'Ngân hàng Nhà nước cho biết đã mua thêm được 1 tỷ USD trong nửa đầu năm 2017, nâng dự trữ ngoại hối quốc gia lên hơn 42 tỷ USD. 
', N'Tại hội nghị xử lý nợ xấu gắn với cơ cấu lại tổ chức tín dụng do Ngân hàng Nhà nước tổ chức sáng 21/7, Thống đốc Lê Minh Hưng cho biết, dự trữ ngoại hối quốc gia tiếp tục tăng trong 6 tháng đầu năm nay, đạt trên 42 tỷ USD.

So với cuối năm 2016, dự trữ ngoại hối quốc gia tăng thêm khoảng 1 tỷ USD, mức tăng dù thấp nhưng là đáng khích lệ trong bối cảnh Việt Nam đang nhập siêu trở lại, khoảng 2,7 tỷ USD trong nửa đầu năm.

Cũng tại cuộc họp trên, Thống đốc Lê Minh Hưng cho biết, trong 6 tháng đầu năm, thanh khoản ngoại tệ của thị trường tốt, đáp ứng các cung cầu ngoại tệ; tỷ giá USD/VND khá ổn định trong nửa đầu năm trước tác động từ các quyết định tăng lãi suất liên tiếp của Cục Dự trữ liên bang Mỹ (FED).Đến cuối tháng 6, tổng phương tiện thanh toán tăng 6,82% so với cuối năm 2016, tăng trưởng tín dụng tăng 9,06% - mức cao so với cùng kỳ các năm gần đây. "Tín dụng tăng cao, nhưng đều qua các tháng nên đã không gây sức ép lên mặt bằng lãi suất, thậm chí lãi suất cho vay ngắn hạn với lĩnh vực ưu tiên đã giảm thêm 0,5%", Thống đốc nói.

Hiện mặt bằng lãi suất cho vay bình quân ở mức 6-6,5% một năm với kỳ hạn ngắn; 8-10% một năm ở kỳ hạn dài và khách hàng tốt 4-5% một năm.

Nhận định có khả năng FED sẽ có những điều chỉnh tiếp theo với lãi suất USD trong nửa cuối năm 2017, Thống đốc Lê Minh Hưng nhấn mạnh, Ngân hàng Nhà nước sẽ chủ động theo dõi diễn biến để kịp thời có giải pháp điều hành linh hoạt, chủ động nhằm hỗ trợ ổn định tỷ giá, đảm bảo thanh khoản ngoại tệ của nền kinh tế. 

"Ngân hàng Nhà nước sẽ tiếp tục điều hành tỷ giá trung tâm linh hoạt, chủ động các giải pháp, công vụ chính sách tiền tệ nhằm hỗ trợ ổn định tỷ giá, tránh đầu cơ ngoại tệ", ông Hưng khẳng định.', N'Lâm Thỏa', CAST(N'2017-07-15 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB13', N'TL03', N'BIDV dành 7.000 tỷ đồng cho vay vốn kinh doanh ưu đãi
', N'BB13', N'Lãi suất từ 6,7% một năm đối với các khoản vay dưới 6 tháng và từ 7% một năm đối với những khoản vay từ 6-11 tháng.
', N'Tham gia gói tín dụng, khách hàng có thể lựa chọn linh hoạt nhiều gói vay khác nhau. Lãi suất ưu đãi từ 6,7% một năm đối với các khoản vay dưới 6 tháng và từ 7% một năm cho những khoản vay từ 6-11 tháng (lãi suất thực tế áp dụng theo từng chi nhánh BIDV). Chương trình áp dụng với các khoản vay giải ngân mới trong thời gian hiệu lực của chương trình.

Theo đại diện BIDV, gói vay ưu đãi triển khai trên toàn hệ thống sẽ giúp khách hàng chủ động cân đối nguồn tài chính và các kế hoạch kinh doanh. Điều này cũng thể hiện nỗ lực của BIDV trong việc đồng hành, hỗ trợ khách hàng cá nhân, góp phần tháo gỡ khó khăn cho sản xuất kinh doanh.

Khách hàng tham gia vay sản xuất kinh doanh trong thời gian này sẽ tham gia nhiều chương trình ưu đãi từ các sản phẩm dịch vụ khác như ngân hàng điện tử, bảo hiểm… để quản lý hiệu quả tài khoản cá nhân.

Trước đó, BIDV cũng đã triển khai gói tín dụng 10.000 tỷ đồng cho vay sản xuất kinh doanh từ ngày 10/5. Chương trình thu hút đông đảo khách hàng cá nhân tham gia và đã đạt quy mô giải ngân trước hạn trong tháng 6/2017.', N'Đoàn Loan', CAST(N'2017-07-28 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB14', N'TL03', N'Bữa sáng của người Anh đắt lên vì Brexit
', N'BB14', N'Giá một bữa sáng đầy đủ theo đúng tiêu chuẩn của người Anh có thể tăng 13% khi họ rời khỏi Liên minh châu Âu.
', N'Một bữa sáng đầy đủ của người Anh thường bao gồm bánh mỳ, thịt xông khói, xúc xích, trứng, bánh khoai tây, cà chua, nấm, đậu hầm. Tuy nhiên, theo hãng kiểm toán KPMG, nếu không đạt thỏa thuận thương mại mới với EU trước tháng 3/2019, Anh sẽ phải tuân theo các quy tắc đặt ra bởi Tổ chức Thương mại Quốc tế (WTO). Điều này đồng nghĩa giá nhiều sản phẩm sẽ tăng lên. Và bữa sáng của người Anh có thể đắt hơn 13%.“Nếu Anh rời EU mà không có hiệp định thương mại, giá có thể tăng và thủ tục hành chính tại biên giới sẽ rất phức tạp”, KPMG dự báo. Anh đã bắt đầu cuộc đàm phán rời EU từ ngày 17/7. KPMG cho rằng nước cam và dầu olive sẽ là hai nguyên liệu có giá tăng cao nhất, nếu theo quy định về thuế nhập khẩu của WTO. Giá của chúng có thể tăng lần lượt 34% và 30%. Giá sữa, trứng và bánh mỳ sẽ đứng yên, vì chủ yếu lấy từ nguồn trong nước. Nghiên cứu cũng cho thấy kể cả các nguyên liệu cơ bản cũng có chuỗi cung ứng phức tạp, khiến chúng trở nên đắt đỏ hơn vì thuế nhập khẩu. Ví dụ, nước cam đóng chai ở Ireland, trong khi cam lại trồng ở Tây Ban Nha. Đậu được nhập khẩu từ Mỹ và chế biến tại Italy, rồi mới mang sang Anh. Dù vậy, giá của rất nhiều sản phẩm đã tăng lên từ tháng 6 năm ngoái, khi đồng bảng lao dốc so với USD sau kết quả bỏ phiếu Brexit. Đến nay, bảng đã mất 14%, đẩy lạm phát tháng 5 lên cao nhất 4 năm. Chi phí ăn uống tăng không phải là tác động tiêu cực duy nhất của Brexit. Số liệu của Visa cho thấy tiêu dùng tại Anh đã giảm tháng thứ 2 liên tiếp trong tháng 6. Khi giá các nhu yếu phẩm tăng, người dân buộc phải giảm chi tiêu. “Số tiền chi cho đồ ăn, thức uống tăng gần 2%, nhưng đồ gia dụng lại giảm đáng kể, do người dân giảm mua các sản phẩm đắt đỏ như đồ nội thất”, báo cáo của Visa cho biết. Việc này còn kéo theo hệ lụy với các doanh nghiệp, do bất ổn về mối quan hệ giữa Anh và các đối tác thương mại lớn nhất của nước này. Một khảo sát gần đây của Deloitte cho thấy khoảng 72% lãnh đạo doanh nghiệp cho rằng môi trường kinh doanh sẽ tệ hơn sau khi Anh rời EU. Tỷ lệ này cao hơn so với 60% quý trước và cũng là cao nhất từ tháng 6 năm ngoái.', N'Thanh Thư', CAST(N'2017-06-23 05:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB15', N'TL03', N'8.000 nhân viên Vinasun nghỉ việc
', N'BB15', N'Nhiều chỉ tiêu kinh doanh của Vinasun giảm gần phân nửa 6 tháng đầu năm, trong đó 8.000 nhân viên đã nghỉ việc.
', N'Báo cáo tài chính hợp nhất vừa được Công ty cổ phần Ánh Dương Việt Nam (Vinasun, mã CK: VNS) công bố cho thấy, hầu hết chỉ tiêu kinh doanh của doanh nghiệp này đều giảm mạnh so với cùng kỳ năm ngoái.

Cụ thể, doanh thu thuần quý II năm nay đạt 810 tỷ đồng và ghi nhận mức thấp nhất từ năm 2014 đến nay. Luỹ kế doanh thu 6 tháng đầu năm đạt 1.903 tỷ đồng, giảm hơn 15% so với cùng kỳ năm ngoái. Dịch vụ vận tải hành khách vẫn là mảng kinh doanh đóng góp lớn nhất vào cơ cấu doanh thu, nhưng có dấu hiệu giảm mạnh cả về giá trị và tỷ trọng. Bù lại, doanh thu cung cấp dịch vụ khác bao gồm quảng cáo, lữ hành… đạt 160 tỷ đồng, tăng hơn 4 lần so với cùng kỳ.

Lợi nhuận sau thuế quý II cũng giảm gần phân nửa so với năm ngoái, chỉ đạt 46 tỷ đồng và nâng luỹ kế bán niên lên mức 101 tỷ.

Đáng chú ý là tổng số nhân viên của Vinasun tính đến cuối kỳ báo cáo giảm gần 8.000 người so với thời điểm đầu năm, chỉ còn 9.179 người. Trước đó, trong công văn kiến nghị Thủ tướng hồi giữa tháng 5, Vinasun cho biết chỉ riêng trong quý I năm nay đã có 4.239 người lao động nghỉ việc và 300 đầu xe phải nằm bãi mà nguyên nhân chính là chịu ảnh hưởng từ cạnh tranh "thiếu lành mạnh" của Uber và Grab.Tổng giá trị tài sản của Vinasun hiện tại là 2.914 tỷ đồng, giảm 269 tỷ so với thời điểm đầu năm do công ty tập trung thanh lý phương tiện vận tải xuống cấp với giá trị hơn 219 tỷ đồng.

Theo phân tích của ban lãnh đạo Vinasun, hoạt động kinh doanh năm nay vẫn gặp phải nhiều tác động không thuận lợi như sức mua trong nước chưa phục hồi, sự cạnh tranh khốc liệt từ Grab và Uber tại thị trường TP HCM. Ngoài ra, giá xăng dầu nhiều khả năng tăng đột biến, chi phí nhân viên tăng theo lương tối thiểu cùng hàng loạt khoản phát sinh khấu hao, lãi vay… cũng ảnh hưởng đến hiệu quả hoạt động của công ty.

Năm nay là năm thứ ba liên tiếp Vinasun cắt giảm chỉ tiêu kinh doanh. Theo đó, công ty đặt kế hoạch doanh thu và lợi nhuận trước thuế hợp nhất lần lượt đạt 4.256 tỷ đồng và 205 tỷ đồng, tương ứng mức giảm 10,6% và 34% so với thực hiện năm trước. Kế hoạch này được xây dựng trên cơ sở giá cước bình quân mỗi km vào khoảng 15.887 đồng.

Trong thời gian tới, Vinasun sẽ thay chiến lược kinh doanh theo hướng đa dạng hoá hình thức hợp tác với lái xe (vừa khoán xe, vừa ăn chia theo tỷ lệ) và nghiên cứu thị trường, cân nhắc lợi ích để phát triển dịch vụ gọi xe ôm trực tuyến để tăng sức cạnh tranh, giữ chân khách hàng.', N'Hoàng Thùy', CAST(N'2017-05-21 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB16', N'TL03', N'FE Credit tập trung các khoản cho vay tiêu dùng nhỏ
', N'BB16', N'Với sản phẩm cho vay tiền mặt và thẻ tín dụng hạn mức dưới 50 triệu đồng, công ty đạt dư nợ 30.000 tỷ đồng trong năm qua.
', N'Mới đây, khảo sát thị trường về sản phẩm cho vay tiêu dùng tại Việt Nam của Ngân hàng Nhà nước, cho thấy 42,8% khách hàng có nhu cầu vay dưới 50 triệu đồng, chiếm tỷ trọng lớn nhất. Khoản vay từ 100-500 triệu đồng; từ 50-100 triệu đồng chiếm tỷ lệ tương ứng 32,6% và 16,3%. Từ 500 triệu đến 1 tỷ đồng chỉ chiếm 8,3%.

Điều này khiến trên thị trường có sự phân bổ các khoản vay tiêu dùng; khi các công ty tài chính hướng đến phân khúc dưới 50 triệu đồng còn các khoản vay từ 50 triệu đồng đến trên 100 triệu đồng và lớn hơn thuộc về nhóm các ngân hàng thương mại.Lợi thế không đòi hỏi tài sản đảm bảo, mức cho vay đa dạng từ vài triệu đến vài chục triệu đồng, đáp ứng nhu cầu mua sắm các vật dụng cá nhân, hộ gia đình, điện thoại, máy tính, tủ lạnh, xe máy... khiến các công tài chính chóng trở thành một kênh cung ứng vốn dễ dàng và chính thống.

Theo thống kê của Stoxplus, trong số các công ty tài chính đang khai thác “miếng bánh” cho vay tiêu dùng hấp dẫn tại Việt Nam, FE Credit là một trong số đơn vị dẫn đầu với 1,4 tỷ USD tín dụng trong năm 2016, chiếm 48,4% toàn thị trường.

Đây cũng là tổ chức tài chính phát triển nhanh nhất tại Việt Nam với dư nợ đến cuối năm 2016 đạt 30.000 tỷ đồng và 2.000 tỷ đồng lợi nhuận trước thuế.

"Thành công của chúng tôi đến từ chiến lược tăng tốc phát triển chất lượng cả chiều rộng lẫn chiều sâu mà công ty đang theo đuổi", Đặng Thanh Hùng - Giám đốc Trung tâm tiếp thị FE Credit lý giải.

Với mạng lưới 9.000 điểm giao dịch và hơn 15.000 nhân viên được xem là lợi thế FE Credit trong việc phát triển hai sản phẩm chủ lực là cho vay tiền mặt và thẻ tín dụng với nhiều tiện ích đa năng.

Việc phối hợp với hệ thống hơn 5.500 đối tác cung cấp sản phẩm thiết bị điện tử, điện máy, bảo hiểm... triển khai các chương trình cho vay ưu đãi lãi suất chỉ từ 0-1% và ưu đãi trả trước 0 đồng được đánh giá là “điểm cộng” khác biệt của công ty trên thị trường. Nhờ đó thu hút và tạo điều kiện để khách hàng có nhiều cơ hội tiếp cận với những sản phẩm tiêu dùng chất lượng cao.

FE Credit cũng là một trong số tổ chức tài chính tiên phong triển khai thành công kênh chăm sóc khách hàng trực tuyến trên Zalo. Khách hàng có thể đăng ký, tra cứu thông tin khoản vay, thẻ tín dụng và trò chuyện trực tuyến với nhân viên chăm sóc khách hàng.

Ngoài ra, đơn vị cũng triển khai các dự án ứng dụng công nghệ vào sản phẩm dịch vụ như: ứng dụng ví điện tử Momo và Payoo; công cụ tìm kiếm và so sánh miễn phí các sản phẩm tài chính Gobear giúp khách hàng lựa chọn sản phẩm tín dụng phù hợp nhất, miễn phí, cá nhân hoá, đa dạng, tiết kiệm...

Theo đại diện FE Credit, để duy trì vị thế dẫn đầu thị trường tín dụng tiêu dùng sôi động như hiện nay, việc mang đến những trải nghiệm dịch vụ nhanh chóng và dễ dàng cho khách hàng là yếu tố không thể thiếu trong chiến lược kinh doanh.

“Với sự đầu tư, cải tiến không ngừng về chất lượng sản phẩm dịch vụ, đào tạo con người cũng như gia tăng độ phủ của hệ thống phân phối dịch vụ, chúng tôi tự tin có thể tiếp tục giữ vững và nâng cao vị thế trong thời gian sắp tới”, ông Hùng nhấn mạnh.', N'Minh Trí', CAST(N'2017-06-19 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB17', N'TL03', N'Nhà giàu gốc Á chi triệu USD săn bất động sản Sài Gòn
', N'BB17', N'Bán công ty sản xuất văn phòng phẩm ở Đài Loan, Yang (50 tuổi) gom 5 triệu USD đầu tư căn hộ, nhà phố, biệt thự tại Sài Gòn.
', N'Gia nhập thị trường bất động sản TP HCM gần 3 năm và "mù" tiếng Việt nhưng rào cản ngôn ngữ không thể làm khó nhà đầu tư cá nhân đến từ Đài Loan. Ông Yang thường đi xem nhà, đất, căn hộ cùng phiên dịch viên người Việt thân tín của mình. Thỉnh thoảng các con của Yang cũng tham gia hỗ trợ bố nhưng họ chỉ giao tiếp bằng tiếng Anh và có công việc kinh doanh riêng. Vì vậy, có đến 80% quyết định đầu tư của ông liên quan đến người phiên dịch bản xứ.

Hiện Yang có 3 căn hộ cao cấp tại tại trung tâm TP HCM, 2 căn nhà phố dự án tại quận 9 và 2 căn biệt thự tại quận 2, tất cả đều đang cho thuê. Đó là chưa kể những tài sản bất động sản Yang đang quản lý tại những tỉnh thành khác như Bình Dương, Đồng Nai.

Theo một môi giới bất động sản chuyên địa bàn phường Thảo Điền và quận Bình Thạnh tiết lộ, Yang đã đầu tư ít nhất cả trăm tỷ đồng, tương đương 5 triệu USD tại Việt Nam và vẫn tiếp tục tìm kiếm những cơ hội đầu tư bất động sản tại các dự án mới thuộc khu Đông Sài Gòn. Vợ con và phần lớn tài sản của người đàn ông Đài Loan này đều hiện diện tại TP HCM nên ông xem đây là miền đất hứa. Ông chia sẻ, việc kinh doanh bất động sản ở đô thị nhộn nhịp bậc nhất Việt Nam này có biên lợi nhuận hấp dẫn hơn ở quê nhà.Câu chuyện tương tự của ông Yang không phải là hiếm tại Sài Gòn. Đây là bằng chứng điển hình cho làn sóng săn lùng bất động sản khá rầm rộ của nhà đầu tư gốc Á. Theo dữ liệu khách hàng của một công ty tư vấn, môi giới đầu tư địa ốc tại địa bàn quận 2, TP HCM, danh sách khách VIP của họ có khá nhiều nhà đầu tư Hàn Quốc đã mua căn hộ Mastery Thảo Điền tọa lạc ngay mặt tiền Xa lộ Hà Nội để cho khách đồng hương của họ thuê. Cá biệt một nhà đầu tư Hàn đã mua 2 sàn căn hộ dự án này cũng để khai thác cho thuê.

Cách đây chỉ vài tuần, khoảng đầu tháng 7/2017, một dự án tọa lạc tại quận 2, tiếp giáp quận 1 qua hầm Thủ Thiêm công bố sản phẩm đã thu hút hàng trăm khách hàng Hàn Quốc quan tâm đặt chỗ. Điều đáng chú ý của nhóm khách đến từ xứ sở kim chi là ngay cả khi môi giới giải thích về quy định một dự án không được bán cho người nước ngoài vượt quá 25-30% sản phẩm. Trường hợp hết suất mua, môi giới tư vấn khách ký hợp đồng thuê 50 năm, các nhà đầu tư Hàn Quốc vẫn chấp thuận. 

Trao đổi với VnExpress, Tổng giám đốc Công ty Việt An Hòa, Trần Khánh Quang xác nhận, bên cạnh làn sóng M&A (mua bán sáp nhập) rầm rộ của các nhà đầu tư tổ chức đến từ Singapore, Nhật Bản, Hong Kong, Trung Quốc thì cuộc đua của nhà đầu tư cá nhân gốc Á cũng sôi động không kém.

Chuyên gia này phân tích, so với năm 2015, khi đó Việt Nam vừa cho phép người nước ngoài được sở hữu nhà, hiện nay thị trường TP HCM có nhiều loại hình bất động sản nhà ở thu hút giới đầu tư quốc tế, giá cả cạnh tranh so với khu vực. Sự phát triển về lượng (gia tăng mạnh nguồn cung) và về chất (ngày càng có nhiều sản phẩm đạt tiêu chuẩn cao) của thị trường địa ốc sôi động hơn 10 triệu dân này đã thu hút rất nhiều người gốc Á đến đây tìm cơ hội đầu tư.

Làn sóng này bắt nguồn từ nguyên nhân thị trường bất động sản nhiều nước trong khu vực châu Á đang có giá quá cao và đầu tư thời điểm này không còn hấp dẫn tại bản xứ. Mặt khác, lãi suất ở các thị trường này cũng cực thấp. Mức lãi suất phổ biến tại Nhật là 1%, tại Singapore là 3%, Hàn Quốc dưới 2% và nhiều vùng lãnh thổ khác như Đài Loan, Hong Kong cũng ở mức khiêm tốn so với Việt Nam.

Trong khi đó, thị trường bất động sản TP HCM được đánh giá còn nhiều tiềm năng tương tự thị trường Trung Quốc cách đây 10 năm. Biên lợi nhuận từ đầu tư bất động sản tại Sài Gòn nhiều năm nay đạt mốc trung bình 15-20% một năm, thậm chí cao hơn, gấp đôi mức này vào thời kỳ thị trường tăng trưởng tốt (2015-2016). Do đó, trong tương lai, bất động sản Việt Nam nhiều khả năng sẽ tiếp tục đón nhận cơn lốc săn bất động sản của nhà đầu tư gốc Á.

"Đây có thể là bước ngoặt cho thị trường TP HCM trong những tháng còn lại của năm 2017 và dài hạn hơn là trong 5 năm tới", ông Quang dự báo.

', N'Anh Minh', CAST(N'2017-04-25 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB18', N'TL03', N'''Nữ hoàng bầu trời'' cuối cùng của Boeing
', N'BB18', N'Boeing 747 từng là máy bay chở khách lớn nhất thế giới, có ý nghĩa với Boeing hơn bất kỳ dòng sản phẩm nào.
', N'Đầu tháng này, Boeing đã đưa về trụ sở một chiếc 747-8 Intercontinental từ một xưởng sơn ở Portland. Nó được sơn màu của Korean Air Lines và rất có khả năng là chiếc 747 chở khách cuối cùng được sản xuất. Máy bay này sẽ được chuyển giao cho hãng hàng không Hàn Quốc trong vài tuần tới.

Boeing không kỳ vọng máy bay cỡ lớn này sẽ có sự trở lại ngoạn mục. Trong dự báo 20 năm công bố năm nay, hãng cho biết không nhận thấy nhu cầu cho máy bay 747 và Airbus A380 mới. A380 hiện là máy bay chở khách lớn nhất thế giới.

Thay vào đó, họ tin rằng các hãng bay sẽ tiếp tục chuộng loại máy bay 2 động cơ cỡ lớn, như Boeing 777X hay Airbus A350. Những máy bay này có thể bay xa như những tàu bay khổng lồ, nhưng dùng ít nhiên liệu hơn. Chúng cũng có ít ghế hơn, giúp các hãng hàng không dễ dàng sắp xếp hành khách.Thế giới hiện vẫn còn gần 500 máy bay 747 còn hoạt động, theo Flightglobal Ascend. Tuy nhiên, con số này đang giảm dần, khi ngày càng nhiều máy bay bị thay thế hoặc trả về. Boeing đã giao hơn 1.500 chiếc 747 kể từ năm 1970.

747-8 Intercontinental - phiên bản chở khách của 747-8 lần đầu xuất hiện năm 2011 và chỉ được vài hãng bay đặt hàng, trong đó có Korean Air Lines, Lufthansa và Air China. Máy bay này có thể chở 467 hành khách và bay hơn 14.800 km.

Theo sổ sách của Boeing, họ còn 2 chiếc 747-8 chưa giao. Một trong hai là cho Korean Airlines. Boeing gần đây đã phải hủy 3 đơn hàng 747-8 vì khách phá sản.

Korean Air Lines thì cho biết không có kế hoạch mua thêm bất kỳ chiếc 747-8 hoặc A380 nào. Hãng này hiện có cả hai loại máy bay trên.

747 có thể vẫn được sản xuất trong ít nhất vài năm tới, nhưng có thể sẽ chỉ phục vụ việc chở hàng. "Chúng tôi vẫn đang tiếp tục thực hiện các đơn hàng 747-8 Freighter", Randy Tinseth - Giám đốc phụ trách marketing của Boeing nhận xét.

Được coi là "Nữ hoàng của bầu trời", Boeing 747 ra mắt năm 1970, khởi đầu thời kỳ bay đường dài với máy bay phản lực thân rộng hai lối đi. Với hơn 1.500 đơn hàng cho tất cả các dòng, Boeing 747 là một trong những máy bay bán chạy nhất lịch sử ngành hàng không.', N'Mạnh Hùng', CAST(N'2017-07-24 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB19', N'TL03', N'Tìm kiếm sáng kiến kinh doanh vì cộng đồng
', N'BB19', N'Chương trình thúc đẩy tinh thần và giải pháp kinh doanh nhằm giải quyết các vấn đề xã hội và môi trường vừa được công bố ngày 20/6. 

', N'Chương trình có tên gọi Én Xanh với mục đích thúc đẩy tinh thần và giải pháp kinh doanh nhằm giải quyết các vấn đề xã hội và môi trường cấp bách dưới sự bảo trợ của Phòng Thương mại và Công nghiệp Việt Nam (VCCI), Trung tâm Hỗ trợ sáng kiến Phục vụ Cộng đồng (CSIP) phối hợp với Viện Phát triển Doanh nghiệp (EFD).Với diện triển khai trên toàn quốc, Én Xanh hướng tới một chương trình dài hạn, uy tín và có quy mô lớn nhất Việt Nam trong việc tập hợp, thúc đẩy các sáng kiến kinh doanh vì cộng đồng, qua đó nuôi dưỡng và phát triển bền vững hệ sinh thái sáng kiến xã hội. Theo đó, chương trình Én Xanh 2017 được khởi động từ tháng 6 với các hoạt động chia sẻ, tìm kiếm, lựa chọn các sáng kiến tại nhiều địa phương trên toàn quốc.

Dự kiến Ban tổ chức sẽ tiến hành thu thập các sáng kiến kinh doanh từ đề cử của mạng lưới chuyên gia, các đơn vị uy tín cũng như từ phía cộng đồng.

Ngày hội Én Xanh sẽ được tổ chức vào ngày 19-21/8/2017 với điểm nhấn là hội thảo khoa học và đêm Gala tôn vinh những sáng kiến và cá nhân tiêu biểu cho năm 2017 diễn ra vào ngày 19/8/2017.

', N'Đức Hùng', CAST(N'2017-07-01 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB20', N'TL03', N'10 công ty lớn nhất thế giới
', N'BB20', N'Top 10 công ty có doanh thu lớn nhất thế giới năm qua ghi nhận 4 đại diện đến từ Mỹ và 3 đại diện đến từ Trung Quốc.
', N'Tạp chí Fortune vừa công bố danh sách Global 500 mới nhất, liệt kê 500 công ty lớn nhất thế giới dựa vào doanh thu năm 2016. Tại top 10 của danh sách này, Mỹ có 4 đại diện, Trung Quốc có 2 đại diện. Còn lại là các công ty đến từ Đức, Nhật Bản và Hà Lan.

Giữ vị trí số một là Walmart (Mỹ) với doanh thu năm qua đạt hơn 485,8 tỷ USD, lợi nhuận hơn 13,6 tỷ USD. Các vị trí thứ hai, ba và bốn là 3 công ty Trung Quốc, lần lượt là State Grid, Sinopec Group và China National Petroleum.
Năm 2016, 500 công ty lớn nhất thế giới đạt doanh thu tổng cộng 27.700 tỷ USD, lợi nhuận 1.500 tỷ đôla. Các công ty này phân bổ tại 34 quốc gia và đang thuê mướn 67 triệu lao động. Mỹ và Trung Quốc là 2 quốc gia có nhiều công ty nằm trong top 500 nhất. Trong đó, Mỹ có 132 công ty, Trung Quốc có 109 công ty.', N'Thanh Thư', CAST(N'2017-06-01 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB21', N'TL04', N'14 ngành bị đe dọa bởi trí thông minh nhân tạo
', N'BB21', N'Trí thông minh nhân tạo có thể thay thế vị trí của con người trong lĩnh vực dịch vụ khách hàng, giáo dục, tài chính, chăm sóc sức khỏe...

', N'Học máy giờ đây đã trở nên phổ biến hơn bao giờ hết và hội nhập dần vào cuộc sống. Từ tối đa hóa hiệu quả ở nơi làm việc đến hiểu sâu hơn về cảm nhận của người dùng với thương hiệu, dịch vụ và sản phẩm, ứng dụng về trí thông minh nhân tạo (AI) gần như là vô hạn. Nhiều ngành nghề đã tận dụng công nghệ mới để chạy đua trong làn sóng phát triển.

Dưới đây là những ngành nghề có khả năng bị tác động mạnh bởi trí thông minh nhân tạo. Kết quả này đến từ khảo sát với Hội Doanh nhân trẻ do The Next Web thực hiện.

1. Dự báo

Các phân tích thường do con người đưa vào dữ liệu. Tuy nhiên, công nghệ sẽ làm tốt hơn rất nhiều việc nhận diện xu hướng trước cả khi con người lưu tâm đến. Bằng việc nhận định và nhắm đến các xu hướng, AI sẽ có thể tạo ra những kế hoạch kinh doanh hiệu quả.

2. Dịch vụ khách hàng

Khả năng của AI hiện nay đã phát triển lên rất nhiều, ngoài việc có thể trả lời những câu hỏi đơn giản. Công nghệ này giờ đây có thể tương tác với con người, đưa ra những phản hồi nhanh chóng, thậm chí là chính xác hơn. Với sự phát triển nhanh chóng ấy, chúng ta có thể nghĩ đến việc một ngày nào đó ngành dịch vụ khách hàng sẽ không còn tồn tại nữa. 

3. Giáo dục

AI có thể thay đổi cách các trường thiết kế chương trình và giảng dạy cho học sinh. Bởi mỗi học sinh sẽ luôn có những cách tiếp thu kiến thức rất khác nhau. Những dạng thức tương tự từng nhận diện hành vi và khác biệt trong những lĩnh vực khác có thể được tận dụng để tìm hiểu cách học sinh hấp thụ kiến thức. Từ đó chúng ta có thể xây dựng những phương pháp học linh hoạt hơn. 

4. Tài chính

Tại sao bạn phải trả phí quản lý tài chính, thứ mà công nghệ AI có thể làm và thậm chí là còn tốt hơn cả con người. Trí thông minh nhân tạo trong tương lai có khả năng sẽ loại trừ công việc của những nhà tư vấn tài chính và đưa ra những lời khuyên trung lập nhất. Từ đó bạn có thể lựa chọn mức độ nguy hiểm trong đầu tư vào bất cứ dự án nào mà không mất một đồng phí.5. Dịch vụ thức ăn

Hiện giờ chúng ta có thể thấy những quầy bar tự phục vụ và những bốt bán thức ăn nhanh được tự động thực hiện bằng công nghệ. Khi mô hình này mở rộng, nó có thể thay đổi cả một ngành dịch vụ thức ăn khổng lồ.

6. Chăm sóc sức khỏe cá nhân

Khi tất cả những thông tin di truyền, vòng đời, chế độ ăn uống, dinh dưỡng và hoạt động thể chất hằng ngày được lưu trữ đầy đủ, công nghệ có thể thay đổi cách con người chăm sóc sức khỏe. Những dữ liệu đó có thể cung cấp những hướng dẫn và lời khuyên hữu ích cho bệnh nhân.

7. Y khoa

Đã có rất nhiều bài viết nhắc đến khả năng công nghệ có thể giúp cấy ghép con người. Một vài bài viết cho hay ngành y khoa đang cố gắng dùng AI vào mô hình sinh học giúp kéo dài cuộc sống của con người. 

8. Vận chuyển

Dây chuyền cung cấp đã sẵn sàng để được tự động hóa. Khi AI phát triển, máy móc có thể kết nối dễ dàng đến các điểm trong hệ thống vận chuyển. 

9. Chương trình khách hàng trung thành

AI sẽ xuất hiện tại điểm giao của dịch vụ khách hàng, như lịch hẹn đặt chỗ, quản lý thời gian đưa đón hay trung chuyển để lặp lại các giao dịch. Những nơi có thông tin và những tương tác lặp lại của khách hàng sẽ được tự động thông qua chatbot và AI.

10. Marketing

Nếu thực hiện tốt, AI có thể cung cấp thông tin cá nhân hóa trong thời gian thực, tạo nên những tùy chỉnh như hình ảnh, bản tiếp thị và nhạc quảng cáo phù hợp với từng người dùng. Qua đây có thể kết nối tất cả các phần của marketing, thấy trước được những nhu cầu của người dùng. 

11. Thu mua

AI sẽ tạo ra một cuộc cách mạng trong ngành thu mua và cung cấp hàng hóa trong vài năm tới. Công nghệ này sẽ thúc đẩy ngành thu mua bằng cách giúp tự động một số công việc, như nhận diện rủi ro hay những cơ hội mới. 

12. Quan hệ công chúng

Ngành PR với công việc quan hệ công chúng và các chiến dịch truyền thông đòi hỏi phải có trí tuệ của con người. Nhưng một số thứ có thể được tự động để mọi việc trơn tru hơn. Báo cáo quan hệ công chúng và giám sát phương tiện truyền thông là những ví dụ. Đây là những việc tốn nhiều thời gian và có thể thay thế với sự hỗ trợ của công nghệ. 

13. Tìm kiếm

Bằng cách có thể tự học hành vi người dùng, công nghệ trí thông minh nhân tạo có thể tạo ra hệ thống tìm kiếm cho ra những thông tin, giải pháp và sản phẩm hiệu quả và phù hợp với từng người dùng. 

14. An ninh

Ngành công nghệ thông tin gặp vấn đề lớn liên quan đến an ninh mạng. Các nhà phát triển và chuyên gia an ninh không thể duy trì nhịp độ khi những lỗ hổng và các cuộc tấn công mạng xuất hiện. Học máy thật sự là giải pháp duy nhất. Nó có thể rà soát một nguồn dữ liệu khổng lồ, học những mô thức mới và nhận diện nguy hiểm với độ chính xác cao hơn nhiều so với khả năng của con người. ', N'Phúc Hưng', CAST(N'2017-07-20 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB22', N'TL04', N'Startup nhận đầu tư 440 triệu USD nhắm vào thị trường Trung Quốc
', N'BB22', N'Stripe Inc. - startup Mỹ vừa công bố thỏa thuận hợp tác với 2 công ty thanh toán trực tuyến hàng đầu Trung Quốc là Alipay và WeChat.

', N'Theo đại diện công ty, Stripe muốn nhắm vào thị trường 1,3 tỷ dân trong lần ký kết thỏa thuận này.

Theo đó, doanh nghiệp đối tác với Stripe có thể bổ sung lựa chọn thanh toán qua Alipay và WeChat cho khách hàng của họ. Bên cạnh đó, Stripe cung cấp phần mềm giúp doanh nghiệp bảo mật dữ liệu, chống gian lận, lưu trữ thông tin giao dịch và xuất hóa đơn.

John Collison - đồng sáng lập kiêm CEO Stripe cho biết, công ty hợp tác với Alipay và WeChat nhằm giúp các doanh nghiệp thế giới tiến sâu vào thị trường Trung Quốc.

Alipay (Ant Financial) và WeChat (Tencent Holdings) đang thống trị hơn 90% thị phần thanh toán trực tuyến tại Trung Quốc.

Hiện, ví điện tử Alipay được hơn 100.000 nhà bán lẻ tại 70 thị trường quốc tế chấp nhận sử dụng. Đầu năm nay, Ant Financial hợp tác cùng cổng thanh toán First Data Corp giúp người dùng Alipay mua sắm với 4 triệu thương hiệu Mỹ.

Mặt khác, WeChat đang trở thành mạng xã hội được nhiều người sử dụng nhất Trung Quốc nhờ tiện ích thanh toán trực tuyến tích hợp trong ứng dụng. Theo Bloomberg Businessweek, đã có tới hơn 900 triệu người sử dụng WeChat.Thành lập năm 2009 bởi anh em Patrick Collison và John Collison, Stripe dựa theo nền tảng tài chính công nghệ cho phép các cá nhân, tổ chức thực hiện lệnh thanh toán trực tuyến với hơn 130 đơn vị tiền tệ trên thế giới, bao gồm tiền ảo Bitcoin. Hiện, công ty có 500 nhân viên.

Trong 8 năm hoạt động, Stripe được định giá 9,2 tỷ USD. Tới nay, công ty có thị phần tại hơn 100 quốc gia. Khách hàng của Stripe gồm các doanh nghiệp lớn như Facebook Inc., Target Corp, Macy’s Inc…

Tháng 11 năm ngoái, startup gọi vốn 150 triệu USD, một phần số tiền này được sử dụng để phát triển các phương thức thanh toán quốc tế. Đến nay, startup này đã nhận 440 triệu USD vốn từ các nhà đầu tư trên thế giới, không bao gồm khoản đầu tư không công bố của hãng vào năm 2010.

Đầu năm nay, Stripe ra mắt công cụ truy vấn Sigma giúp người dùng nhanh chóng phân tích và đưa ra quyết định đầu tư dựa trên thông tin tài chính, thông tin tín dụng và các dữ liệu khác.

CEO Stripe tiết lộ, công ty chưa có ý định IPO trong thời gian tới.', N'Mạnh Hùng', CAST(N'2017-07-21 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB23', N'TL04', N'Hãng đồ chơi lớn ở Mỹ ra đời từ câu hỏi của bé 10 tuổi
', N'BB23', N'Stripe Inc. - startup Mỹ vừa công bố thỏa thuận hợp tác với 2 công ty thanh toán trực tuyến hàng đầu Trung Quốc là Alipay và WeChat.

', N'Con trai của Karen Carson, đồng sáng lập Fat Brain Toys - một trong những nhà sản xuất và bán lẻ đồ chơi giáo dục lớn nhất nước Mỹ gợi ý về một cửa hàng online chuyên bán những món đồ chơi đặc biệt.

Công ty khởi phát khi cậu bé nhận được một món đồ chơi trong ngày sinh nhật 10 tuổi. Bé hứng thú và hoàn toàn bị mê hoặc bởi món quà đặc biệt này. Sau đó, bé lên mạng tìm xem có thể mua một bộ lớn hơn không và phát hiện ra việc này quá khó khăn.

Như bao đứa trẻ khác, cậu bé đến nhờ sự giúp đỡ của cha mẹ, thậm chí còn đưa ra gợi ý về một cửa hàng online chuyên bán những món đồ chơi đặc biệt. 15 năm đã trôi qua và giờ ý tưởng đó đã trở thành một dự án kinh doanh ăn nên làm ra. "Chúng tôi hiện là một trong những nhà bán lẻ đồ chơi online lớn nhất nước Mỹ và có 2 cửa hàng offline", bà Karen Carson chia sẻ.

Vậy chúng ta nên làm gì nếu ý tưởng của con trẻ thật sự cuốn hút? Và khi đã quyết định thực hiện, làm sao để biến thế giới đồ chơi ấy trở thành một việc kinh doanh nghiêm túc? Bà chia sẻ trên tờ Entrepreneur.

Xác định nhu cầu của thị trường

Bất cứ nhà sáng lập nào cũng sẽ khuyên bạn bước trước tiên để khởi đầu kinh doanh là xác định liệu thị trường có cần sản phẩm của bạn. Dù ý tưởng của con trai tôi cho thấy một nhu cầu thật sự, việc chúng tôi cần làm vẫn là phải thực hiện thêm những khảo sát thị trường khác, đặc biệt là trong ngành đồ chơi.

Chúng tôi phát hiện là có chỗ cho nhà bán lẻ tập trung vào những món đồ chơi đặc biệt, chứ không chỉ là đồ chơi theo xu hướng của các nhân vật xuất hiện đầy rẫy trong các rạp chiếu phim. Chúng tôi khám phá ra một nhu cầu, sự cần thiết có một công ty chuyên tạo ra những món đồ chơi mang khuynh hướng giáo dục và kích thích sự sáng tạo. Đó cũng chính là tất cả những gì chúng tôi tập trung kể từ ngày thành lập cho đến hôm nay.

Vì vậy, bước đầu tiên sau khi đã có ý tưởng kinh doanh là nghiên cứu thị trường. Nhiều chủ doanh nghiệp bỏ qua bước này bởi họ tin sản phẩm của mình là hoàn hảo và không cần bất cứ phản hồi nào. Nhiều người khác không làm vì thấy tốn kém. Dù lý do là gì chăng nữa, việc này có thể dẫn đến thất bại trong kinh doanh.

Đây là bước quan trọng giúp bạn thu thập thông tin về thị trường, khách hàng và các đối thủ. Khi hoàn thành nghiên cứu, bạn cũng nên ghi chú thêm những xu hướng mới nhất trong lĩnh vực mình khởi nghiệp, ngành này đang mở rộng ra các lĩnh vực nào, khách hàng của bạn là ai và đối thủ là các công ty nào.

Nắm bắt các nhóm khách hàng

Việc tiếp theo là tìm hiểu kỹ về khách hàng. Sau khi giới thiệu ra thị trường, có thể bạn sẽ thấy khách hàng của mình rất khác so với kỳ vọng. Đơn cử là công ty của tôi. Chúng tôi cứ nghĩ khách hàng mục tiêu của mình là ông bà và cha mẹ đơn thuần nhưng lại không biết là mình có một thị trường rộng lớn hơn với các ông bố bà mẹ của những trẻ em có nhu cầu đặc biệt.

Thay vì hoang mang vì nhóm khách hàng mới, chúng tôi bắt đầu ngồi lại và nghĩ xem mình có thể làm gì cho họ. Sau đó chúng tôi đã cho ra mắt một trung tâm nghiên cứu những nhu cầu đặc biệt trên website của công ty. Tại đó lưu trữ những phản hồi của khách hàng về cách các trẻ em đặc biệt sử dụng các sản phẩm như thế nào.

Cha mẹ của những em bé khuyết tật không phải là đối tượng khách hàng của chúng tôi ban đầu nhưng lại nhanh chóng trở thành một trong số đó. Việc linh hoạt, sẵn sàng đón nhận khách hàng mới và lắng nghe ý tưởng của họ là rất quan trọng. Có thể bạn sẽ mất hàng giờ làm việc để tìm hướng đi nhưng chắc chắn sẽ giúp bạn mở rộng và phát triển công ty hơn nữa.

Luôn nằm lòng giá trị của dịch vụ khách hàng

Khi còn nhỏ, một trong những bài học quan trọng mà chúng ta được dạy là nói những câu lịch sự như “làm ơn”, “xin phép” hay “cảm ơn”. Có thể hơi điên rồ nhưng đó nên là câu đầu tiên phải có trong đầu những người làm kinh doanh, đặc biệt là trong khâu dịch vụ khách hàng.

Là một doanh nghiệp xuất phát từ ý tưởng của một đứa trẻ 10 tuổi, chúng tôi biết dịch vụ khách hàng của mình phản ánh chính giá trị của gia đình chúng tôi. Đó là lý do chúng tôi chọn con người làm đội ngũ chăm sóc khách hàng chứ không phải là robot.

Khách hàng của chúng tôi thích tương tác thật sự giữa người với người bằng cách giao tiếp, trò chuyện với nhau. Việc này đã giúp chúng tôi có được rất nhiều khách hàng thân thiết và trung thành. Một công ty có dịch vụ khách hàng mạnh và thái độ tốt luôn thành công vì nó cho thấy bạn thật sự tôn trọng khách hàng của mình.

Phát triển một ý tưởng kinh doanh mới có thể phải mất nhiều năm động não cũng như hoàn thiện. Và cũng có thể bạn không thành công. Tuy nhiên, dù thế nào đi nữa, bạn cần giữ đôi mắt và đôi tai rộng mở vì biết đâu một ý tưởng nào đó sẽ đến với bạn ngẫu hứng lúc nào chẳng biết. Khi đã có ý tưởng trong đầu, hãy xác định nhu cầu của thị trường, linh hoạt với khách hàng và luôn luôn nói “cảm ơn”.

', N'Đông Huyền', CAST(N'2017-04-28 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB24', N'TL04', N'Startup đặt bàn trực tuyến kèm ưu đãi tại Việt Nam
', N'BB24', N'Stripe Inc. - startup Mỹ vừa công bố thỏa thuận hợp tác với 2 công ty thanh toán trực tuyến hàng đầu Trung Quốc là Alipay và WeChat.

', N'Là một trong số ứng dụng đặt bàn nhà hàng trực tuyến tại Việt Nam, PasGo do nhóm các chuyên gia nghiên cứu và phát triển từ năm 2014, nhằm đem đến giải pháp công nghệ toàn diện cho cả thực khách và nhà hàng.

Đại diện ứng dụng cho biết, khi có kế hoạch đi ăn bên ngoài, mọi người thường nghĩ tới câu chuyện ăn gì, ở đâu, khi nào, ưu đãi ra sao… Mọi người thường hay đọc các review để lựa chọn nhà hàng chất lượng và phù hợp; săn voucher, mã giảm giá để nhận ưu đãi… khá mất thời gian và bất tiện vì phải mua bán, giao nhận hay lưu trữ.

Đôi khi, những thông tin trên Internet tuy nhiều nhưng không tập trung, khó tin cậy. Nếu mua được các ưu đãi, mỗi khi muốn dùng bạn vẫn phải đặt bàn trước.

"Đi ăn nhà hàng vừa ngon, vừa hợp mục đích lại vừa tiết kiệm, nhưng có nên đặt bàn trước khi đi ăn? Nếu có cách nào giải quyết vấn đề này toàn diện và đơn giản chắc chắn sẽ được thực khách yêu thích - đó chính là những gì mà chúng tôi tạo ra từ PasGo", đại diện ứng dụng chia sẻ ý tưởng khởi nghiệp.Nhóm các nhà phát triển ứng dụng PasGo liên tục nghiên cứu xu hướng nền kinh tế chia sẻ, sự bùng nổ của smartphone, các ứng dụng di động, tiếp đến là làn sóng công nghệ tiên tiến 4.0, trí tuệ nhân tạo… để tạo ra sản phẩm đến gần nhất với nhu cầu của thực khách lẫn hệ thống các nhà hàng tại Việt Nam.

Trải qua không ít khó khăn; liên tục phải điều chỉnh và sửa đổi, PasGo đã được cập nhật nhiều tính năng ưu việt.

Theo đó, người dùng có thể tìm kiếm nhà hàng gần nhất, có hướng dẫn đường đi. Điều này tiện lợi cho các thực khách ở xa tới, hay đang trong hành trình du lịch. Chọn nhà hàng uy tín, chất lượng mà không cần đọc review, nhận ưu đãi kèm ngay việc đặt chỗ trực tuyến miễn phí chỉ với vài thao tác chạm đơn giản.

Ứng dụng có bộ lọc thông minh để người chọn nhà hàng đúng nhu cầu như: mức giá, loại hình, vị trí, mục đích, sao đánh giá uy tín và chất lượng… hay cả những yêu cầu đặc biệt hơn như đảm bảo bữa tiệc hàng trăm người, phòng riêng, chỗ ngồi lãng mạn... PasGo và đối tác đáp ứng tất cả các nhu cầu đó nhanh chóng và hoàn toàn miễn phí.

Ở khía cạnh các nhà hàng, ứng dụng sẽ giúp các đơn vị truyền thông miễn phí mà không mất chi phí đầu tư trước; thúc đẩy bán hàng thông minh khi tạo ra các ưu đãi thích hợp, dựa vào thực trạng của chính nhà hàng như: khung giờ thấp điểm, ngày thấp điểm, món ăn cần đẩy mạnh, chi nhánh vắng khách hay ưu đãi theo nhóm khách, sự kiện…

"Đây sẽ là giải pháp tối ưu trong quản trị, vận hành toàn diện nguồn lực của nhà hàng trên nguyên tắc thời gian thực, chứ không chỉ tạo ra các deal, voucher theo kiểu mua theo nhóm", vị đại diện nhấn mạnh.

Ngoài việc đặt bàn, ứng dụng còn giúp thực khách giữ chỗ miễn phí nhưng vẫn nhận tặng kèm ưu đãi, với các lợi ích tương tự như deal, voucher, mã giảm giá hấp dẫn.

Sau hơn 3 năm vận hành, hiện PasGo đã kết nối hơn 700 nhà hàng tại Hà Nội và TP HCM; với hàng nghìn lượt thực khách lựa chọn mỗi ngày và tạo ra hàng chục nghìn khuyến mại, ưu đãi hấp dẫn cho tất cả người dùng.

PasGo định hướng chỉ hợp tác với các nhà hàng chất lượng nhằm giúp người dùng không cần băn khoăn khi thao tác lựa chọn để đặt bàn ăn.

"Chúng tôi biết rõ điều này không dễ dàng, nhưng đội ngũ PasGo sẽ kiên định thực hiện mục tiêu này. Sự thành công của hướng đi sẽ góp phần thúc đẩy các nhà hàng quan tâm và đảm bảo chất lượng bữa ăn cũng như dịch vụ của mình", thành viên nhóm phát triển ứng dụng khẳng định.

', N'Kỳ Duyên', CAST(N'2017-02-20 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB25', N'TL04', N'Mạng xã hội hỏi đáp bằng video của startup Việt
', N'BB25', N'Tomo - mạng xã hội chia sẻ kiến thức, thảo luận, trò chuyện bằng các video ngắn không quá 60 giây dựa trên nền tảng di động.

', N'Từ lúc ra mắt phiên bản đầu tiên tháng 5/2017 đến nay, Tomo có gần 1.500 người dùng với hơn 450 video trả lời và khoảng 1.100 câu hỏi được đặt ra trên hệ thống.

Trên thế giới nói chung và tại Việt Nam nói riêng hiện không thiếu những nền tảng, ứng dụng mạng xã hội kết nối cộng đồng, người với người. Nhưng trong bài toán kết nối này, việc tiếp cận trực tiếp với người giỏi, chuyên gia của một lĩnh vực, người nổi tiếng để chia sẻ kiến thức, thông tin, hỏi đáp vẫn còn một vài bất cập.

"Có nhiều nơi để bạn đặt câu hỏi, có nhiều người xung quanh bạn để bạn hỏi. Tuy nhiên, không phải lúc nào bạn cũng có đáp án ngay và không phải lúc nào bạn cũng nhận được câu trả lời từ người bạn muốn", CEO của Tomo - Vương Quang Long nhận định.

Phổ biến trong cộng đồng người dùng hiện nay là mạng xã hội hỏi đáp Quora. Tuy đã ra đời và hoạt động 8 năm nhưng gần đây, Quora mới ra thêm các phiên bản tiếng Pháp, Đức, Tây Ban Nha bên cạnh tiếng Anh. Nền tảng này cũng mới chỉ hỗ trợ cho hình thức trao đổi kiến thức bằng văn bản.

Theo anh Long, Quora chưa tiếp cận được sâu vào thị trường châu Á và những dữ liệu hỏi - trả lời trên nền tảng này chưa bao quát các vấn đề được dự đoán sẽ trở thành mối quan tâm lớn nhất của cư dân khu vực này trong thời gian tới như tài chính, đầu tư, tiền điện tử, kinh tế, công nghệ…

Để giải quyết vấn đề, mạng xã hội Tomo thu gọn tất cả quá trình, tối ưu hóa việc hỏi đáp 1-1 và hỏi đáp mở dành cho cộng đồng trả lời, kết nối chuyên gia, người nổi tiếng một cách trực tiếp, nhanh chóng, hiệu quả thông qua các video được giới hạn trong 60 giây.Trong khoảng 2 năm trở lại đây, các mạng xã hội như Facebook, Instagram và Snapchat đã đẩy rất mạnh các sản phẩm tương tác bằng video trên nền tảng của mình, khuyến khích live stream, quay video chia sẻ câu chuyện…

Điều này sẽ tạo ra một lớp người dùng mới về video, thoại bên cạnh chia sẻ hình ảnh và chữ viết thông thường. Đi theo xu hướng này, Tomo kỳ vọng sẽ tiếp cận nhu cầu và thói quen sử dụng video trong tương tác mạng xã hội của người dùng.

Tomo mới ra đời đã phải cạnh tranh với các “ông lớn” như Facebook, Youtube, Zalo, Quora, Twitter…Vì vậy, ứng dụng sẽ cần thêm thời gian để nền tảng hoạt động tốt, ổn định, có nhiều tính năng hấp dẫn người dùng.

Bên cạnh phần hỏi đáp trực tiếp giữa bất kỳ hai người dùng nào trên hệ thống và phần đặt câu hỏi mở cho cộng đồng trả lời, Tomo cũng có các tính năng như bảng thông báo, quản lý câu trả lời, từ chối trả lời…Trong tương lai, ứng dụng cũng sẽ tích hợp khả năng tạo kênh riêng cho người sử dụng và các phần trả lời bằng chữ viết nhưng giới hạn dưới 400 ký tự.

Không dễ để xây dựng một cộng đồng, mạng lưới quan hệ mới, nhất là Facebook, Twitter, Zalo, Youtube… đã có chỗ đứng vững chắc trên thị trường và có tệp khách hàng lớn trên toàn cầu.

Tuy vậy, thị trường mạng xã hội ở Việt Nam vẫn còn tiềm năng. Chỉ cần tập trung vào thị trường ngách, đáp ứng nhu cầu của một cộng đồng, giải quyết được vấn đề của cộng đồng thì những sản phẩm như Tomo vẫn có triển vọng phát triển, CEO Vương Quang Long cho biết.

Hiện tại, trên Tomo có một số chuyên gia về lĩnh vực tài chính, công nghệ, ngoại ngữ, thực phẩm, thời trang, ẩm thực chia sẻ với cộng đồng người sử dụng.

“Sắp tới, Tomo sẽ ra mắt một loại tiền điện tử sử dụng trong hệ thống mạng xã hội của mình để các chuyên gia, người dùng có thể tự đưa ra giá cho câu trả lời của mình. Hy vọng điều này sẽ thúc đẩy thương mại hóa các giao dịch hỏi đáp, tạo động lực cho người sử dụng và xây dựng mạng lưới cộng đồng lớn”, anh Long chia sẻ.', N'Kỳ Duyên', CAST(N'2017-07-27 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB26', N'TL04', N'10 startup tranh tài tại triển lãm khởi nghiệp lớn nhất miền Trung
', N'BB26', N'Các startup có cơ hội trình bày ý tưởng và gọi vốn tại Hội nghị và triển lãm khởi nghiệp quốc tế SURF diễn ra ngày 22/7.

', N'Vượt qua 33 đối thủ, 10 dự án xuất sắc nhất cuộc thi Pitching Competition sẽ tranh tài tại vòng chung kết diễn ra vào ngày 22/7, trong khuôn khổ sự kiện SURF diễn ra ở một Trung tâm hội nghị thuộc quận Sơn Trà, Đà Nẵng. 

Ở vòng này, các đội tiếp tục trình bày ý tưởng và thể hiện bản lĩnh trước hội đồng giám khảo là các nhà đầu tư quốc tế, nhà đầu tư thiên thần và cộng đồng khởi nghiệp. 

Tổng giải thưởng cuộc thi 200 triệu đồng, gồm tiền mặt và các dịch vụ hỗ trợ. Riêng dự án thắng giải sẽ nhận 50 triệu tiền mặt cùng một năm sử dụng Danang Coworking Space (DNC) thuộc Vườn ươm doanh nghiệp Đà Nẵng (DNES). Pitching Competition là cuộc thi thuyết trình ý tưởng khởi nghiệp do Vườn ươm Doanh nghiệp Đà Nẵng (DNES) tổ chức. Qua đây, các doanh nhân trẻ có cơ hội thể hiện ý tưởng khởi nghiệp chuyên nghiệp, kiểm chứng tiềm năng, đo lường mức độ quan tâm ban đầu của công chúng và tìm kiếm góp ý, tư vấn từ các chuyên gia. Thông qua cuộc thi, các startup cũng có cơ hội gọi vốn từ nhà đầu tư. 

43 dự án đăng ký tham gia thuộc nhiều lĩnh vực như công nghệ thông tin, du lịch, môi trường, chăm sóc sức khỏe, nông nghiệp, thực phẩm, giáo dục đào tạo và dịch vụ. Ban tổ chức cho biết cuộc thi còn thu hút những doanh nghiệp khác không thuộc khu vực Đà Nẵng và miền Trung, đúng với tiêu chí hướng tới việc phát triển Đà Nẵng trở thành trung tâm đổi mới sáng tạo bên bờ biển.Theo ông Trần Vũ Nguyên, Giám đốc điều hành Vườn ươm Doanh nghiệp Đà Nẵng, các dự án năm nay có sự đầu tư rõ rệt về mặt ý tưởng lẫn cách thức thể hiện. "Nhiều đội và cá nhân đã chứng tỏ họ hoàn toàn có đủ khả năng triển khai các ý tưởng vào môi trường kinh doanh. Các ý tưởng cũng có tính thực tiễn cao", ông chia sẻ.

Hội nghị và triển lãm khởi nghiệp quốc tế SURF là sự kiện do Vườn ươm doanh nghiệp Đà Nẵng tổ chức, diễn ra vào ngày 21 và 22/7. Chủ đề của cuộc thi năm nay là “Công nghệ và hệ sinh thái khởi nghiệp”.', N'Anh Tú', CAST(N'2017-07-21 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB27', N'TL04', N'Khởi nghiệp với nhà máy không có con người
', N'BB27', N'Startup mang tên Voodoo đã chi 5 triệu USD để trang bị robot khắp nhà máy với mục tiêu tiết kiệm 90% chi phí trong vòng 5 năm tới.

', N'Lãnh đạo của Voodoo - công ty chuyên sản xuất các sản phẩm in 3D muốn toàn bộ nhà máy được tự động hoá. Theo đó, hãng khởi nghiệp có trụ sở tại Brooklyn (Mỹ) này đã đầu tư 5 triệu USD để lắp đặt robot và máy móc kín nhà xưởng.

Các công việc từng do con người thực hiện thì nay sẽ được robot thay thế. Nhờ quá trình tự động hoá này, Voodoo dự kiến giảm được 90% chi phí trong vòng 5 năm tới. Đồng thời, startup này cũng kỳ vọng có thể phát triển mạnh trên thị trường in 3D được ước tính quy mô khoảng 22,4 tỷ USD vào năm 2020.

Tuy nhiên, nhiều người cho rằng sự thay đổi này là tín hiệu xấu cho thị trường lao động. Một nhà đầu tư của Voodoo nhận định nhu cầu lao động vẫn sẽ tăng nhưng chỉ trong lĩnh vực phát triển phần mềm.', N'Quỳnh Trang', CAST(N'2017-07-17 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB28', N'TL04', N'Ông Trương Gia Bình: ''Startup có lợi thế trong cách mạng 4.0''
', N'BB28', N'Chia sẻ trực tuyến trên VnExpress, Chủ tịch FPT cho rằng với cách mạng 4.0, các bạn trẻ có thể làm ngay không cần suy tính về dòng vốn.

', N'Tại buổi tọa đàm trực tuyến diễn ra sáng 20/6 trên VnExpress, Chủ tịch FPT - Trương Gia Bình cùng ông Phạm Văn Tam - CEO Công ty Asanzo Việt Nam chia sẻ những cơ hội lẫn thách thức cho startup Việt trong cách mạng công nghiệp 4.0.Ông Trương Gia Bình - Chủ tịch Tập đoàn FPT cho biết, Việt Nam đã bỏ lỡ 3 cuộc cách mạng công nghiệp trước nhưng không nên bỏ lỡ cuộc cách mạng công nghệp 4.0.

"Nếu Việt Nam không đón được sóng, dễ rơi vào tình trạng ''đã già lại còn nghèo'', ''một người phải nuôi cả 4 người'' chưa kể nhiều vấn đề khác. Chỉ có một con đường là phải bắt nhịp cách mạng công nghiệp 4.0", ông Bình bày tỏ.

Theo ông Bình, 4.0 đang diễn ra với tốc độ chóng mặt bởi có sẵn nền tảng từ 3 cuộc các mạng trước và gần như lúc này đang "đứng trên vai các cuộc cách mạng".

"Thời gian tới, các bạn không còn trầm trồ ngạc nhiên khi mọi ôtô có thể tự vận hành mà không cần người lái, thậm chí các dòng máy bay cũng vậy. Tôi cũng hình dung sẽ có nhiều thành phố không còn đèn xanh đèn đỏ; quần áo găn lượng chip khổng lồ nhằm kiểm soát các hành vi, tình trạng sức khỏe...", ông Bình nhận định.

Đồng quan điểm với ông Trương Gia Bình, ông Phạm Văn Tam cho rằng cách mạng công nghiệp 4.0 đang ảnh hưởng đến tư duy và cả hành động của mọi người dân Việt Nam. Ngay trong công ty của Asanzo Việt Nam, vị CEO cũng từng bước ứng dụng công nghệ để thay đổi thói quen tiêu dùng của khách hàng.

Nếu như trước đây khách hàng dùng phiếu bảo hành, thì ngay từ những ngày đầu vận hành doanh nghiệp, vị CEO trẻ tuổi đã sử dụng các phần mềm thay thế. Mọi thông tin của khách hàng sẽ được thu thập lại, dễ dàng kiểm tra, đối chiếu và tiết kiệm chi phí không chỉ cho doanh nghiệp mà cho cả người dân.Đánh giá về cơ hội của cộng đồng khởi nghiệp tại cuộc cách mạng công nghiệp lần thứ tư, ông Bình cho biết, tiềm năng của Việt Nam rất lớn khi 65% dân số đều dưới độ tuổi 35 thích học hỏi, thích Internet. Dù vậy, khởi nghiệp luôn gắn với tính mạo hiểm.

Theo ông Bình, nếu các cuộc cách mạng trước cần nhiều tiền bởi thiên về phần cứng, thì với 4.0 chỉ thiên về ý tưởng, công nghệ, các bạn trẻ có thể làm ngay không cần suy tính về dòng vốn. Do đó, những nhóm nhỏ cá nhân vẫn có nhiều lợi thế. Các bạn trẻ có thể đi từ những ngành tiểu ngạch, tận dụng những gì sẵn có.

Chủ tịch FPT cũng khuyên các start-up nên mở ra nhiều chiều, trong đó có chiều công nghiệp. “Ngày xưa thiên về thương mại điện tử, thanh toán thì nay thế giới đang thiếu trầm trọng các start-up phục vụ doanh nghiệp”, Chủ tịch tập đoàn FPT khuyên các startup.

Từ hệ sinh thái (Ecosystem) đang được xây dựng tại FPT, ông Bình cho rằng, cơ hội cho các bạn trẻ muốn khởi nghiệp lúc này nhiều vô tận. Hầu hết các công ty đều làm ra sản phẩm để phục vụ khách hàng. Với những ứng dụng trong cách mạng số, các startup có thể phát triển các ứng dụng cụ thể, riêng biệt cho từng lĩnh vực như ngân hàng, bán lẻ, vận chuyển...Ở khía cạnh khác, CEO Asanzo lại có quan điểm bình dân hóa thành tựu của cách mạng 4.0 vào hoạt động khởi nghiệp - như chính định hướng mà công ty này đang theo đuổi.

"Quan trọng là làm thế nào 4.0 bình dân hóa trong suy nghĩ của cộng đồng, để họ thấy không còn cản trở và không còn sợ sự thay đổi", ông nói.

Tuy đứng trước vô vàn cơ hội, nhưng hai vị lãnh đạo tập đoàn thừa nhận, các startup cũng sẽ gặp khó khăn trong cuộc cách mạng công nghiệp này. Trong đó,  hạn chế về ngoại ngữ được các chuyên gia đánh giá là rào cản lớn cho nguồn nhân lực thế hệ 4.0.

Đi ngược với lo ngại của nhiều người về sự xuất hiện của robot có trí tuệ nhân tạo có thể thay thế hoàn toàn con người thật, ông Bình cho rằng, cách mạng công nghiệp 4.0 sẽ tạo ra nhiều việc làm hơn trước. Bởi yếu tố cá thể hóa là một trong những đặc điểm của cách mạng 4.0. Các ý tưởng đưa ra chỉ phục vụ cho một cá nhân. Mỗi sự tiến bộ trong khoa học kỹ thuật sẽ mở ra nhiều việc làm hơn với điều kiện doanh nghiệp biết chủ động khai thác lợi thế; để bị động sẽ lạc hậu.

"Thách thức hay không phụ thuộc vào cách mà chúng ta ứng xử với cơ hội", ông Tam cho biết.

Tại tọa đàm, hai vị khách hàng cũng nhận nhiều câu hỏi từ độc giả VnExpress, từ quá trình khởi nghiệp đến kinh nghiệm nắm bắt cơ hội của các doanh nghiệp trong bối cảnh hiện nay.

Kể lại câu chuyện khởi nghiệp của mình khi đứng trước khó khăn lớn nhất là cạnh tranh với các thương hiệu tivi nước ngoài, chủ hãng Asanzo cho biết, thành công của doanh nghiệp một phần là nhờ có tư duy cần thay đổi để phù hợp với nhu cầu thị trường.

"Với cách mạng công nghiệp 4.0, thách thức và rủi ro đều song hành, tuy nhiên khi các cơ chế chính sách của Chính phủ khuyến khích thì các startup Việt nên bắt đầu ý thức thay đổi tùy nhu cầu và khả năng tài chính của mình", ông Tam nói.', N'Anh Tú', CAST(N'2017-07-25 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB29', N'TL04', N'''Nhà đầu tư thiên thần'' chưa mặn mà với startup Việt
', N'BB29', N'Dù phong trào startup đang rầm rộ, các chuyên gia cho rằng nhà đầu tư thiên thần chưa mặn mà với các doanh nghiệp khởi nghiệp.

', N'Theo GS.TS Nguyễn Kỳ Phùng – Phó giám đốc Sở Khoa học & Công nghệ TP HCM, một trong những yếu tố quan trọng nhất để xác định doanh nghiệp khởi nghiệp có thành công hay không chính là việc kêu gọi được vốn đầu tư mạo hiểm. Những đơn vị sẵn sàng rót nguồn tiền này được gọi là "nhà đầu tư thiên thần". Tuy nhiên, dù phong trào startup đang phát triển mạnh tại TP HCM, dòng vốn đầu tư mạo hiểm này vẫn chưa mấy mặn mà. “Vai trò của ‘nhà đầu tư thiên thần" thường rất quan trọng trong giai đoạn thai nghén khởi nghiệp. Tuy nhiên, họ không hào hứng đầu tư vào các ý tưởng khởi nghiệp mạo hiểm vì chưa có những chính sách hỗ trợ để bảo đảm việc đầu tư vào khởi nghiệp là có lợi”, ông Nguyễn Kỳ Phùng đưa nhận xét tại hội thảo về xã hội hóa các nguồn lực đầu tư cho hoạt động khoa học công nghệ khu vực phía Nam vừa diễn ra.Còn theo ông Võ Việt Anh – Nhà sáng lập Dropdeck, một nền tảng kết nối startup với nhà đầu tư thì nguyên nhân chính là chất lượng. Các dự án startup tại Việt Nam nhìn chung chưa hấp dẫn các "cá mập", một cách gọi chỉ các nhà đầu tư đi săn các dự án khởi nghiệp có triển vọng. “Ở nước ngoài, các startup chất lượng tốt nhiều quá nên nhà đầu tư cũng khó chọn. Còn cái khó ở Việt Nam là do chất lượng còn thấp. Nói thẳng thắn thì đại đa số dự án có trình độ chưa cao, năng lực còn yếu. Cùng với đó, đội ngũ có thái độ và phẩm chất cũng còn thiếu”, ông Việt Anh nhận xét. Trước thực tế này, để không hoàn toàn trông chờ quá nhiều vào các "nhà đầu tư thiên thần", bà Vũ Kim Hạnh, Chủ tịch Hội Doanh nghiệp Hàng Việt Nam chất lượng cao cho rằng, Việt Nam nên áp dụng mô hình các doanh nghiệp nội địa lớn, đang thành danh trên thị trường hỗ trợ những người khởi nghiệp. “Đó không phải là quy tắc đạo đức hay trách nhiệm xã hội mà đó là lợi ích thật sự của họ. Cách làm của Facebook, Google hay Microsoft là xây dựng những nhóm nghiên cứu trẻ để trở thành những doanh nghiệp vệ tinh của họ. Họ đầu tư vào những doanh nghiệp này rồi mua lại khi doanh nghiệp đã trưởng thành trong thị trường. Tôi nghĩ đây là cách làm đã có công thức sẵn. Việc của chúng ta là làm sao tiêu chí hóa công thức này để xây dựng mối quan hệ giữa doanh nghiệp lớn và doanh nghiệp khởi nghiệp”, bà Hạnh đề xuất. Hai năm qua, hệ sinh thái khởi nghiệp tại TP HCM đã có bước phát triển khá nhanh. Sở Khoa học & Công nghệ thành phố cho biết đã hỗ trợ kết nối 640 dự án khởi nghiệp để giúp phát triển ý tưởng kinh doanh, đánh giá sản phẩm khởi nghiệp cho 1.523 cá nhân và nhóm cá nhân, kết nối 3.200 cá nhân và nhóm cá nhân khởi nghiệp với nhà đầu tư, chuyên gia và tổ chức tư vấn. Hiện hệ sinh thái khởi nghiệp TP HCM đang có khoảng 15 tổ chức hỗ trợ khởi nghiệp, 20 cơ sở ươm tạo doanh nghiệp nhà nước và tư nhân. Để thực hiện mục tiêu trở thành thành phố đổi mới sáng tạo và khởi nghiệp, hiện đang có 4 chương trình về khoa học công nghệ và đổi mới sáng tạo đang được triển khai.', N'Phước Tuấn', CAST(N'2017-07-29 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB30', N'TL04', N'Quỹ 100 triệu USD của Toyota cho các startup công nghệ
', N'BB30', N'Quỹ Toyota AI sẽ đầu tư vào các startup công nghệ tiềm năng trên toàn thế giới.

', N'Đại diện Toyota AI cho biết, quỹ phối hợp cùng Viện nghiên cứu Toyota, tìm những startup có sản phẩm mang tính ứng dụng cao trong lĩnh vực trí tuệ nhân tạo và tự động hóa. Hãng cũng tìm kiếm sản phẩm có tiềm năng ứng dụng trong những chiếc xe hơi của Toyota.

Ba startup đầu tiên đã nhận đầu tư từ Toyota AI. Đó là Intuition Robotics - startup về trí tuệ nhân tạo tại Israel với sản phẩm robot thay thế mắt và tai cho người già, nhận 14 triệu USD vốn từ quỹ. Palo Alto - công ty Mỹ chế tạo camera hành trình giúp lái xe phòng ngừa rủi ro tai nạn. Một startup từ Anh với công nghệ cho phép ôtô tự xây dựng bản đồ dựa vào vị trí của xe trong không gian thực.

Sau khi nhận đầu tư, các startup sẽ được đưa tới trụ sở chính của Viện nghiên cứu Toyota tại thung lũng Silicon. Tại đây, startup được đội ngũ kỹ sư của hãng trao đổi, đào tạo thêm chuyên môn và kỹ thuật.Gill Pratt - Giám đốc viện nghiên cứu Toyota cho biết, lĩnh vực trí tuệ nhân tạo và tự động hóa là mảnh đất màu mỡ dành cho các startup công nghệ. Lượng startup trong lĩnh vực này đang tăng nhanh với những sáng kiến không ngừng đổi mới.

Quỹ Toyota AI được thành lập trong bối cảnh Toyota đang cạnh tranh với Google và Tesla. Inc trong mảng xe không người lái. Đại diện hãng xe hơi 80 năm tuổi từ Nhật Bản cho biết, hãng sẽ hợp tác, sáp nhập hoặc mua lại công nghệ để nâng cao tính cạnh tranh cho dòng xe tự lái của Toyota dự kiến xuất hiện trên thị trường năm 2020.

Toyota thành lập viện nghiên cứu Toyota vào năm 2015 với số vốn khoảng 1 tỷ USD. Hiện, Gill Pratt - một trong những kỹ sư hàng đầu về chế tạo robot tại Dự án Nghiên cứu Quốc phòng của Bộ Quốc phòng Mỹ là giám đốc điều hành của Viện.

', N'Đức Hùng', CAST(N'2017-07-11 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB31', N'TL05', N'Mourinho muốn dẫn dắt Man Utd thêm 15 năm
', N'BB31', N'Chiến lược gia người Bồ Đào Nha bày tỏ mong muốn được gắn bó lâu dài với đội chủ sân Old Trafford.
', N'Jose Mourinho nhậm chức tại Man Utd vào hè 2016, và giúp CLB đoạt ba danh hiệu ngay trong mùa giải đầu tiên, gồm Siêu Cup Anh, Cup Liên đoàn và Europa League. Bất chấp sức ép phải thành công ở đội bóng hàng đầu thế giới như Man Utd, Mourinho đã sẵn sàng gắn bó thêm 15 năm tới khi ông 69 tuổi.

"Tôi đã sẵn sàng cho 15 năm nữa ở đây. Tại sao không?", Mourinho trả lời trang web ESPN FC. "Tôi thừa nhận điều này rất khó bởi áp lực của công việc. Mọi thứ đều đổ dồn vào HLV và mọi người luôn kỳ vọng đội bóng giành chiến thắng. Trên thực tế, chỉ có một đội giành chiến thắng cuối cùng mỗi mùa, và sự cạnh tranh càng lúc càng khốc liệt"."Những gì tôi đang làm ở Man Utd đi xa hơn kết quả đơn thuần, thậm chí ngoài cả trách nhiệm của một HLV. Tôi luôn cho rằng công việc của mình không chỉ là tới sân tập và giúp đội bóng giành kết quả tốt mỗi tuần".

Mourinho đến Man Utd sau khi đội bóng trải qua hai đời HLV ngắn ngủi của David Moyes rồi Louis van Gaal. Đây là điều trái ngược với hành trình 27 năm của Alex Ferguson trước đó.

Cầm quân tới 15 năm ở một đội bóng như Man Utd sẽ là câu chuyện cổ tích trong bóng đá hiện đại, nơi các chiến lược gia bị trảm thường xuyên. Bản thân Mourinho hiểu rõ điều này, vì ông từng hai lần bị Chelsea sa thải, và một lần phải ra đi khỏi Real.', N'Duy Khánh', CAST(N'2017-07-13 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB32', N'TL05', N'Monaco cảnh cáo các CLB tiếp cận Mbappe trái phép
', N'BB32', N'Đội bóng xứ công quốc cảnh báo với những đại gia liên hệ tiền đạo 18 tuổi mà không được sự cho phép của câu lạc bộ chủ quản.
', N'Thông báo của Monaco chỉ ra "một số đội bóng thuộc tầm quan trọng của châu Âu" đã tiếp cận Kylian Mbappe trái phép. Monaco có thể cân nhắc yêu cầu FIFA hoặc Ban tổ chức giải bóng đá Pháp can thiệp. 

Theo BBC Sport, Man City là đội bóng Anh duy nhất nằm trong danh sách của Monaco. Tuy nhiên đại diện đội chủ sân Etihad từ chối bình luận.

Mối quan hệ giữa Man City và Monaco trở nên gắn kết sau hai lượt trận ở vòng tứ kết Champions League năm ngoái. Man City đã mua tiền vệ Bernardo Silva và đang đàm phán về trường hợp hậu vệ Benjamin Mendy của Monaco.Arsenal cũng là đội bóng được đồn có khao khát sở hữu Mbappe và bị từ chối đề nghị hơn 110 triệu đôla vào tháng sáu. Bên cạnh những đội bóng nước Anh, Real và PSG cũng nằm trong danh sách các đại gia chờ đợi Mbappe.

Tiền đạo sinh năm 1988 ghi 26 bàn sau 44 trận cho Monaco mùa trước giúp đội bóng lần đầu tiên vô địch Ligue I sau 17 năm và vào tới bán kết Champions League.

Theo điều luật của FIFA, một đội bóng muốn tiếp cận cầu thủ chuyên nghiệp cần có văn bản tới câu lạc bộ chủ quản trước khi đàm phán. Tuy nhiên nhiều đội bóng không làm theo luật này và thực hiện những cuộc thương thảo chui với riêng cầu thủ trước rồi mới tới đội chủ quản. Hành động này bị gọi là "đi đêm".', N'Phước Tuấn', CAST(N'2017-07-17 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB33', N'TL05', N'Spieth, Koepka và Kuchar dẫn đầu sau vòng một British Open
', N'BB33', N'Ba golfer người Mỹ gây ấn tượng với thành tích 65 gậy (par 70) trong ngày thi đấu đầu tiên.
', N'Sự kiện British Open lần thứ 146 tại sân Royal Birkdale khởi đầu với điều kiện thi đấu tốt, trời lạnh và có gió nhẹ nhưng thổi đều ở vùng Southport. Mây đen kéo đến vào buổi chiều nhưng không mưa, tạo điều kiện để các golfer ghi những điểm số tốt nhất trong một vòng British Open tại Royal Birkdale, sân đấu hai lần gần nhất tổ chức major không có ai kết thúc với số gậy dưới chuẩn.
Jordan Spieth, Brooks Koepka và Matt Kuchar cùng dẫn đầu với điểm -5. Khoảng cách giữa họ và nhóm phía sau không xa, hứa hẹn những màn ganh đua hấp dẫn trong các vòng tiếp theo. Có 37 golfer cách vị trí dẫn đầu nhiều nhất bốn gậy, trong đó có những người từng vô địch British Open.

Golfer chủ nhà Paul Casey và cựu vô địch Masters Charl Schwartzel cùng giữ vị trí thứ tư, được -4. Ian Poulter (Anh), Justin Thomas (Mỹ), Richard Bland (Anh), Austin Connelly (Canada), Charley Hoffman (Mỹ) và Rafa Cabrera Bello (Tây Ban Nha) đứng vị trí thứ 6, cùng được -3. 

Trong đó, Hoffman là người đầu tiên tính từ năm 1983 ghi eagle ở hố đầu của vòng một British Open. Poulter sớm vươn lên dẫn đầu vào buổi sáng với hai birdie ở hố 2 và 4 nhưng sau đó chững lại.Spieth trải qua một vòng không bogey, ghi năm birdie ở các hố 2, 8, 9, 14 và 17. Nhà vô địch Masters và US Open 2015 chỉ đưa bóng vào 5 trong số 14 fairway, không phải một vòng mà anh phát bóng tốt nhưng điểm mạnh ở những cú đánh tiếp cận green cho phép Spieth liên tục ghi điểm birdie.

Spieth dẫn đầu PGA Tour về số gậy tích lũy từ những cú tiếp cận ở mùa này và một lần nữa, những cú vung gậy lần hai mang về cho anh lợi thế chứ không phải những pha phát bóng.

Đương kim vô địch US Open Brooks Koepka chỉ có một birdie trong chín hố đầu nhưng ghi ba birdie liên tiếp ở hố 11, 12, 13. Bogey ở hố 16 nhưng Koepka đánh dưới chuẩn hai gậy ở hố 17 để chia sẻ vị trí dẫn đầu với Spieth.Koepka không tham dự giải nào từ sau khi vô địch US Open hồi giữa tháng Sáu nhưng chứng tỏ phong độ của anh không hề suy giảm. Golfer 27 tuổi chỉ thực hiện 21 cú gạt trong cả vòng và sở hữu cú đánh hay nhất ngày ở hố 17, một cú chip đưa bóng đi thẳng từ bẫy cát vào lỗ. 

Matt Kuchar phát bóng muộn hơn Spieth và Koepka nhưng đạt số điểm -5 ngay sau chín hố đầu tiên, một khởi đầu xuất sắc với năm birdie ở các hố 2, 4, 5, 6 và 9. Nhưng golfer 39 tuổi bỏ lỡ một số cơ hội ở chín hố cuối, đặc biệt ở hố 15 và 17, để gia tăng điểm số.

Trong những năm gần đây, chiến thắng tại British Open có xu hướng thuộc về các golfer giàu kinh nghiệm, chỉ ngoại trừ trường hợp của Rory McIlroy năm 2014. Do đó, cơ hội để Kuchar vượt qua những đối thủ trẻ và giành danh hiệu major đầu tiên không nhỏ.McIlroy khởi đầu rất tệ với kết quả +5 sau chín hố đầu, anh có năm bogey ở các hố 1, 3, 4, 5, 6 nhưng nhà cựu vô địch ghi bốn birdie ở các hố 11, 15, 17, 18 để kết thúc với điểm +1. Số một thế giới Dustin Johnson cũng được +1 với birdie ở hố 2, bogey ở hố 7 và 14. Đương kim vô địch Henrik Stenson được -1 với ba birdie ở hố 5, 7, 15 và hai bogey ở hố 6, 14.

Kết quả của một số golfer được chú ý: -2 H. Matsuyama (Nhật Bản), M. Laird (Scotland), R. Ramsey (Scotland), Ernie Els (Nam Phi), Bubba Watson (Mỹ), S. Manley (xứ Wales); -1 M. Fitzpatrick (Anh), J. Day (Australia), A. Scott (Australia), J. Rahm (Tây Ban Nha); +1 D. Willett (Anh), J. Rose (Anh), R. Fowler (Mỹ), L. Westwood (Anh); +3 P Harrington (Ireland), P. Mickelson (Mỹ).', N'Đông Huyền', CAST(N'2017-07-18 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB34', N'TL05', N'Mourinho: ''Tôi không có hứng thú nói về Chelsea''
', N'BB34', N'HLV của Man Utd không quan tâm đến việc đội bóng cũ chiêu mộ Morata, dù đó là mục tiêu ông từng theo đuổi từ đầu hè.
', N'"Tôi không có hứng thú nói về Chelsea", Jose Mourinho trả lời khi được hỏi về việc Chelsea chiêu mộ Alvaro Morata với giá 92 triệu đôla từ Real Madrid. "Hiển nhiên họ phải mua tiền đạo sau những gì xảy ra với Diego Costa".

Trong một bài phỏng vấn trước đó, Mourinho thừa nhận Morata là mục tiêu theo đuổi của Man Utd nhưng không thể đạt thỏa thuận về mức giá với Real. "Người đặc biệt" nói về yêu cầu của Real là "sự hổ thẹn".

Man Utd sau đó quay sang mua Romelu Lukaku từ Everton với giá 97 triệu đôla. Đây là hợp đồng thứ hai của đội bóng thành Manchester trong mùa hè 2017 sau khi có được trung vệ Victor Lindelof với giá hơn 40 triệu đôla.Mục tiêu của Mourinho trong phần còn lại kỳ chuyển nhượng là có thêm một tân binh, dù ông từng đề nghị ban lãnh đạo Man Utd mua bốn cầu thủ khi bắt đầu mùa hè này.

"Chúng tôi không phải đội bóng sẵn sàng trả số tiền mà các đội khác muốn", Mourinho nói với BBC Sport. "Tôi thường xuyên làm việc ở những đội bóng chi số tiền lớn để có cầu thủ lớn. Bây giờ mọi đội bóng đều sẵn sàng chi lớn chỉ đổi về những cầu thủ ở mức giỏi".

Nếu như chỉ mua thêm một cầu thủ thì Mourinho sẽ phải lựa chọn một trong hai vị trí là tiền vệ tấn công hoặc tiền vệ phòng ngư. Dường như Man Utd sẽ buông ngôi sao của Inter là Ivan Perisic để dồn sức đưa về chốt chặn ở giữa sân là Nemanja Matic (Chelsea) hoặc Eric Dier (Tottenham).', N'Quỳnh Trang', CAST(N'2017-06-13 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB35', N'TL05', N'Oscar De La Hoya: ''Động lực của Mayweather và McGregor chỉ là tiền''
', N'BB35', N'Huyền thoại làng quyền Anh tiếp tục chỉ trích trận đấu có giá trị nửa tỉ đôla sắp sửa diễn ra trong tháng 8.
', N'"Động lực của Mayweather và McGregor rất rõ ràng, đó là tiền", Oscar De La Hoya nói với USA Today. "Họ lờ đi điều này nhưng đó là sự thật. Sau trận đấu hôm 26/8, họ chẳng cần đến chúng ta nữa. Mayweather sẽ treo găng lần nữa, còn McGregor trở lại nghiệp UFC".

De La Hoya là võ sĩ quyền Anh được yêu mến bậc nhất thập niên 90, thành viên danh dự của Ngôi nhà danh vọng. Cựu ngôi sao 44 tuổi nằm trong số những người chỉ trích mạnh mẽ nhất trận đấu giữa Floyd Mayweather và Conor McGregor, dự kiến diễn ra ngày 26/8."Cá nhân tôi nghĩ, dưới khía cạnh truyền thông, những việc Mayweather làm không tốt cho quyền Anh", De La Hoya nhấn mạnh. "Mayweather khiến những tay đấm bây giờ chỉ nghĩ về chuyện kinh doanh, thay vì tập trung vào trận đấu và tôn trọng khán giả".

De La Hoya cùng thời với Mayweather. Anh nổi tiếng trước, nhưng sau trận thua chính võ sĩ người Mỹ tháng 5/2007, tay đấm có biệt danh "Cậu bé vàng" đi xuống rồi nhường ngôi số một cho Mayweather. 

Trận đấu giữa De La Hoya và Mayweather từng đạt kỷ lục doanh thu thời điểm đó (136 triệu đôla), và thu hút 2,4 triệu người theo dõi qua truyền hình.

Khi có tin Mayweather đấu với võ sĩ UFC, McGregor, De La Hoya từng viết một bức thư ngỏ gửi đến những người hâm mộ quyền Anh, nhằm tẩy chay trận đấu. Anh cho rằng hành động của Mayweather sẽ "hủy hoại" quyền Anh chân chính.

De La Hoya đang tích cực quảng bá cho trận đánh giữa Gennady Golovkin và Canelo Alvarez ngày 16/9. Đây là hai võ sĩ thuộc hàng giỏi nhất thế giới ở hạng trung hiện nay.', N'Thanh Thư', CAST(N'2017-06-21 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB36', N'TL05', N'HLV của Đông Timor: ‘Tình thế sẽ khác khi gặp lại nhau ở SEA Games’
', N'BB36', N'Ông Kim Shinhwan thừa nhận Việt Nam xứng đáng với chiến thắng 4-0 ở trận ra quân bảng I vòng loại U23 châu Á ngày 19/5.
', N'“U22 Việt Nam xứng đáng thắng. Họ chuẩn bị tốt và trong trận thể hiện hay hơn. Tuy nhiên, chúng tôi có nhiều cầu thủ trẻ đang tiến bộ. Lần tới gặp nhau tình thế sẽ khác”, HLV Kim Shinhwan chia sẻ.

Trên sân Thống Nhất, U22 Đông Timor có cơ hội mở tỷ số ngay phút thứ năm. Tiền đạo đội khách đánh bại thủ thành Tiến Dũng nhưng vũng nước trước vạch vôi khiến họ không có bàn thắng. Đoàn quân của HLV Kim Shinhwan sau đó phải nhận bốn bàn thua từ Đức Chinh (phút 18), Công Phượng ( phút 67 và 71), Tuấn Anh (phút 87).

U22 Việt Nam và Đông Timor sẽ gặp lại nhau vào tháng Tám bởi hai đội cùng nằm ở bảng B tại SEA Games 29 trên đất Malaysia.

“Thua nhưng tôi tạm hài lòng với đội nhà. Thứ nhất, đội bóng của tôi gồm nhiều cầu thủ trẻ, non kinh nghiệm. Thứ hai, nay trời mưa lớn khiến đội xuống thể lực nhanh ở hiệp hai”, HLV Kim Shinhwan nói thêm.

Chiến lược gia người Hàn Quốc tiết lộ ông chuẩn bị kế hoạch cho Đông Timor chơi tấn công ngay từ đầu. Tuy nhiên, việc trời mưa lớn đã khiến kế hoạch của đội khách phá sản.

HLV Kim Shinhwan từ chối đưa ra nhận định đâu là cầu thủ hay nhất của U22 Việt Nam. Ông chỉ nói rằng hàng phòng ngự Đông Timor chơi không tốt, di chuyển thiếu linh hoạt, tạo điều kiện cho đội chủ nhà có bốn bàn thắng.', N'Hà Thu', CAST(N'2017-07-19 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB37', N'TL05', N'Lukaku: ''Mourinho giúp tôi thành cầu thủ giỏi hơn''
', N'BB37', N'Tiền đạo người Bỉ tỏ ra hứng thú khi làm việc với Mourinho, dù mới luyện tập cùng Man Utd hơn một tuần.
', N'"Ông ấy biết tôi có thể làm gì cho đội bóng và thúc đẩy tôi trở thành cầu thủ giỏi hơn nữa", Lukaku trả lời sau trận thắng Salt Lake mà anh ghi một bàn cho Man Utd. "Tôi đã học được rất nhiều từ Mourinho trong một tuần qua và hạnh phúc khi làm việc cùng nhau".

Lukaku hội quân với các cầu thủ Man Utd vào ngày 10/7 sau khi hoàn tất vụ chuyển nhượng trị giá 97 triệu đôla từ Everton. Tiền đạo 24 tuổi vừa ghi bàn thắng giúp Man Utd đánh bại Real Salt Lake ở trận giao hữu thứ hai trên đất Mỹ.

Ở mùa giải tới, Lukaku sẽ gánh vác trọng trách nặng nề - thay Ibrahimovic làm chân sút chủ lực của Man Utd. Trong năm mùa giải gần nhất, Lukaku ghi lần lượt 17, 15, 10, 18 và 25 bàn ở Ngoại hạng Anh. Đây là thành tích rất ấn tượng, xét tới việc Lukaku chơi cho các đội bóng tầm trung, gồm West Brom (cho mượn mùa 2012-2013) và Everton (2013-2017)."Tôi hạnh phúc với bàn thắng vào lưới Real Salt Lake. Tuy nhiên, chúng tôi còn nhiều điều phải cải thiện cho cả đội. Tôi hạnh phúc được gia nhập Man Utd, đây là câu lạc bộ lớn và thử thách tôi chờ đợi", Lukaku cho biết.

Chiến thắng trước Real Salt Lake giúp Man Utd giữ thành tích toàn thắng sau hai trận giao hữu trên đất Mỹ. Ở trận đầu tiên, đoàn quân của HLV Mourinho đè bẹp Los Angeles Galaxy với tỷ số 5-2.

Trong ba trận đấu kế tiếp trong chuyến du đấu hè 2017, Man Utd sẽ phải đối đầu các đội bóng lớn gồm Man City (20/7), Real Madrid (23/7) và Barca (27/7).', N'Anh Tú', CAST(N'2017-07-21 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB38', N'TL05', N'Morata đến sân tập tạm biệt HLV Zidane và đồng đội tại Real
', N'BB38', N'Tiền đạo 24 tuổi xuất hiện trong buổi tập của Real tại Los Angeles (Mỹ) để nói lời chia tay, trước khi chuyển sang Chelsea.
', N'Trong đoạn video được ghi lại, Alvaro Morata ôm Zinedine Zidane và trao đổi vài điều với ông thầy cũ. Sau đó, anh đến và chào riêng từng thành viên của ban huấn luyện. Cuối cùng, các đồng đội cũ đã chờ sẵn để ôm và chúc Morata may mắn trong hành trình mới.

"Tôi rất vui, đây là ý nguyện của Thượng đế, ngày mai tôi sẽ đến Chelsea", Morata nói với tờ Marca. 

Tuyển thủ Tây Ban Nha sẽ chuyển sang đầu quân cho Chelsea sau khi đội bóng Anh chấp nhận chi 92 triệu đôla để sở hữu anh. Morata sẽ phải đạt thỏa thuận cá nhân với Chelsea và vượt qua bài kiểm tra sức khỏe để hoàn tất thủ tục chuyển đến sân Stamford Bride. Tại đây, anh sẽ là tiền đạo chủ lực của Antonio Conte và sẽ được ra sân thường xuyên hơn - điều anh bị hạn chế tại Real mùa vừa qua."Tôi chẳng có gì thất vọng cả. Tôi đã giành bốn danh hiệu tại Real. Nhưng bây giờ, tôi chỉ nghĩ đến chuyện cống hiến trong màu áo Chelsea. Tôi muốn trưởng thành, nếu không thì tôi chẳng cần phải ra đi. Tôi muốn cảm ơn Zidane và chúc ông ấy may mắn ở mùa giải tới", Morata nói .

"Tôi đầu quân cho đội bóng được dẫn dắt bởi một HLV đặt niềm tin vào tôi, điều đó tốt cho tôi", anh bày tỏ.

Với sự xuất hiện của Morata, Diego Costa gần như chắc chắn sẽ sớm rời Chelsea. Costa không tham dự chuyến du đấu hè đến Trung Quốc của đội đương kim vô địch Ngoại hạng Anh. 

', N'Bảo Lam', CAST(N'2017-07-20 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB39', N'TL05', N'Barguil trở thành Vua leo núi của Tour de France 2017
', N'BB39', N'Lập kỷ lục với màn leo núi Col d’Izoard, tay đua trẻ người Pháp đoạt chiếc Áo Chấm Đỏ chung cuộc dành cho vua leo núi.
', N'Chặng 18 có điểm nhấn là vạch đích nằm trên đỉnh Izoard, ngọn núi cuối cùng của Tour de France 2017. Đây cũng là lần đầu tiên đỉnh núi huyền thoại này trở thành điểm kết thúc một chặng ở giải đua xe đạp đường trường hấp dẫn nhất hành tinh.

Thứ sáu, 21/7/2017 | 06:44 GMT+7 |
Barguil trở thành Vua leo núi của Tour de France 2017
Lập kỷ lục với màn leo núi Col d’Izoard, tay đua trẻ người Pháp đoạt chiếc Áo Chấm Đỏ chung cuộc dành cho vua leo núi.
Cựu vô địch ski-jumping trẻ thế giới nhất chặng 17 Tour de France / ''Vua nước rút'' Kittel gặp nạn, phải bỏ cuộc ở Tour de France 2017
Chặng 18 có điểm nhấn là vạch đích nằm trên đỉnh Izoard, ngọn núi cuối cùng của Tour de France 2017. Đây cũng là lần đầu tiên đỉnh núi huyền thoại này trở thành điểm kết thúc một chặng ở giải đua xe đạp đường trường hấp dẫn nhất hành tinh.


* Kilomet cuối của chặng 18, trên đỉnh núi Iozard.

Warren Barguil (đội Sunweb) mừng danh hiệu Vua leo núi theo cách không thể hoàn hảo hơn. Cua-rơ mới 25 tuổi lập kỷ lục của Tour de France khi chỉ mất 38 phút 15 giây để leo 14,1 km núi Izoard, với độ dốc trung bình 7,1 độ. Thành tích của Barguil vượt xa kỷ lục cũ tới gần 2 phút.

Barguil hoàn tất chặng với tổng thời gian 4 giờ 40 phút và 33 giây, nhiều hơn những người về sau ít nhất 20 giây. “Chiến thắng này thật kỳ diệu và khó tin,” Barguil hồ hởi nói. “Đây là một giấc mơ đối với tôi. Hiện tại tôi giống như đang ở trên trời vậy.”Chiến thắng đó giúp Barguil đạt 169 điểm trong cuộc đua giành chiếc Áo Chấm Đỏ dành cho người có tổng thành tích leo núi tốt nhất tại Tour de France. Anh bỏ xa người đang đứng thứ hai là Primoz Roglic (LottoNL-Jumbo) tới 89 điểm. Vì thế, dù Tour de France vẫn còn ba chặng nữa, ngay cả trên lý thuyết, các cua-rơ phía sau không còn cơ hội bám đuổi Barguil. Anh chỉ cần tham dự cuộc đua cho đến chặng cuối tại Paris là có thể bước lên bục vinh quang.

Thành tích của tay đua mới 25 tuổi càng có thêm ý nghĩa, nếu như biết rằng anh từng bị ngã và rạn xương hông ở Tour de Romandie cuối tháng Tư vừa qua. Barguil vẫn kịp hồi phục để tham dự Tour de France 2017, nhưng ở tuần đầu tiên anh gần như mất hút ở những màn leo núi. Kể từ tuần thứ hai, Barguil tỏ ra lấn lướt so với các đối thủ, dần bứt lên và tạo khoảng cách rất lớn về điểm số. Đây là chiến thắng xứng đáng của cua-rơ nước chủ nhà.Gần như chắc chắn đội Sunweb sẽ có hai danh hiệu ở Tour de France năm nay. Bên cạnh chiếc Áo Chấm Đỏ của Barguil, Michael Matthews cũng gần như đã trở thành chủ nhân của chiếc Áo Xanh chung cuộc. Tâm điểm của giải lúc này chỉ còn là ngôi vị vô địch. Chris Froome vẫn thi đấu rất ổn định với những sự trợ giúp tuyệt vời của các đồng đội ở Team Sky. Phía sau, Romain Bardet (AG2R La Mondiale) và Rigoberto Uran (Cannondale-Drapac) vẫn kiên trì bám đuổi.

Froome sẽ tiếp tục mặc Áo Vàng ở chặng 19, khi các cua-rơ ra khỏi dãy Alps. Tay đua người Anh đang đứng trước cơ hội lớn giành hat-trick với ba chức vô địch Tour de France liên tiếp.

Kết quả chặng 18

1. Warren Barguil (quốc tịch Pháp/đội Sunweb) 4 giờ 40 phút 33 giây
2. Darwin Atapuma (Colombia/UAE Team Emirates) +20 giây
3. Romain Bardet (Pháp/AG2R La Mondiale)

Bảng vị trí (Áo Vàng)

1. Chris Froome (Anh/Team Sky) 78 giờ 08 phút 19 giây
2. Romain Bardet (Pháp/AG2R La Mondiale) +23 giây
3. Rigoberto Uran (Colombia/Cannondale-Drapac) +29 giây

Bảng điểm (Áo Xanh)

1. Michael Matthews (Australia/Sunweb) 364 điểm
2. Andre Greipel (Đức/Lotto Soudal) 204 điểm
3. Sonny Colbrelli (Italy/Bahrain-Merida) 163 điểm

Chặng 19 (Thứ sáu – 21/7): Embrun - Salon-de-Provence, dài 222,5 km.', N'Hoàng Thùy', CAST(N'2017-07-11 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB40', N'TL05', N'Việt Nam – Macau: Chờ thêm một chiến thắng đậm
', N'BB40', N'HLV Nguyễn Hữu Thắng sẽ có thêm sự lựa chọn khi Xuân Trường hết hạn treo giò và sẵn sàng ra sân trong trận đấu thứ hai ở vòng loại giải U23 châu Á.
', N'Ở trận đấu mở màn gặp Đông Timor hôm 19/7, Xuân Trường phải ngồi ngoài vì chiếc thẻ đỏ ở vòng chung kết hai năm trước. Dẫu vậy, Việt Nam vẫn giành chiến thắng đậm đà 4-0, bất chấp thời tiết không thuận lợi. Người đá thay vị trí của Xuân Trường trận đó là Tuấn Anh hợp cùng Duy Mạnh. Tuy nhiên, khi tiền vệ đang thi đấu cho Gangwon được thi đấu trở lại, HLV Hữu Thắng có thể sẽ đưa ra những thay đổi. Xuân Trường vốn là cầu thủ yêu thích của ông, luôn được triệu tập ở mọi cấp độ 

“Macau đại bại 10 bàn trước Hàn Quốc nhưng chúng tôi vẫn rất tôn trọng họ. Một trận đấu chênh lệch như thế cũng chưa nói lên được điều gì, chúng tôi phải luôn tập trung lo công việc của mình”, HLV Hữu Thắng chia sẻ trước trận đấu tối nay với Macau. “Điều tôi mong mỏi lớn nhất là trời không mưa để các cầu thủ của tôi thể hiện được lối chơi ăn ý nhất và tránh đi những chấn thương”.Bên cạnh Xuân Trường,  HLV Hữu Thắng sẽ điều chỉnh thêm ở những vị trí khác, để giữ sức cho một số cầu thủ trước trận quyết đấu với Hàn Quốc lượt trận cuối. Các cầu thủ dự bị như Đông Triều, Thanh Bình, Tuấn Tài… có thể sẽ được trao cơ hội. “Tôi luôn nói với các cầu thủ, các em luôn có cơ hội ra sân. Nhưng tuỳ vào tình hình, từng đối thủ mà chúng tôi gặp phải. Trong phương pháp huấn luyện của tôi, ai cũng có thể thay thế”, ông cho biết.

Dưới thời HLV Toshiya Miura, Việt Nam từng đánh bại Macau 7-0 để giành vị trí đội nhì bảng có thành tích tốt rồi lọt vào vòng chung kết U23 châu Á 2015. Đó là trận đấu mà Công Phượng lập hat-trick. Ở lần gặp lại này, tiền đạo khoác áo số 10 vẫn là cái tên được kỳ vọng. Hai bàn thắng ở trận Đông Timor hứa hẹn giúp Công Phượng lấy lại sự tự tin trước khung thành đối thủ.

Đội hình dự kiến

U23 Việt Nam: Tiến Dũng, Văn Hậu, Văn Khánh, Bùi Tiến Dũng, Văn Thanh, Quang Hải, Xuân Trường, Tuấn Anh, Tuấn Tài, Công Phượng, Đức Chinh.

U23 Macau: Lo Weng Hou, Cheong Tin Long, Kam Chi Hou, Ng Wa Seng, Ng Wa Keng, Miguel Angelo Noronha, Cheong Hoi San, Lo Kuan lo, Vong Chak Man, Chu Kai Wang, Wan Tin lao.

', N'Duy Đoàn', CAST(N'2017-07-25 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB41', N'TL06', N'Vay vốn học phí đại học quốc tế với lãi suất 0 đồng
', N'BB41', N'Sinh viên BUV vay học phí từ ngân hàng Maritime Bank sẽ được hỗ trợ lãi suất 0 đồng, thời gian giải ngân linh hoạt.
', N'Theo ông Chris Jeffery (Giám đốc Học vụ BUV), tâm lý chung của các bậc phụ huynh là đầu tư cho con học hành đến nơi đến chốn. Nhiều nhà có điều kiện còn cho con du học nước ngoài với mong muốn sở hữu tấm bằng quốc tế, dễ xin việc làm.

"Tôi biết có những gia đình kinh tế ổn định đã vay tiền để con đi học và trả lãi theo tháng. Nhưng sau đó, khi thu nhập trở nên khó khăn, mức chi phí học tập hàng tháng bỗng trở thành gánh nặng vượt quá năng lực tài chính. Thậm chí, có trường hợp, phụ huynh buộc phải cho con trở về nước, ''đứt gánh giữa đường'' vì không thể xoay sở thêm", ông Chris Jeffery cho biết.

Để giảm chi phí, gánh nặng kinh tế mà con vẫn được sở hữu bằng quốc tế, phụ huynh có thể lựa chọn cho con theo học tại các trường quốc tế ở Việt Nam. 

Chị Phương Trang (Bà Triệu, Hà Nội) chia sẻ: "Sau khi suy đi tính lại, tôi quyết định cho con học Đại học Anh quốc Việt Nam (BUV) vì chi phí hợp lý hơn nhiều so với du học nước ngoài, lại vẫn có bằng quốc tế sau khi tốt nghiệp. Hiện con tôi học năm 2 và cháu hài lòng với môi trường học tập năng động, hiện đại ở đây".

Tại BUV, sinh viên sẽ được thụ hưởng toàn bộ lợi ích từ giáo dục Anh như đang du học nước ngoài. Đó là chương trình đào tạo chất lượng chuẩn Anh, môi trường học tập gắn liền thực tiễn, cuộc sống sinh viên năng động và tốt nghiệp được cấp bằng quốc tế.

Ngoài ra, trường cũng ký kết hợp tác với Ngân hàng Maritime Bank trong chính sách hỗ trợ học phí dành cho các tân sinh viên của trường.Theo đó, sinh viên BUV vay học phí từ ngân hàng Maritime Bank sẽ được hỗ trợ lãi suất 0 đồng, thời gian giải ngân linh hoạt. Các em không cần tài sản thế chấp, chỉ cần Trường đứng ra bảo lãnh, ngân hàng sẽ xem xét cho vay để thanh toán một phần hoặc toàn bộ số tiền suốt thời gian theo học. Số tiền cho vay sẽ cân đối với điều kiện tài chính cũng như khả năng chi trả của gia đình từng tân sinh viên. Thời hạn tối đa cho khoản vay là 3 năm. 

Bên cạnh đó, Trường còn có nhiều chương trình ưu đãi khác cho sinh viên, như trả góp học phí chia thành 6 lần mỗi năm, trợ giúp chi phí thuê nhà cho sinh viên tỉnh xa, tặng học bổng toàn phần lên tới 700 triệu đồng cùng nhiều học bổng bán phần...

Ông Chris Jeffery cho biết thêm, trường liên kết với nhiều đối tác mạnh trong các lĩnh vực như kiểm toán, tài chính, ngân hàng, khách sạn, tạo cơ hội cho sinh viên phát triển và thực tập ngay từ năm nhất. Vì vậy, tỷ lệ sinh viên BUV có việc làm 3 tháng sau khi tốt nghiệp rất cao. 

Đội ngũ giảng viên quốc tế tại BUV giàu kinh nghiệm giảng dạy với nhiều năm làm việc thực tiễn tại các tập đoàn và tổ chức toàn cầu. ', N'Phương Nguyên', CAST(N'2017-07-21 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB42', N'TL06', N'Nam sinh Hà Tĩnh từ chối hai trường hot để vào ĐH Sư phạm
', N'BB42', N'Được Học viện Hậu cần và Đại học Bách khoa Hà Nội tuyển thẳng, song Tuấn từ chối để theo đuổi nghề sư phạm.
', N'Lê Minh Tuấn, học sinh lớp 12 Toán 1, trường THPT chuyên Hà Tĩnh (Hà Tĩnh) đạt giải 3 môn Toán kỳ thi chọn học sinh giỏi quốc gia. Trong kỳ thi THPT quốc gia 2017, em đạt 26,55 điểm khối A.

Khi nghe tin được Học viện Hậu cần và Đại học Bách Khoa mời nhập học vì thành tích giải 3 toàn quốc, cậu rất vui. Ban đầu, Tuấn định theo ngành tự động hóa của Bách khoa. Sau thời gian suy nghĩ, cậu quyết định nộp đơn vào Đại học Sư phạm Hà Nội."Những ngôi trường trên đều rất tốt, là mơ ước của nhiều người, nhưng em muốn sau này được đứng trên bục giảng, có thể phục vụ cho chính ngôi trường THPT mình từng theo học", Tuấn nói.

Nam sinh tâm sự học tốt nhất môn Toán, mỗi lần giải được bài toán khó, cậu thường ghi lại trong cuốn sổ nhỏ để nhớ lâu. "Gặp nhiều bài vô cùng hóc búa, khi đi ngủ em cũng nghĩ tới nó để cố gắng tìm lời giải", Tuấn chia sẻ.

Trong 3 năm học THPT, hàng ngày Tuấn đều đặn đạp xe 12 km từ nhà ở huyện Lộc Hà lên TP Hà Tĩnh theo học. Với nhiều nỗ lực, Tuấn liên tục là học sinh giỏi nhiều năm, đạt giải 3 kỳ thi THPT quốc gia môn Toán, giải nhì thi Toán quốc tế giữa các thành phố mùa thu lần thứ 38.

Ông Lê Minh Thủy (47 tuổi, bố Tuấn) cho hay, ban đầu gia đình vẫn muốn Tuấn theo học hệ quân sự của trường Hậu cần, song khi thấy con trai quyết tâm theo đuổi đam mê, mọi người tôn trọng và ủng hộ.

Nhận xét về học trò, thầy Trần Đình Hữu (giáo viên chủ nhiệm lớp 12 Toán 1) cho hay Tuấn thông minh, chăm chỉ, có chí tiến thủ. "Kết quả này là rất xứng đáng cho những nỗ lực không biết mệt mỏi của Tuấn. Khi nghe tin cậu ấy sẽ nối nghiệp thầy, tôi rất vui và ủng hộ", thầy Hữu nói.', N'Duy Khánh', CAST(N'2017-07-27 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB43', N'TL06', N'Nam sinh trường làng là thủ khoa khối A tỉnh Hà Nam
', N'BB43', N'Đạt 10 Toán, 10 Hóa và 9,75 Lý, Vũ Trung Nghĩa chắc chắn đạt được nguyện vọng làm sinh viên Đại học Bách Khoa Hà Nội.
', N'Kiểm tra đáp án ngay sau khi kết thúc bài thi, Vũ Trung Nghĩa, cựu học sinh lớp 12A1, trường THPT C Kim Bảng (Hà Nam), không quá bất ngờ khi số điểm chính thức được công bố. “Nhưng có nằm mơ, em cũng không nghĩ mình là người có điểm đại học cao nhất tỉnh”, Nghĩa chia sẻ.

Là con út trong gia đình thuần nông có hai anh em, Nghĩa luôn tự dặn mình phải vươn lên bằng con đường tri thức. Chỉ học trường làng gần nhà để có nhiều thời gian phụ giúp gia đình, Nghĩa quan niệm thành công phụ thuộc vào sự tự giác của bản thân chứ không hoàn toàn dựa vào môi trường học tập.

Em đã chứng minh quan niệm đó đúng đắn khi liên tiếp giành giải nhất, nhì tỉnh môn Toán trong suốt 3 năm cấp 3. Ở kỳ thi THPT quốc gia, em đạt tổng 29,75 điểm khối A, trong đó Toán và Hóa đạt 10 điểm, Vật lý 9,75.Sớm lựa chọn Toán, Lý, Hóa là tổ hợp xét tuyển đại học, Nghĩa luôn dành thời gian mỗi ngày để học cả 3 môn. “Em không phân chia cụ thể mỗi môn phải học bao nhiêu nhưng thường làm theo một quy trình nhất định”, Nghĩa chia sẻ.

Mỗi ngày, chàng trai Kim Bảng sẽ làm hết 3 đề tương ứng với 3 môn theo đúng thời gian quy định trong một kỳ thi thật. Làm xong, so đáp án, biết sai ở câu hỏi nào, em sẽ lập tức rà lại phần sai đó để tìm cách giải lại. Cứ như vậy, Nghĩa giải hết đề thầy cô giao lại chuyển sang tìm đề trên mạng, số lượng lên tới hàng trăm.

“Trong quá trình làm đề, em luôn ghi chép tất cả công thức, lý thuyết quan trọng và những bài làm sai ở từng môn vào một cuốn sổ để ghi nhớ và rút kinh nghiệm”, Nghĩa nói.

Học kém nhất Hóa, Nghĩa đầu tư nhiều thời gian và công sức để ôn luyện môn này. Không có điều kiện tham gia học thêm, em tìm một khóa học online giá rẻ trên mạng để củng cố kiến thức và luyện thi trực tuyến. Kết quả, em đạt điểm tuyệt đối môn này, có lẽ một phần do may mắn", nam sinh khiêm tốn chia sẻ.

Nói về đề thi THPT quốc gia năm nay, Nghĩa tỏ ra thích thú khi kiến thức trong đề bao phủ các chương trong sách giáo khoa và kiểm tra học sinh một cách toàn diện. Dù nội dung thi chỉ nằm trong chương trình lớp 12 nhưng theo Nghĩa, mỗi vấn đề đều được đưa ra sâu và đầy đủ hơn. Không đánh giá đề dễ hay khó hơn mọi năm, Nghĩa cho rằng chỉ cần ôn luyện kỹ thì bài thi cũng chỉ như một đề từng luyện ở nhà.

Thầy Dương Văn Học, giáo viên chủ nhiệm lớp 12A1 trường THPT C Kim Bảng, tự hào khi nhắc tới học trò. “Không phải con nhà nòi và cũng không học thêm, Nghĩa luôn có ý thức tự học, cẩn thận và chịu khó”, thầy Học nhận xét và cho biết Nghĩa là học sinh đầu tiên của trường trở thành thủ khoa của tỉnh với số điểm mà cả thầy cô đều không ngờ tới.

Ước mơ trở thành kỹ sư công nghệ thông tin, Nghĩa đăng ký nguyện vọng 1 vào ngành Công nghệ thông tin Đại học Bách khoa Hà Nội. Với số điểm 29,75, em chắc chắn là tân sinh viên của trường. Tuy nhiên, Nghĩa vẫn chưa dừng ôn tập.

“Em vẫn đang tập trung luyện hai môn Toán và Vật lý để thi vào lớp chất lượng cao - kỹ sư tài năng của trường. Cuộc thi diễn ra khoảng đầu tháng 9 tới”, Nghĩa thông tin. Chàng trai sinh năm 1999 còn lên kế hoạch trau dồi tin học và ngoại ngữ, hai kỹ năng cần thiết cho công việc sau này mà hiện tại em còn rất yếu. 

Giải thích lý do chọn ngành công nghệ thông tin trong khi kỹ năng tin học chưa tốt, Nghĩa thẳng thắn nói vì cơ hội việc làm cao. "Em sẽ cố gắng trong quá trình học ở trường để có một công việc khá sau khi tốt nghiệp, giúp đỡ một phần cho gia đình", Nghĩa chia sẻ.

', N'Phương Nguyên', CAST(N'2017-07-28 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB44', N'TL06', N'Bốc thăm may mắn để chọn trẻ vào học trường công lập
', N'BB44', N'Khu đô thị Kim Văn - Kim Lũ có khoảng 20.000 dân nhưng chỉ một trường mầm non công lập nhận trẻ lớp 3 tuổi với chỉ tiêu là 91. 
', N'Ngày 14/7, chị Hiền cùng hơn 160 phụ huynh có con sinh năm 2014 tới trường mầm non Hoa Sữa (quận Hoàng Mai, Hà Nội). Đây là cơ sở giáo dục công lập duy nhất trong quận năm nay nhận trẻ lớp 3 tuổi ở khu đô thị Kim Văn - Kim Lũ. Chỉ có 91 chỉ tiêu cho lớp mẫu giáo 3 tuổi, nhưng có đến 186 trẻ đăng ký, nhà trường do đó phải dùng biện pháp may rủi - bốc thăm chọn học sinh. Chị Hiền hôm đó rơi vào nhóm 74 phụ huynh bốc trượt.

"Luật quy định trẻ em được bình đẳng về cơ hội học tập và giáo dục. Nhưng con tôi không được học trường công như các bạn, dù đăng ký đúng tuyến. Vậy có gọi là bình đẳng không?", người mẹ bức xúc.Chị lo lắng khi nghĩ đến việc gửi con gái lớn vào mầm non tư thục với kinh phí 1,5-2 triệu đồng một tháng, cao gấp 2 lần tổng học phí và tiền ăn ở trường công. "Thu nhập vợ chồng mỗi tháng được 15 triệu đồng thì trả ngân hàng 5 triệu vay mua nhà, 4 triệu thuê giúp việc trông con nhỏ, giờ nếu thêm 2-3 triệu cho con học mầm non tư thục thì chắc tôi không tải nổi", người mẹ 2 con trăn trở và tiếp tục dò hỏi cách "chạy" cho con vào học trường công.

Nhiều phụ huynh trong khu đô thị Kim Văn - Kim Lũ cũng bức xúc khi phải gửi con vào trường mầm non dân lập. Khu đô thị với 6 khối nhà cao tầng đưa vào hoạt động (tổng dự án có 8 khối nhà) có khoảng 20.000 dân nhưng xung quanh chỉ có 2 trường mầm non công lập là Hoa Sữa và Đại Kim, phục vụ cho cả phường Đại Kim (quận Hoàng Mai). Mỗi năm, các trường này chỉ tuyển mới một số chỉ tiêu vào mẫu giáo 3-5 tuổi.

Cách khu nhà Kim Văn - Kim Lũ khoảng 100 m, 3 tòa chung cư cao 22 tầng chuẩn bị đưa vào hoạt động. Chị Hiền lo 2 năm nữa khi con gái thứ hai đến tuổi đi mẫu giáo, sẽ phải "chọi" với bao bạn trong màn bốc thăm may rủi để được vào trường công. Ngày 7/7 vừa qua, chị Vân - cư dân khu chung cư mới xây dựng HH Linh Đàm (phường Hoàng Liệt) - cũng trải qua màn bốc thăm để cho con vào mầm non Thực hành Linh Đàm. Chỉ khu HH với 12 tòa nhà cao 36-41 tầng đã có khoảng 50.000 người, nhu cầu trường lớp rất lớn. Tuy nhiên, cả phường Hoàng Liệt có duy nhất một trường mầm non công lập.

Theo số liệu năm 2016, 5 cơ sở của ngôi trường này chỉ đáp ứng 13% số học sinh mầm non trong phường. Nhiều nhà như gia đình chị Vân có hộ khẩu KT2 nhưng không thể cho con nhập học. Mong muốn cho con học trường được "nhà nước đầu tư, giám sát", chị Vân kỳ vọng vào mầm non bán công Thực hành Linh Đàm. Trường này không yêu cầu hộ khẩu Hà Nội hay đăng ký đúng tuyến. 

Cơ hội của chị Vân trở lên mong manh khi năm nay trường tuyển 40 học sinh lớp 2 tuổi nhưng có 99 hồ sơ đăng ký. 3 năm trước người mẹ bốc thăm trượt cho con trai lớn. Lần này, vận may không mỉm cười với chị. Chị Vân dự tính cho con gái út học trường mầm non tư thục trong khu HH nơi anh trai đang theo, để được giảm học phí và miễn tiền xây dựng trường. 

Ở khu đô thị Dương Nội (Hà Đông) với 14 tòa nhà cao 25 tầng, khoảng 10.000 dân, việc xin học cho con vào trường mầm non tư thục có tiếng cũng là bài toán đau đầu. Chị Hồng từng ngao ngán khi nhìn danh sách khoảng 1.000 phụ huynh đăng ký trước, đang chờ trường tư thục gọi con vào học. May mắn có người quen, chị "đi lách" xin được cho con trai lớn vào học sớm. 

Người mẹ thở phào khi tháng 8 tới đây có thể đưa con nhỏ vào học trường mầm non công lập để giảm chi phí. Khu đô thị Dương Nội nơi gia đình chị Hồng ở là số ít khu chung cư mới, hoàn thành việc xây dựng trường mầm non công lập để phục vụ cư dân.

Theo quy định, mỗi khu đô thị mới mọc lên ở Hà Nội phải có ít nhất một trường mầm non, tiểu học và THCS công lập. Tuy nhiên, báo cáo của UBND thành phố Hà Nội cho thấy, trong 78 dự án khu đô thị mới có quy hoạch đất xây dựng công trình hạ tầng xã hội (nhà trẻ, trường học...), chỉ 36 dự án đầu tư xây dựng đồng bộ đúng quy hoạch; 27 dự án đang xây công trình hạ tầng xã hội cùng nhà ở; 15 dự án đầu tư chưa bảo đảm đồng bộ hạ tầng xã hội với xây dựng nhà.

*Tên nhân vật đã được thay đổi.', N'Phương Đông', CAST(N'2017-07-16 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB45', N'TL06', N'Trường đại học đầu tiên ở TP HCM công bố điểm chuẩn
', N'BB45', N'Với 3 tiêu chí điểm học bạ, thi THPT quốc gia và kiểm tra năng lực, ngành Luật thương mại quốc tế của Đại học Luật TP HCM lấy điểm cao nhất 24,7.
', N'Chiều 19/7, trường Đại học Luật TP HCM thông báo điểm xét trúng tuyển vào trường năm 2017 theo đề án tuyển sinh riêng. 

Điểm chuẩn được căn cứ trên 3 tiêu chí học bạ (chiếm tỷ trọng 10% điểm trúng tuyển), điểm thi THPT quốc gia năm 2017 (50% ) và điểm kiểm tra năng lực (40%). Ngành Quản trị kinh doanh có mức điểm xét tuyển thấp nhất là 20 ở tất cả các tổ hợp, ngành Luật Thương mại quốc tế cao nhất với 24,7 điểm (tổ hợp D66).Hiện, trường chưa tiến hành xét phân khoa chuyên ngành đối với thí sinh trúng tuyển ngành Luật. Sau khi thí sinh nộp bản chính giấy chứng nhận kết quả thi THPT quốc gia năm 2017 và làm thủ tục nhập học, trường sẽ công bố điểm trúng tuyển vào các khoa chuyên ngành, trước khi thí sinh vào học chính thức.

Trước đó, kết thúc giai đoạn xét tuyển sơ bộ, hơn 4.000 thí sinh đạt yêu cầu mức tối thiểu trong kỳ thi THPT quốc gia theo các tổ hợp môn của các ngành từ  21 điểm trở lên. Các thí sinh sau đó phải tham gia bài kiểm tra năng lực với 100 câu hỏi.

Đây là năm thứ hai trường thực hiện đề án tuyển sinh riêng được Bộ Giáo dục và Đào tạo phê duyệt. Năm nay, trường có khoảng 1.600 chỉ tiêu ở 5 ngành.', N'Bảo Lam', CAST(N'2017-07-19 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB46', N'TL06', N'Thái Lan xem giáo dục Việt Nam là gương cải cách
', N'BB46', N'Điểm số PISA cao và bộ máy quản lý ít cồng kềnh là điều mà Bộ trưởng Giáo dục Thái Lan muốn học tập ở Việt Nam.
', N'Theo Bloomberg ngày 19/7, khi được hỏi về đổi mới động cơ tăng trưởng kinh tế, Bộ trưởng Giáo dục Thái Lan Teerakiat Jareonsettasin thẳng thắn thừa nhận: "Chúng tôi thậm chí không thể tạo ra một chiếc xe máy".

Trong cuộc phỏng vấn, Bộ trưởng Giáo dục thứ 20 với 17 năm đứng đầu ngành giáo dục chỉ ra những thiếu sót trầm trọng khiến Thái Lan không thể bắt kịp các nước khu vực Đông Nam Á, trong đó có Việt Nam. Ông đang cố gắng thu hẹp khoảng cách bằng chiến lược nâng cao tự chủ cho các trường học và giáo viên, tiếp tục tập trung vào những lĩnh vực là thế mạnh truyền thống, như: thực phẩm, chăm sóc sức khỏe và du lịch.

Teerakiat nhận xét điểm số PISA của học sinh Thái Lan ở môn Toán, Khoa học và Đọc hiểu giảm mạnh kể từ cuộc khảo sát năm 2012, thấp hơn mức trung bình quốc tế. "Chúng tôi làm gì cũng không đạt hiệu quả", ông nói về những nỗ lực cải cách giáo dục trong quá khứ. 

Theo kết quả đánh giá học sinh quốc tế của chương trình PISA thực hiện 3 năm một lần, Thái Lan chỉ xếp thứ 54/70, mặc dù ngành giáo dục tiêu tốn 2,73 nghìn tỷ baht (81 tỷ USD) hàng năm, tương đương 1/5 ngân sách. Singapore dẫn đầu bảng xếp hạng PISA ở cả ba môn. Việt Nam xếp thứ 8 về Khoa học, trong khi Nhật Bản, Đài Loan, Macau (Trung Quốc) đều lọt top 10. Kể từ khi lên nắm quyền cách đây ba năm, chính quyền quân sự Thái Lan triển khai chính sách "Thái Lan 4.0", đặt trọng tâm vào thúc đẩy đổi mới và các ngành công nghiệp tiên tiến. Một lĩnh vực trọng tâm là phát triển công nghiệp dọc theo bờ biển phía đông, bao gồm kế hoạch chi 619 triệu baht để hỗ trợ đào tạo nghề. Bộ trưởng Công nghiệp Uttama Savanayana đánh giá việc nâng cao kỹ năng lao động là rất quan trọng trong dự án hành lang kinh tế phía đông trị giá 45 tỷ USD.

Với việc dân số trong độ tuổi lao động sẽ giảm còn khoảng 11% vào năm 2040, Giám đốc Ngân hàng Thế giới tại Đông Nam Á Ulrich Zachau nhận định: "Thách thức về giáo dục và đào tạo kỹ năng đặc biệt cấp bách. Một mặt, Thái Lan đang nhanh chóng già đi; mặt khác, nhu cầu công nhân lành nghề đang tăng mạnh trong một thế giới phát triển công nghệ hơn bao giờ hết".

Học sinh học vẹt, thiếu tư duy sáng tạo

Mức độ số hóa và sự thâm nhập của Internet giúp Thái Lan trở thành điểm đến hấp dẫn của các công ty công nghệ thông tin, theo Anip Sharma, phó chủ tịch phụ trách khu vực Đông Nam Á của cơ quan tư vấn giáo dục toàn cầu Parthenon-EY. "Tuy nhiên, đây không phải là nơi tuyệt vời để phát triển một sản phẩm", ông nói. Một trong những vấn đề lớn nhất là trình độ tiếng Anh - kỹ năng cốt lõi khi thực hiện chuyển đổi trong thời đại kỹ thuật số.

Nhà phát triển phần mềm kỳ cựu ở Thái Lan, ông Panutat Tejasen cho biết hầu hết sinh viên tốt nghiệp sử dụng phương pháp học vẹt, do đó thiếu kỹ năng tư duy phản biện cần thiết để phát triển các giải pháp phần mềm sáng tạo.

Công ty Art and Technology của Tejasen hiện thuê hơn 200 kỹ sư thiết kế phần mềm và phải trả 6 tháng lương cho mỗi nhân viên mới mà không nhận lại được lợi ích kinh doanh nào. "Chúng tôi trả tiền chỉ để dạy họ cách viết chương trình phần mềm có thể sử dụng được trước khi họ làm việc và kiếm tiền cho công ty", ông nói.

Natavudh Pungcharoenpong, chủ nhà xuất bản sách điện tử Ookbee có trụ sở tại Bangkok, đổ lỗi tư duy lỗi thời khiến công việc kinh doanh của ông trì trệ.

Việt Nam tốt hơn?

Sharma của Parthenon-EY chỉ ra các nước lân cận như Việt Nam đang làm tốt hơn trong việc khuyến khích tư duy mới, mặc dù kinh tế kém hơn. Theo ông, lịch sử chính trị phức tạp của Thái Lan không có lợi cho việc khuyến khích cải cách hệ thống giáo dục.

"Chúng ta có 20.000 quan chức không dạy học nhưng đang điều hành các trường. Con số này chỉ là 70 trong bộ giáo dục của Việt Nam", Bộ trưởng Teerakiat trả lời một cuộc phỏng vấn ngày 12/7, ám chỉ một trong những trở ngại chính đối với cải cách có thể chính là Bộ Giáo dục.', N'Hà Thu', CAST(N'2017-07-21 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB47', N'TL06', N'15 nghề lương cao, khát nhân lực có bằng cử nhân ở Mỹ
', N'BB47', N'Lương trung bình những ngành này trên 100.000 USD/năm, nhân lực trong 7 năm tới dự kiến cần hàng chục nghìn người, theo Cục thống kê Lao động Mỹ.
', N'1. Giám đốc điều hành
Điều hành kế hoạch, chỉ đạo hoặc điều phối ở cấp quản lý cao nhất.
Mức lương trung bình năm 2016: 181.210 USD.
Nhu cầu nhân lực dự kiến (đến năm 2024): 58.400 người.
Yêu cầu kinh nghiệm: 5 năm trở lên.
2. Quản lý hệ thống máy tính và thông tin
Xác định những mục tiêu về công nghệ thông tin của một tổ chức và chịu trách nhiệm hoàn thành mục tiêu đó.
Mức lương trung bình năm 2016: 135.800 USD.
Nhu cầu nhân lực dự kiến (đến năm 2024): 94.800 người.
Yêu cầu kinh nghiệm: 5 năm trở lên.
3. Quản lý kiến trúc và kỹ thuật
Lập kế hoạch, chỉ đạo và điều phối các hoạt động trong công ty kiến trúc và kỹ thuật.
Mức lương trung bình năm 2016: 134.730 USD.
Nhu cầu nhân lực dự kiến (đến năm 2024): 59.500 người.
Yêu cầu kinh nghiệm: 5 năm trở lên.
4. Quản lý Marketing
Xác định nhu cầu về các sản phẩm và dịch vụ được cung cấp bởi một công ty và các đối thủ cạnh tranh, đồng thời tìm kiếm khách hàng tiềm năng.
Mức lương trung bình năm 2016: 131.180 USD.
Nhu cầu nhân lực dự kiến (đến năm 2024): 64.200 người.
Yêu cầu kinh nghiệm: 5 năm trở lên.
5. Kỹ sư dầu khí
Thiết kế các thiết bị để khai thác dầu và khí một cách có lợi nhất.
Mức lương trung bình năm 2016 là: 128.230 USD.
Nhu cầu nhân lực dự kiến (đến năm 2024): 13.000 người.
Yêu cầu kinh nghiệm: Không.
6. Phi công
Điều khiển các máy bay chở hành khách hay hàng hóa.
Mức lương trung bình năm 2016: 127.820 USD.
Nhu cầu nhân lực dự kiến (đến năm 2024): 19.300 người.
Yêu cầu kinh nghiệm: Ít nhất 5 năm và qua đào tạo trung hạn tại chỗ.
7. Quản lý tài chính
Làm báo cáo tài chính, các hoạt động đầu tư trực tiếp và xây dựng chiến lược, kế hoạch cho mục tiêu tài chính dài hạn cho một tổ chức.
Mức lương trung bình năm 2016: 121.750 USD.
Nhu cầu nhân lực dự kiến (đến năm 2024): 169.300 người.
Yêu cầu kinh nghiệm: 5 năm trở lên.
8. Quản lý khoa học tự nhiên
Giám sát công việc của các nhà khoa học, hoạt động trực tiếp liên quan đến nghiên cứu và phát triển, phối hợp kiểm tra chất lượng và sản xuất.
Mức lương trung bình năm 2016 là: 119.850 USD.
Nhu cầu nhân lực dự kiến (đến năm 2024): 13.300 người.
Yêu cầu kinh nghiệm: 5 năm trở lên.
9. Quản lý bán hàng
Đặt ra mục tiêu bán hàng, phân tích dữ liệu và phát triển chương trình đào tạo cho các đại diện bán hàng của tổ chức.
Mức lương trung bình năm 2016: 117.960 USD.
Nhu cầu nhân lực dự kiến (đến năm 2024): 108.000 người.
Yêu cầu kinh nghiệm: Ít hơn 5 năm.
10. Quản lý bồi thường và trợ cấp
Lập kế hoạch , phát triển và giám sát các chương trình để xác định mức độ chi trả cho nhân viên của một tổ chức.
Mức lương trung bình năm 2016: 116.240 USD.
Nhu cầu nhân lực dự kiến (đến năm 2024): 6.000 người.
Yêu cầu kinh nghiệm: 5 năm trở lên.
11. Kỹ sư phần cứng máy tính
Giải quyết các vấn đề phát sinh trong phần cứng máy tính.
Mức lương trung bình năm 2016: 115.080 USD.
Nhu cầu nhân lực dự kiến (đến năm 2024): 18.400 người.
Yêu cầu kinh nghiệm: Không.
12. Quản lý thu mua
Lập kế hoạch, chỉ đạo và điều phối các hoạt động của nhân lực thu mua hàng hóa như nguyên vật liệu, sản phẩm và dịch vụ.
Mức lương trung bình năm 2016 là: 111.590 USD.
Nhu cầu nhân lực dự kiến (đến năm 2024): 17.900 người.
Yêu cầu kinh nghiệm: 5 năm trở lên.
13. Kỹ sư hàng không
Thiết kế máy bay, hệ thống động cơ và nghiên cứu khí động học của máy bay.
Mức lương trung bình năm 2016 là: 109.650 USD.
Nhu cầu nhân lực dự kiến (đến năm 2024): 20.700 người.
Yêu cầu kinh nghiệm: Không.
14. Quan hệ công chúng và quản lý gây quỹ
Lập kế hoạch và chỉ đạo việc tạo ra các tài liệu nhằm duy trì, nâng cao hình ảnh của khách hàng.
Mức lương trung bình năm 2016: 107.320 USD.
Nhu cầu nhân lực dự kiến (đến năm 2024): 27.100 người.
Yêu cầu kinh nghiệm: 5 năm trở lên.
15. Quản lý nhân sự
Giám sát quá trình tuyển dụng, phỏng vấn, tuyển chọn của tổ chức.
Mức lương trung bình năm 2016: 106.910 USD.
Nhu cầu nhân lực dự kiến (đến năm 2024): 46.600 người.
Yêu cầu kinh nghiệm: 5 năm trở lên.', N'Dương Tâm', CAST(N'2017-07-20 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB48', N'TL06', N'Cầu thủ Mỹ được giáo viên gửi thư xin lỗi sau 11 năm
', N'BB48', N'Lời xin lỗi vì đã coi thường giấc mơ của cậu học trò năm xưa khiến cộng đồng xúc động.
', N'Julian Edelman, người bắt bóng của đội bóng bầu dục New England Patriots (Mỹ), đã hoàn thành giấc mơ trở thành cầu thủ chuyên nghiệp, dù trước đây không phải ai cũng tin anh có thể làm được. 

Ngày 18/7, anh chia sẻ lên Twitter hình chụp bức thư nhận được từ một giáo viên cũ, người cảm thấy có lỗi khi từng khuyên anh nên đặt mục tiêu thực tế thay vì theo đuổi đam mê với bóng bầu dục. Điều may mắn là anh đã không nghe theo lời khuyên từ 11 năm trước, tuy nhiên giáo viên này rất muốn gửi lời xin lỗi muộn màng đến học trò cũ. 
Indy100 đăng lại bức thư được gửi ngày 14/6 với nội dung:

"Jules thân mến, tôi không chắc em sẽ nhớ tôi: Tôi là giáo viên lớp tiếng Anh 100 của em tại CSM mùa xuân năm 2006. 

Có vẻ như đã một nghìn năm trôi qua rồi, tôi vẫn muốn viết thư để xin lỗi em về một bình luận khiếm nhã của tôi vào học kỳ đó. Có lẽ em thậm chí còn không nhớ ra, nhưng tôi đã luôn cảm thấy thật tồi tệ về điều đó trong suốt nhiều năm. 

Em đã nói vài điều về việc tham gia giải đấu và tôi đã bảo hãy đặt ra những mục tiêu thực tế, về việc số người bước vào hàng ngũ cầu thủ chuyên nghiệp ít ỏi như thế nào... Tôi không nghĩ điều đó làm em bối rối, nhưng khi nhìn lại, tôi thấy thật kinh khủng, không phải vì em đã chứng minh tôi sai mà bởi vì tôi đã nêu ra một ý kiến phản giáo dục, ngầm coi thường đam mê của em dành cho bóng bầu dục. 

Tôi nghĩ thời điểm đó là vào đầu học kỳ, trước khi tôi biết về em, nhưng làm thế nào tôi lại có thể nghi ngờ sự bền bỉ và tính can đảm của em, tôi thật không hiểu nổi! Một lần nữa, tôi e là em thậm chí chưa từng nghĩ về nó thêm lần nào, nhưng dù sao tôi cũng xin lỗi vì đã nói những lời ngu ngốc khiến mình phải hối hận vào ngày hôm đó". 

Bức thư được Edelman đăng kèm chú thích: "Hãy đặt mục tiêu thật cao và làm bất cứ giá nào để đạt được chúng". Anh nhận được gần 54.000 lượt thích và hơn 17.000 lượt chia sẻ. ', N'Dương Tâm', CAST(N'2017-07-26 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB49', N'TL06', N'Chiến thuật làm bài thi IELTS Reading
', N'BB49', N'Cô Trà My, giáo viên Trung tâm IELTS Fighter hướng dẫn cách làm dạng True, False, Not given trong IELTS Reading.
', N'Format bài thi

Sau khi đọc một đoạn văn, bạn sẽ quyết định là true (đúng), false (sai), hay là not given (không đề cập tới) với các thông tin được đưa ra phía dưới. 
Nghĩa của True, False, Not given

True: Thông tin đúng và có trong bài đọc.

False: Thông tin đối ngược hoàn toàn với bài đọc.

Not given: Bài đọc không đề cập tới thông tin nên không thể xác định đáp án đúng sai.

Lưu ý: "True" nghĩa là giống hoàn toàn. Nếu nghĩa chỉ tương tự (similar) có nghĩa là False. "Not given" không đồng nghĩa với việc không có từ nào xuất hiện trong bài đọc. Nó đơn giản là thông tin trong bài đọc không đủ để trả lời câu hỏi.

Mẹo tránh bẫy của đề thi

Tìm từ khóa quan trọng để xác định thông tin của câu hỏi. Các từ như some, all, mainly, often, always and occasionally có thể làm thay đổi hoàn toàn nghĩa cả câu. Ví dụ: "Coca-Cola has always made its drinks in the U.S.A" sẽ có nghĩa khác với "Coca-Cola has mainly made its drinks in the U.S.A".

Cẩn thận với những động từ chính trong câu hỏi như suggest, claim, believe, know. Ví dụ: "The man claimed he was a British citizen", and "The man is a British citizen" là hai câu mang nghĩa khác nhau.

Đừng tìm từ giống chính xác với keywords trong bài văn. Bạn cần tìm từ đồng nghĩa (synonyms) vì đề thi rất ít khi dùng từ lặp lại.

Nếu không thấy thông tin cần tìm, vậy đáp án là "not given". Đừng tốn thời gian tìm cái không có.

Chiến thuật làm bài

Đọc kỹ các chỉ dẫn, câu hỏi, cố gắng hiểu ý toàn câu thay vì tìm ý chính. Sau đó, bạn tìm từ đồng nghĩa giống với các từ trong câu để xác định được phần chính xác chứa đáp án. Tiếp theo, bạn nối câu trả lời với phần chứa thông tin trong đoạn văn.

Tập trung vào câu hỏi một lần nữa và đọc phần chứa thông tin để xác định đáp án. Nhớ rằng ý nghĩa cần đúng chính xác với thông tin trong bài.

Gạch chân từ chứa thông tin để dễ dàng chọn đáp án. Nếu không tìm thấy thông tin, đánh dấu "not given" và sang câu tiếp theo. Hoặc nếu không thực sự chắc câu trả lời hoặc không tìm thấy câu trả lời, hãy đánh dấu "not given".

Ví dụ: “Chiles originate in South America and have been eaten for at least 9,500 years”.

1. Chiles come from South America

2. People began eating Chiles in the last few centuries

3. South Americans were the first people to start eating Chiles

Câu 1 là đáp án True. Từ đồng nghĩa "come from" được dùng để thay cho "originates".

Câu 2 là False vì là “9,500 years ago chứ không phải “a few 100 years ago”.

Câu 3 là Not given vì không có thông tin về về South Americans là người đầu tiên ăn Chiles.

', N'Bảo Lam', CAST(N'2017-06-21 02:19:06.000' AS DateTime))
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (N'BB50', N'TL06', N'Lâm Đồng tính mở trường trung học Mỹ ở Đà Lạt
', N'BB50', N'Tỉnh Lâm Đồng mong muốn trường nội trú Mỹ được mở ở TP Đà Lạt sẽ tạo điều kiện cho con em trong vùng được học theo "tiêu chuẩn Mỹ". 
', N'Đại diện tỉnh Lâm Đồng vừa có buổi làm việc với ông Trần Thắng, Chủ tịch Viện Văn hóa giáo dục Việt Nam tại Mỹ, người kết nối dự án mở trường trung học Mỹ tại TP Đà Lạt.

Ông Thắng cho biết, sau hơn 15 năm làm các dự án du học, ông mong muốn Việt Nam sẽ có một trường của Mỹ để học sinh có điều kiện học ngay tại quê hương, không phải vất vả du học nước ngoài. Phụ huynh cũng thuận lợi việc thăm con. Trong chuyến thăm Mỹ vừa qua, Thủ tướng Nguyễn Xuân Phúc gặp gỡ với nhóm người Việt làm giáo dục và đồng ý quan điểm làm giáo dục quốc tế để phát triển quan hệ Việt - Mỹ. 

Sau nhiều lần đi khảo sát khắp Hà Nội, TP HCM, Đà Nẵng, ông Thắng quyết định chọn Đà Lạt vì khí hậu lý tưởng và vị trí thuận lợi gần vùng biển Nha Trang. Đây là thành phố do người Pháp lập lên, với mục đích là nghỉ dưỡng. Điều may mắn là khi trình bày ý tưởng và điểm dự định mở trường, ông nhận được sự đồng ý của trường nội trú Marianapolis School tại tiểu bang Connecticut - tiểu bang có nhiều trường nội trú nổi tiếng nhất tại Mỹ.
Trình bày dự án với lãnh đạo tỉnh Lâm Đồng, ông Thắng cho biết khi trường trung học được mở, sẽ có 50% học sinh từ Mỹ sang du học, học sinh Việt Nam chiếm khoảng 30%. Số còn lại sẽ là con em người nước ngoài đang công tác tại Việt Nam và học sinh đến từ châu Á. Ðây chính là nét đặc biệt của trường nội trú để phát triển nền giáo dục quốc tế, thu hút học sinh khắp thế giới về Ðà Lạt.

Quy mô trường sẽ có 400 học sinh, học từ lớp 9 đến lớp 12 (mỗi khóa 100 học sinh/năm học). “Ở Mỹ, khối trung học sẽ trải qua 4 năm học. Học sinh Mỹ sang sẽ là cơ hội để trao đổi văn hóa, học hỏi kinh nghiệm. Những nhà ngoại giao, hay doanh nhân nước ngoài tại Việt Nam cũng rất muốn gửi trẻ lên Ðà Lạt", ông nói.

Dự án mở trường cần khoảng 20-25 ha đất với mức đầu tư 15-20 triệu USD, vừa xây dựng các khu chức năng, vừa có ký túc xá cho học sinh lưu trú, khu thể thao, vui chơi…, đáp ứng đúng tiêu chuẩn của các trường trung học nội trú tại Mỹ. "Chương trình giảng dạy và điều hành 100% là của Mỹ, dưới sự kiểm định của Bộ Giáo dục Việt Nam", ông Thắng nói thêm.

Ông Huỳnh Quang Long, Phó giám đốc Sở Giáo dục và Đào tạo Lâm Đồng, cho biết trước đây Đà Lạt từng có nhiều trường Pháp, nên mô hình trường nội trú không còn xa lạ. Khi thành lập, trường sẽ nằm tách biệt với đô thị, quy mô 400 học sinh toàn khóa là không lớn.

"Thu hút nhà đầu tư cũng như việc mở trường là không khó”, ông Long nói và cho biết sau này nếu đi vào thỏa thuận, phía Sở sẽ tham mưu cho tỉnh về việc thành lập trường. Đà Lạt hay Lâm Đồng rất cần một trường như vậy. Nhưng khi đầu tư vào giáo dục phải làm nghiêm túc và lâu dài", ông nói.

Lãnh đạo ngành giáo dục Lâm Đồng cũng đặt câu hỏi, sau trung học học sinh sẽ học ở đâu? Ông Trần Thắng cho biết đa số sẽ chọn hướng du học Mỹ vì cùng hệ thống giáo dục. Khi học hết trung học, các em chỉ cần nộp đơn để xét vào các trường đại học, không thi như Việt Nam và chỉ kiểm định tiếng Anh và Toán. 

Giám đốc Sở Tài Nguyên Môi trường Lâm Đồng, ông Nguyễn Ngọc Phúc ủng hộ mô hình trường trung học Mỹ tại Ðà Lạt. Ông nói trước năm 1975, thành phố có cơ sở đầu tư theo tiêu chuẩn nước ngoài. Bây giờ làm lại sẽ tạo thuận lợi vì thành phố an ninh, vệ sinh, môi trường rừng, cảnh quan tốt. Trường sẽ gồm cả giáo dục, thể thao, nội trú, nơi ở cho giáo viên.

"Ở Đà Lạt rất nhiều phụ huynh đầu tư cho việc học. Con em nông dân trồng cà phê vẫn gửi con đi TP HCM học trường nước ngoài, đó là cơ hội tuyển sinh khi mở trường", ông nói và cho biết địa phương có thể báo cáo Thủ tướng để xin phép làm.

Chánh văn phòng tỉnh Lâm Đồng, ông Phùng Khắc Đồng cho rằng, buổi làm việc với ông Trần Thắng là bước khởi đầu quan trọng để tỉnh có được một trường đào tạo nội trú "theo chuẩn Mỹ". "Tỉnh ủng hộ và sẵn sàng đề xuất lên các cấp để thực hiện", ông Đồng nói.

Thời gian tới, đại diện trường trung học của Mỹ và nhà đầu tư sẽ cùng đến Đà Lạt khảo sát, làm việc cụ thể để xúc tiến việc mở trường.', N'Duy Đoàn', CAST(N'2017-05-23 02:19:06.000' AS DateTime))
INSERT [dbo].[GiaoDien] ([IDGiaoDien], [Title], [Logo], [Header], [Footer]) VALUES (N'GD01', N'Tin nhanh VnExpress', NULL, N'Báo tiếng Việt nhiều người xem nhất', N'Uy tín-Chất lượng')
INSERT [dbo].[GiaoDien] ([IDGiaoDien], [Title], [Logo], [Header], [Footer]) VALUES (N'GD02', N'Tin tức 24h.com', NULL, N'Tin tức cập nhật nhanh nhất', N'Tin cậy-Cập nhật')
INSERT [dbo].[GiaoDien] ([IDGiaoDien], [Title], [Logo], [Header], [Footer]) VALUES (N'GD03', N'Pháp luật', NULL, N'Tin nóng mới nhất', N'Cơ quan chủ quản: Bộ tư pháp')
INSERT [dbo].[GiaoDien] ([IDGiaoDien], [Title], [Logo], [Header], [Footer]) VALUES (N'GD04', N'An ninh thủ đô', NULL, N'Chính xác-Nhanh chóng', N'Số 82-Lý Thường Kiệt-Hoàn Kiếm-Hà Nộ')
INSERT [dbo].[NguoiDung] ([Username], [Password], [HoTen], [Email], [Phonenumber], [MaQuyen], [ImagePro], [Address]) VALUES (N'Anh Minh', N'1', N'Trần Anh Minh', N'Trananhminh@gmail.com', N'0986888999', N'WR', N'Pro', N'Hà Nội')
INSERT [dbo].[NguoiDung] ([Username], [Password], [HoTen], [Email], [Phonenumber], [MaQuyen], [ImagePro], [Address]) VALUES (N'Anh Tú', N'1', N'Hoàng Anh Tú', N'Hoanganhtu@gmail.com', N'0986888999', N'WR', N'Pro', N'Bắc Ninh')
INSERT [dbo].[NguoiDung] ([Username], [Password], [HoTen], [Email], [Phonenumber], [MaQuyen], [ImagePro], [Address]) VALUES (N'Bảo Lam', N'1', N'Trần Bảo Lam', N'TranbaoLam@gmail.com', N'0986888999', N'WR', N'Pro', N'Đà Nẵng')
INSERT [dbo].[NguoiDung] ([Username], [Password], [HoTen], [Email], [Phonenumber], [MaQuyen], [ImagePro], [Address]) VALUES (N'Đoàn Loan', N'1', N'Đoàn Hoàng Loan', N'Doanhoangloan@gmail.com', N'0986888999', N'WR', N'Pro', N'Bình Dương')
INSERT [dbo].[NguoiDung] ([Username], [Password], [HoTen], [Email], [Phonenumber], [MaQuyen], [ImagePro], [Address]) VALUES (N'Đông Huyền', N'1', N'Trần Đông Huyền', N'Trandonghuyen@gmail.com', N'0986888999', N'WR', N'Pro', N'Nghệ An')
INSERT [dbo].[NguoiDung] ([Username], [Password], [HoTen], [Email], [Phonenumber], [MaQuyen], [ImagePro], [Address]) VALUES (N'Đức Hùng', N'1', N'Nguyễn Đức Hùng', N'Nguyenduchung@gmail.com', N'0986888999', N'WR', N'Pro', N'Bình Định')
INSERT [dbo].[NguoiDung] ([Username], [Password], [HoTen], [Email], [Phonenumber], [MaQuyen], [ImagePro], [Address]) VALUES (N'Dương Tâm', N'1', N'Trịnh Dương Tâm', N'Trinhduongtam@gmail.com', N'0986888999', N'WR', N'Pro', N'Đà Nẵng')
INSERT [dbo].[NguoiDung] ([Username], [Password], [HoTen], [Email], [Phonenumber], [MaQuyen], [ImagePro], [Address]) VALUES (N'Duy Đoàn', N'1', N'Lê Duy Đoàn', N'Leduydoan@gmail.com', N'0986888999', N'WR', N'Pro', N'HCM')
INSERT [dbo].[NguoiDung] ([Username], [Password], [HoTen], [Email], [Phonenumber], [MaQuyen], [ImagePro], [Address]) VALUES (N'Duy Khánh', N'1', N'Hoàng Duy Khánh', N'Hoangduykhanh', N'0986888999', N'WR', N'Pro', N'Hải Dương')
INSERT [dbo].[NguoiDung] ([Username], [Password], [HoTen], [Email], [Phonenumber], [MaQuyen], [ImagePro], [Address]) VALUES (N'Hà Thu', N'1', N'Hà Thị Thu', N'Hathithu@gmail.com', N'0986888999', N'WR', N'Pro', N'Thái Bình')
INSERT [dbo].[NguoiDung] ([Username], [Password], [HoTen], [Email], [Phonenumber], [MaQuyen], [ImagePro], [Address]) VALUES (N'Hoàng Thùy', N'1', N'Hoàng Bình Thùy', N'Hoangbinhthuy@gmail.com', N'0986888999', N'WR', N'Pro', N'Bắc Ninh')
INSERT [dbo].[NguoiDung] ([Username], [Password], [HoTen], [Email], [Phonenumber], [MaQuyen], [ImagePro], [Address]) VALUES (N'HongDuong', N'1', N'Lê Hồng Dương', N'Lehongduong@gmail.com', N'0986888999', N'AD', N'Pro', N'Hải Dương')
INSERT [dbo].[NguoiDung] ([Username], [Password], [HoTen], [Email], [Phonenumber], [MaQuyen], [ImagePro], [Address]) VALUES (N'Kỳ Duyên', N'1', N'Nguyễn Kỳ Duyên', N'Nguyenkyduyen@gmail.com', N'0986888999', N'WR', N'Pro', N'Bắc Ninh')
INSERT [dbo].[NguoiDung] ([Username], [Password], [HoTen], [Email], [Phonenumber], [MaQuyen], [ImagePro], [Address]) VALUES (N'Lâm Thỏa', N'1', N'Trần Lâm Thỏa', N'Tranlamthoa@gmail.com', N'0986888999', N'WR', N'Pro', N'Đà Nẵng')
INSERT [dbo].[NguoiDung] ([Username], [Password], [HoTen], [Email], [Phonenumber], [MaQuyen], [ImagePro], [Address]) VALUES (N'Mạnh Hùng', N'1', N'Đình Mạnh Hùng', N'Dinhmanhhung@gmail.com', N'0986888999', N'WR', N'Pro', N'Thái Bình')
INSERT [dbo].[NguoiDung] ([Username], [Password], [HoTen], [Email], [Phonenumber], [MaQuyen], [ImagePro], [Address]) VALUES (N'Minh Trí', N'1', N'Nguyễn Minh Trí', N'Nguyenminhtri@gmail.com', N'0986888999', N'WR', N'Pro', N'Nghệ An')
INSERT [dbo].[NguoiDung] ([Username], [Password], [HoTen], [Email], [Phonenumber], [MaQuyen], [ImagePro], [Address]) VALUES (N'NamTrong', N'1', N'Nguyễn Trọng Nam', N'Nguyentrongnam@gmail.com', N'0986888999', N'AD', N'Pro', N'Hà Nội')
INSERT [dbo].[NguoiDung] ([Username], [Password], [HoTen], [Email], [Phonenumber], [MaQuyen], [ImagePro], [Address]) VALUES (N'Nguyễn Đông', N'1', N'Nguyễn Hoa Đông', N'Nguyenhoadong@gmail.com', N'0986888999', N'WR', N'Pro', N'HCM')
INSERT [dbo].[NguoiDung] ([Username], [Password], [HoTen], [Email], [Phonenumber], [MaQuyen], [ImagePro], [Address]) VALUES (N'Phúc Hưng', N'1', N'Phúc Hưng', N'Phuchung@gmail.com', N'0986888999', N'WR', N'Pro', N'Hải Dương')
INSERT [dbo].[NguoiDung] ([Username], [Password], [HoTen], [Email], [Phonenumber], [MaQuyen], [ImagePro], [Address]) VALUES (N'Phước Tuấn', N'1', N'Lê Phước Tuấn', N'Lephuoctuan@gmail.com', N'0986888999', N'WR', N'Pro', N'HCM')
INSERT [dbo].[NguoiDung] ([Username], [Password], [HoTen], [Email], [Phonenumber], [MaQuyen], [ImagePro], [Address]) VALUES (N'Phương Đông', N'1', N'Nguyễn Phương Đông', N'Nguyenphuocdong@gmail.com', N'0986888999', N'WR', N'Pro', N'Thái Bình')
INSERT [dbo].[NguoiDung] ([Username], [Password], [HoTen], [Email], [Phonenumber], [MaQuyen], [ImagePro], [Address]) VALUES (N'Phương Nguyên', N'1', N'Nguyễn Xuân Phương', N'Nguyenxuanphuong@gmail.com', N'0986888999', N'WR', N'Pro', N'Bắc Ninh')
INSERT [dbo].[NguoiDung] ([Username], [Password], [HoTen], [Email], [Phonenumber], [MaQuyen], [ImagePro], [Address]) VALUES (N'Quỳnh Trang', N'1', N'Nguyễn Thị Quỳnh Trang', N'Nguyenthiquynhtrang@gmail.com', N'0986888999', N'WR', N'Pro', N'Đà Nẵng')
INSERT [dbo].[NguoiDung] ([Username], [Password], [HoTen], [Email], [Phonenumber], [MaQuyen], [ImagePro], [Address]) VALUES (N'Thanh Thư', N'1', N'Lê Thanh Thư', N'Lethanhthu@gmail.com', N'0986888999', N'WR', N'Pro', N'Nghệ An')
INSERT [dbo].[NguoiDung] ([Username], [Password], [HoTen], [Email], [Phonenumber], [MaQuyen], [ImagePro], [Address]) VALUES (N'TrongTrung', N'1', N'Nguyễn Trọng Trung', N'Nguyentrongtrung@gmail.com', N'0986888999', N'AD', N'Pro', N'Hà Nội')
INSERT [dbo].[NguoiDung] ([Username], [Password], [HoTen], [Email], [Phonenumber], [MaQuyen], [ImagePro], [Address]) VALUES (N'VanHop', N'1', N'Lê Văn Hợp', N'Levanhop@gmail.com', N'0986888999', N'AD', N'Pro', N'Nghệ An')
INSERT [dbo].[PhanQuyen] ([MaQuyen], [TenQuyen]) VALUES (N'AD', N'Admin')
INSERT [dbo].[PhanQuyen] ([MaQuyen], [TenQuyen]) VALUES (N'US', N'User ')
INSERT [dbo].[PhanQuyen] ([MaQuyen], [TenQuyen]) VALUES (N'WR', N'Writer ')
INSERT [dbo].[QuangCao] ([MaQC], [ImageQC], [Linkcontent]) VALUES (N'QC01      ', N'QC01      ', NULL)
INSERT [dbo].[QuangCao] ([MaQC], [ImageQC], [Linkcontent]) VALUES (N'QC02      ', N'QC02      ', NULL)
INSERT [dbo].[QuangCao] ([MaQC], [ImageQC], [Linkcontent]) VALUES (N'QC03      ', N'QC03      ', NULL)
INSERT [dbo].[QuangCao] ([MaQC], [ImageQC], [Linkcontent]) VALUES (N'QC04      ', N'QC04      ', NULL)
INSERT [dbo].[QuangCao] ([MaQC], [ImageQC], [Linkcontent]) VALUES (N'QC05      ', N'QC05      ', NULL)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL01', N'Trang chủ')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL02', N'Thời sự')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL03', N'Kinh doanh')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL04', N'Startup')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL05', N'Thể thao')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL06', N'Giáo dục')
ALTER TABLE [dbo].[BaiBao]  WITH CHECK ADD  CONSTRAINT [FK_BaiBao_NguoiDung] FOREIGN KEY([Username])
REFERENCES [dbo].[NguoiDung] ([Username])
GO
ALTER TABLE [dbo].[BaiBao] CHECK CONSTRAINT [FK_BaiBao_NguoiDung]
GO
ALTER TABLE [dbo].[BaiBao]  WITH CHECK ADD  CONSTRAINT [FK_BaiBao_TheLoai] FOREIGN KEY([MaTheLoai])
REFERENCES [dbo].[TheLoai] ([MaTheLoai])
GO
ALTER TABLE [dbo].[BaiBao] CHECK CONSTRAINT [FK_BaiBao_TheLoai]
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_PhanQuyen] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[PhanQuyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [FK_NguoiDung_PhanQuyen]
GO
USE [master]
GO
ALTER DATABASE [DocBaoOnlineFinal] SET  READ_WRITE 
GO
