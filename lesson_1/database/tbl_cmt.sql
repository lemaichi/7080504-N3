-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 18, 2023 lúc 03:11 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `07_humg`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cmt`
--

CREATE TABLE `tbl_cmt` (
  `cmt_id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_cmt`
--
ALTER TABLE `tbl_cmt`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `cate_id` (`cate_id`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_cmt`
--
ALTER TABLE `tbl_cmt`
  ADD CONSTRAINT `tbl_cmt_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `tbl_news` (`news_id`),
  ADD CONSTRAINT `tbl_cmt_ibfk_2` FOREIGN KEY (`cate_id`) REFERENCES `tbl_category` (`cate_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
