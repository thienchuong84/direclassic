/*
SQLyog Community v12.2.1 (64 bit)
MySQL - 10.1.21-MariaDB : Database - dire
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


USE `ntchuong_dire`;

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `categories` */

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(10) unsigned NOT NULL DEFAULT '1',
  `description` text COLLATE utf8_unicode_ci,
  `img` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `products` */

insert  into `products`(`id`,`name`,`category_id`,`description`,`img`,`is_deleted`,`price`) values 
(1,'Lotion tinh dầu bưởi',1,'+ Lotion bưởi phục hồi tóc hư tổn Dirê-Classic :\r\n☆ Phần nước tinh khiết có trong sản phẩm hỗ trợ làm tóc ẩm mềm, dễ dàng hấp thu dưỡng chất, đồng thời giúp các hoạt chất dễ dàng khuếch tán trong quá trình massage.\r\n☆ Tinh dầu vỏ bưởi thấm sâu vào da đầu và từng sợi tóc, kích thích các nang lông hoạt động, giúp tóc mọc nhanh hơn, đồng thời nuôi dưỡng sợi tóc mạnh khỏe, ngăn chặn hiện tượng rụng tóc.\r\n☆ Tinh dầu chanh là công thức bổ sung mạnh mẽ cho tóc khoẻ đẹp\r\n☆ Vitamin E và B5 dưỡng ẩm cho tóc, đồng thời tạo nên một lớp màng bao bọc lấy từng sợi tóc, từ đó bảo vệ mái tóc không bị xơ, rối, ngăn chặn hiện tượng chẻ ngọn, phục hồi cấu trúc sợ tóc. Đẩy lùi hiện tượng gãy rụng hiệu quả.\r\n☆ Dầu argan thấm vào từng sợi tóc trong quá trình massage giúp dưỡng tóc mềm mượt và óng ả, đồng thời là một lớp đệm khóa ẩm, giúp lưu giữ lại các dưỡng chất trên da đầu và tóc lâu hơn (tinh dầu vỏ bưởi, vitamin E, vitamin B5).\r\n☆ Sản phẩm lotion bưởi là công thức độc đáo được Dirê-Classic sáng tạo dựa trên những công dụng và tính năng đặc biệt mà tinh dầu vỏ bưởi có, cùng với các loại dầu nền (dầu argan), nước tinh khiết và các loại vitamin có lợi cho tóc.\r\n☆ Dưỡng ẩm cho tóc, bảo vệ tóc trước các tác nhân gây xơ rối và gãy rụng, phục hồi tóc hư tổn.\r\n+ Dưỡng tóc chắc khỏe, ngăn ngừa rụng tóc và kích thích mọc tóc.\r\n+ Hương thơm dịu nhẹ mang lại cảm giác thư giãn, thoải mái.\r\n+ Đặc biệt, lotion bưởi còn giúp cho tóc vào nếp và mềm mượt óng ả cả ngày.\r\n+ Hướng dẫn sử dụng:\r\n☆ Gội sạch tóc, lắc đều, lấy 1 lượng vừa đủ lên tóc, đặc biệt phần chân tóc và phần tóc hư tổn.\r\n☆ Dùng tay massage nhẹ nhàng từ 5-10 phút để tinh chất thấm sâu vào da đầu và tóc.\r\n☆ Thoa đều lotion lên tóc lần nữa và để khô tự nhiên, không xả lại với nước. \r\n☆ Dùng hằng ngày.\r\n+ Hàng đạt chuẩn thuần thiên nhiên (100% Organic) nhé !!!','lotion_tinh_dau_buoi_01.jpg|lotion_tinh_dau_buoi_02.jpg|lotion_tinh_dau_buoi_03.jpg|lotion_tinh_dau_buoi_04.jpg|lotion_tinh_dau_buoi_05.jpg',0,130000),
(2,'Lotion dừa tinh khiết',1,'DẦU DỪA THỦ CÔNG & DẦU DỪA NGUYÊN CHẤT TINH KHIẾT\r\n☆ Dầu dừa thủ công : còn đường, còn độ ẩm, và một phần đường, protein, dầu bị cháy nên vàng và mùi khét nặng hoặc nhẹ, nhanh bị chua, khi thoa lên da thẩm thấu vào da chậm, lâu. Chất lượng dầu dừa thủ công thì không ổn định, nguồn gốc không rõ ràng.\r\n☆ Dầu dừa nguyên chất tinh khiết Dirê-Classic : lọc tách dầu bằng máy ly tâm và kỹ thuật ép lạnh, thu được duy nhất dầu dừa nguyên chất, loại bỏ đường, bơ, nước. Đây là loại dầu dừa tốt nhất được sản xuất theo quy trình khép kín và được kiểm soát chặt chẽ để đảm bảo chất lượng sản phẩm luôn tinh khiết với hương thơm nhẹ nhàng tự nhiên.\r\n+ Kỹ thuật ép lạnh có gì nổi bật???\r\nTrong miếng cơm dừa còn tươi có dầu dừa và rất nhiều thành phần khác (Nước, bơ dừa, bột dừa, sơ cơm dừa…), máy ly tâm giúp tách hoàn toàn được dầu dừa khỏi những thành phần khác mà không làm thay đổi chất lượng của dầu dừa tinh khiết : dầu dừa vẫn có mùi thơm tươi nhẹ nhàng, màu trắng tinh khiết của miếng cơm dừa trắng. Chất lượng dầu dừa không bị giảm đi so với các phương pháp sản xuất khác: phương pháp nấu thủ công dùng nhiệt độ (dầu chiên đi chiên lại nhiều thì bị vàng càng nhiều).\r\n+ Điểm khác biệt của dầu dừa ép lạnh với dầu dừa nấu thủ công truyền thống???\r\nDầu dừa nấu thủ công dùng nhiệt để chưng cất. Nhược điểm của dầu dừa nấu thủ công là vẫn giữ nguyên lượng đường trong thành phẩm nên sẽ khiến dầu dừa khó thẩm thấu vào da, làm giảm khả năng làm đẹp. Đồng thời một số chất trong dầu dừa bị mất do ảnh hưởng của nhiệt độ\r\nCòn đối với kỹ thuật ép lạnh, nhờ máy quay li tâm thì lượng đường từ trong dầu dừa sẽ bị tách riêng theo nước, cho ra thành phẩm là dầu dừa tinh khiết không chứa đường, giúp phát huy tối đa hiệu quả làm đẹp và chăm sóc sức khoẻ. Dầu dừa ép lạnh còn gọi là dầu dừa không đường\r\n+ Ngoài ra, công ty duy nhất sử dụng dầu dừa kết hợp với các nguyên liệu từ thiên nhiên khác để tạo nên các sản phẩm từ dừa vô cùng phong phú.\r\n☆ Hàng đạt chuẩn thuần thiên nhiên (100% Organic) nhé !!!','lotion_dua_tinh_khiet_01.jpg|lotion_dua_tinh_khiet_02.jpg|lotion_dua_tinh_khiet_03.jpg|lotion_dua_tinh_khiet_04.jpg|lotion_dua_tinh_khiet_05.jpg',0,80000),
(3,'Lipmate 2 in 1 thiên nhiên',1,'#SON_LÌ_CỦA_DIRÊ-CLASSIC_CÓ_GÌ???#\r\n#TẠI_SAO_PHẢI_CHỌN_DIRÊ-CLASSIC???#\r\n☆ Có lẽ chúng ta không cần phải nói nhiều về nhu cầu son của phái đẹp.\r\nSon đã và đang là người bạn không thể thiếu của phái đẹp chúng ta. Mỗi cây son mang một màu sắc và các tính riêng cho người sử dụng. Tuy nhiên ngày nay với các dòng son công nghiệp đã tạo ra nghi ngờ, lo ngại cho các cô gái về vấn đề chì cũng như các chất hóa học trong son gây ảnh hưởng tới môi của mình. Với son lì cao cấp Dirê-Classic bạn sẽ không cân lo nghĩ về vấn đề son chứa chì gây thâm môi hay các chất hóa học làm khô môi của bạn nữa, vì sao ư??? \r\n☆ Vâng chính bởi Dirê-Classic là công ty sản xuất mỹ phẩm với nguyên liệu hoàn toàn từ tự nhiên và có nguồn gốc rõ ràng kèm theo đó là với công nghệ máy móc hiện đại cũng là điều kiện để tạo ra một sản phẩm cực kỳ ưng ý dành cho các bạn. Cùng với đó là đội ngũ nghiên cứu kinh nghiệm sẽ tạo ra cho bạn các sản phẩm có thể chỉ các bạn mới có.\r\n☆ Son lì của Dirê-Classic được tạo ra từ các thành phần như: \r\n•☆ Dầu cám gạo, dầu hạnh nhân, dầu jojoba các loại dầu có tác dụng như kem dưỡng môi, giúp môi của bạn mềm mại, căng mọng chỉ trong 1 tuần.\r\n•☆☆ Màu khoáng có nguồn gốc từ nhiều lớp của khoáng đá núi lửa và các chất tạo màu tự nhiên, màu sắc tự nhiên có chứa khoáng chất tư nhiên an toàn có thể ăn được. Ngoài ra nàu khoáng mỹ có màu tươi sáng và có rất nhiều màu cơ bản, và đặc biết KHÔNG GÂY HẠI CHO MÔI, dễ làm sạch….\r\n•☆☆☆ Sáp ong, sáp candellila, Sáp carnauba giúp son cứng và rắn hơn, không còn tình trạng son chảy nước nữa.\r\n•☆☆☆ Bơ avocado giúp cung cấp nước cho môi, giúp môi luôn mềm mượt mịn màng dù cả trong trời nắng hay khói bụi của môi trường…\r\n•☆☆☆ Lanolin (mỡ cừu) dùng để điều trị làn da môi nứt nẻ, có công dụng giống sáp môi cho mùa đông.\r\n•☆☆☆ Hydrogenated Polyisobutene là chất lỏng không màu giúp cho cây son mềm mại hơn và giúp môi không bị khô khi đánh son.\r\n•☆☆☆ Octyldodecanal có tác dụng làm mềm da và cũng là chất dung môi làm tan màu khoáng trong son\r\nThêm cái nữa để bạn không cần suy nghĩ khi đặt sản phẩm son lì cao cấp Dirê-Classic nữa nè.\r\n•☆☆☆☆ Với Nano Titan thì môi của bạn sẽ được bảo vệ dưới ánh nắng mặt trời và các tác động của môi trường bên ngoài.…. \r\n•☆☆☆☆ Cùng với mùi hương yêu thích của bạn sẽ tạo ra một cây son mang chính thương hiệu và sắc riêng của bạn.\r\n•☆☆☆☆ Một bí mật nhỏ nữa là son lì Dirê-Classic có thêm một đầu son dưỡng phía dưới thỏi son, giúp cho các bạn nữ thoải mái và tự tin hơn nhé.\r\n☆☆Dirê-Classic _ Người bạn đồng hành của phái đẹp☆☆','lipmate_2_in_1_01.jpg|lipmate_2_in_1_02.jpg|lipmate_2_in_1_03.jpg|lipmate_2_in_1_04.jpg|lipmate_2_in_1_05.jpg|lipmate_2_in_1_06.jpg|lipmate_2_in_1_07.jpg|lipmate_2_in_1_08.jpg',0,220000),
(4,'Son dưỡng Dừa màu khoáng tự nhiên',1,'Hiện nay trên thị trường đang tràn lan các dòng Son Fake, Son kém chất lượng cũng như nhiều loại Son Lì đang là HOT thì LƯỢNG CHÌ trong son cực kỳ nhiều, dẫn đến việc môi bị thâm, khô, nứt nẻ thiếu sức sống. Vì vậy công ty Thiên Nhiên Nhiệt Đới Dirê-Classic với công nghệ phòng LAB đã cho ra đời Son dưỡng DỪA tinh dầu THIÊN NHIÊN có MÀU KHOÁNG TỰ NHIÊN đáp ứng nhu cầu cho phái đẹp, bao gồm các thành phần :\r\n☆ Dầu dừa giàu Axit Lauric kháng khuẩn, kháng nấm, đặc trị khô môi nứt nẻ\r\n☆ Dầu bơ, dầu hạt nho, sáp ong giúp giữ ẩm cho môi, dưỡng môi khoẻ mạnh, tránh các tác nhân xấu từ môi trường xung quanh.\r\n☆☆ Vitamin A+E giúp môi căng hồng, bóng mịn\r\n☆☆☆ Tinh dầu Hoa Hồng, Ngọc Lan Tây, Cam đem lại hương thơm thật & kéo dài, giúp thư giãn\r\n☆☆☆☆ Màu khoáng làm son được FDA (Cục quản lý dược & thực phẩm Hoa Kỳ) kiểm duyệt an toàn cho môi (Màu nhập khẩu).\r\n☆ Note : tính chất son đặc trị nên màu son sẽ nhẹ nhàng, vì nguyên liệu dưỡng cao hơn so với màu khoáng.\r\n☆ Còn chần chừ gì nữa mà không nhanh tay rinh ngay em đó về đội của chúng ta thôi. Hàng đạt chuẩn thuần thiên nhiên (100% Organic) nhé !!!','son_duong_dua_01.jpg|son_duong_dua_02.jpg|son_duong_dua_03.jpg|son_duong_dua_04.jpg|son_duong_dua_05.jpg|son_duong_dua_06.jpg|son_duong_dua_07.jpg|son_duong_dua_08.jpg|son_duong_dua_09.jpg',0,85000),
(5,'Dưỡng mi Dừa tinh dầu Bưởi',1,'☆ Bạn đã từng ao ước sở hữu một hàng mi cong, dài & dày đầy gợi cảm một cách TỰ NHIÊN mà không cần phải nối mi giả? Hàng ngày bạn đang xài MASCARA màu để MAKEUP và luôn lo lắng về những mỹ phẩm đầy HÓA CHẤT đang bán tràn lan trên thị trường?\r\n☆ Vấn đề của bạn giờ đây sẽ được giải quyết nhanh chóng với Mascara DỪA tinh dầu VỎ BƯỞI của công ty Thiên Nhiên Nhiệt Đới Dirê-Classic. Với sự kết hợp tuyệt vời giữa Tinh Dầu Dừa Nguyên Chất và Tinh Dầu Bưởi Nguyên Chất tạo nên một tác động kép cho đôi mi mắt của bạn. Tinh dầu vỏ bưởi được thiên nhiên ưu ái cho khả năng dưỡng tóc cũng như đôi mi dài cong vút tự nhiên đầy gợi cảm của chị em phụ nữ. Dưỡng mi bằng Mascara DỪA tinh dầu VỎ BƯỞI là giải pháp không tốn nhiều thời gian và tiền bạc mà mang lại hiểu quả cao trong 7-10 ngày và đặc biệt là vô cùng an toàn cho sức khỏe.\r\n☆ Hàng đạt chuẩn thuần thiên nhiên (100% Organic). Hãy nhanh tay rinh em vào bộ sưu tập phong cách của bạn nhé!','duong_mi_dua_01.jpg|duong_mi_dua_02.jpg|duong_mi_dua_03.jpg|duong_mi_dua_04.jpg',0,55000),
(6,'Son dưỡng Dừa thiên nhiên',1,'# Hãy_nghe_son_dưỡng_Dirê-Classic_thể_hiện_mình #\r\n☆ Song hành cùng cây son lì xinh xắn, màu sắc tươi trẻ thì cây son dưỡng lại là bí quyết để các nàng có một bờ môi mềm mại, hồng hào không bị khô da. Nhu cầu 2 cây son này trên thị trường cứ như là đôi bạn thân vậy không thể tách rời được.\r\n☆ Bạn đang kinh doanh các dòng son lì khô, son kem và đang muốn tìm một dòng son dưỡng tốt nhất cho khách hàng của mình thì hãy đến với Dirê-Classic nha. Chúng tôi tự hào mang đến cho bạn dòng sản phẩm son dưỡng tốt nhất, thường thì chất lượng tốt phải song hành cùng giá cao nhưng bên mình rất chi là ưu ái các bạn luôn chỉ đưa ra mức giá cạnh trạnh hiện đang có trên thị trường thôi.\r\n☆ Để chứng minh cho các bạn thấy vì sao son dưỡng của Dirê-Classic lại tốt nhất thì mình sẽ nêu các rõ các thành phần các nguyên liệu có trong cây son dưỡng nha.\r\n☆ Đầu tiên phải kể đến dầu dừa, dầu dừa giúp tẩy trang các son con vướng lại trên môi và dưỡng cho môi mềm mịn hơn\r\n☆ Dầu quả bơ được nhập khẩu từ Tây Ban Nha giúp môi mềm mại và mịn màng hơn nữa nó còn là chất dưỡng ẩm và bảo vệ môi khổi nứt nẻ\r\n☆ Dầu hạnh nhân thì sẽ giúp môi hồng hào và mềm mịn\r\nHết nguyên liệu dầu thì sang nguyên liệu bơ\r\n☆☆ Bơ shea được nhập khẩu từ Mỹ nha các bạn sẽ giúp dưỡng ẩm, giúp môi không bị khô và nứt nẻ\r\nThêm nữa mỡ cừu hay lanolin giúp môi tránh bị nứt nẻ vào mùa đông\r\n☆☆ Bơ avocado với bơ này nó sẽ bảo vệ làn môi của bạn dưới ánh nắng trực tiếp và các khói bụi ô nhiễm của môi trường.\r\n☆☆☆ Và thành phần không thể thiếu để tạo ra một cây son cứng cáp là các loại sáp như: Sáp ong, Sáp candellila giúp cho cây son rắn hơn, mềm mại và tạo mùi thơn dễ chịu cho cây son\r\n☆☆☆☆ Còn chần chừ gì nữa mà không nhanh tay rinh ngay em đó về đội của chúng ta thôi. Hàng đạt chuẩn thuần thiên nhiên (100% Organic) nhé !!!','son_duong_dua_thien_nhien_01.jpg|son_duong_dua_thien_nhien_02.jpg|son_duong_dua_thien_nhien_03.jpg|son_duong_dua_thien_nhien_04.jpg|son_duong_dua_thien_nhien_05.jpg|son_duong_dua_thien_nhien_06.jpg|son_duong_dua_thien_nhien_07.jpg|son_duong_dua_thien_nhien_08.jpg',0,40000);

/*Table structure for table `todos` */

DROP TABLE IF EXISTS `todos`;

CREATE TABLE `todos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8_unicode_ci,
  `completed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `todos` */

insert  into `todos`(`id`,`description`,`completed`) values 
(1,'Go to the store',1),
(2,'finish up screencast',0),
(3,'clean house',1),
(4,'move recording',1);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`) values 
(1,'chuong'),
(2,'khoa'),
(3,'Lam'),
(4,'chuong2'),
(5,'chuong4'),
(6,'chuong5'),
(7,'asd'),
(8,'asd'),
(9,'dfghgf'),
(10,'tram'),
(11,'binh'),
(12,'tram'),
(13,'chuong9'),
(14,'chuong'),
(15,'chuong'),
(16,'chuong'),
(17,'chuong');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
