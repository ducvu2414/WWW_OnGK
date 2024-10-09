-- --------------------------------------------------------
-- Máy chủ:                      127.0.0.1
-- Server version:               10.11.7-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Phiên bản:           12.8.0.6935
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for quanlydienthoai
CREATE DATABASE IF NOT EXISTS `quanlydienthoai` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `quanlydienthoai`;

-- Dumping structure for table quanlydienthoai.dienthoai
CREATE TABLE IF NOT EXISTS `dienthoai` (
  `MADT` int(11) NOT NULL,
  `TENDT` varchar(100) NOT NULL,
  `NAMSANXUAT` year(4) DEFAULT NULL,
  `CAUHINH` text DEFAULT NULL,
  `MANCC` int(11) DEFAULT NULL,
  `HINHANH` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MADT`),
  KEY `MANCC` (`MANCC`),
  CONSTRAINT `dienthoai_ibfk_1` FOREIGN KEY (`MANCC`) REFERENCES `nhacungcap` (`MANCC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table quanlydienthoai.dienthoai: ~3 rows (approximately)
INSERT INTO `dienthoai` (`MADT`, `TENDT`, `NAMSANXUAT`, `CAUHINH`, `MANCC`, `HINHANH`) VALUES
	(1, 'Samsung Galaxy S24 Plus 12GB 256GB', '2024', 'Samsung Galaxy S24 Plus có màn hình 6.7 inch, với tấm nền Dynamic AMOLED 2X ', 2, 'samsung-galaxy-s24-plus.webp'),
	(2, 'Samsung Galaxy S23 Ultra 12GB 512GB', '2023', 'Samsung Galaxy S23 Ultra 12GB 512GB tạo nên đột phá mạnh mẽ về mặt hiệu năng khi được trang bị vi xử lý Snapdragon 8 Gen 2 vượt trội cùng 12GB bộ nhớ RAM', 2, 'samsung-s23-ulatra_2_.webp'),
	(3, 'Iphone 16', '2024', 'Titan', 1, 'iphone-16-xanh-luu-ly.webp');

-- Dumping structure for table quanlydienthoai.nhacungcap
CREATE TABLE IF NOT EXISTS `nhacungcap` (
  `MANCC` int(11) NOT NULL,
  `TENNHACC` varchar(100) NOT NULL,
  `DIACHI` varchar(200) DEFAULT NULL,
  `SODIENTHOAI` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`MANCC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table quanlydienthoai.nhacungcap: ~2 rows (approximately)
INSERT INTO `nhacungcap` (`MANCC`, `TENNHACC`, `DIACHI`, `SODIENTHOAI`) VALUES
	(1, 'Iphone', 'cellphones Cong Hoa', '0123456789'),
	(2, 'Samsung', 'cellphones Tan Phu', '0789456123');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
