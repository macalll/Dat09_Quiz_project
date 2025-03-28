-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th3 28, 2025 lúc 04:08 AM
-- Phiên bản máy phục vụ: 9.1.0
-- Phiên bản PHP: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quiz_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `answers`
--

DROP TABLE IF EXISTS `answers`;
CREATE TABLE IF NOT EXISTS `answers` (
  `answer_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `question_id` int UNSIGNED NOT NULL,
  `answer_text` text NOT NULL,
  `is_correct` tinyint NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`answer_id`),
  KEY `answers_question_id_foreign` (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `answers`
--

INSERT INTO `answers` (`answer_id`, `question_id`, `answer_text`, `is_correct`, `createdAt`, `updatedAt`) VALUES
(84, 22, '11', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(85, 22, '10', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(86, 22, '16', 1, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(87, 22, '17', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(88, 23, '2', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(89, 23, '6', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(90, 23, '10', 1, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(91, 23, '12', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(92, 24, '3', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(93, 24, '4', 1, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(94, 24, '5', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(95, 24, '6', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(96, 25, '40', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(97, 25, '42', 1, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(98, 25, '44', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(99, 25, '46', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(100, 26, '15 cm', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(101, 26, '20 cm', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(102, 26, '25 cm', 1, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(103, 26, '30 cm', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(104, 27, 'Có', 1, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(105, 27, 'Không', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(106, 27, 'Chưa xác định', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(107, 27, 'Không thể xác định', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(108, 28, '3', 1, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(109, 28, '4', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(110, 28, '5', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(111, 28, '6', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(112, 29, '7', 1, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(113, 29, '-7', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(114, 29, '0', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(115, 29, '14', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(116, 30, '0.74', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(117, 30, '0.75', 1, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(118, 30, '0.76', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(119, 30, '0.80', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(120, 31, 'x > 2', 1, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(121, 31, 'x < 2', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(122, 31, 'x = 2', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(123, 31, 'x > 0', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(124, 32, '3x^2 - 10x + 2', 1, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(125, 32, '2x^3 - 5x + 1', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(126, 32, '4x - 6', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(127, 32, 'x^2 + 2x - 5', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(128, 33, 'x = 3', 1, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(129, 33, 'x = -3', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(130, 33, 'x = 6', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(131, 33, 'x = 9', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(132, 34, '154 cm²', 1, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(133, 34, '144 cm²', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(134, 34, '164 cm²', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(135, 34, '180 cm²', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(136, 35, '5050', 1, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(137, 35, '5000', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(138, 35, '4950', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(139, 35, '5100', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(140, 36, 'x = 97', 1, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(141, 36, 'x = 100', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(142, 36, 'x = 99', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(143, 36, 'x = 95', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(144, 37, '21', 1, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(145, 37, '20', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(146, 37, '19', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(147, 37, '22', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(148, 38, '150 km', 1, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(149, 38, '140 km', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(150, 38, '160 km', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(151, 38, '120 km', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(152, 39, '(2, 1)', 1, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(153, 39, '(1, 2)', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(154, 39, '(0, 5)', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(155, 39, '(5, 0)', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(156, 40, '8', 1, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(157, 40, '9', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(158, 40, '10', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(159, 40, '7', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(160, 41, '400.000 VNĐ', 1, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(161, 41, '420.000 VNĐ', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(162, 41, '380.000 VNĐ', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(163, 41, '410.000 VNĐ', 0, '2025-03-27 18:42:59', '2025-03-27 18:42:59'),
(164, 1, '5', 0, '2025-03-27 18:51:12', '2025-03-27 18:51:12'),
(165, 1, '1', 0, '2025-03-27 18:51:12', '2025-03-27 18:51:12'),
(166, 1, '4', 1, '2025-03-27 18:51:12', '2025-03-27 18:51:12'),
(167, 1, '3', 0, '2025-03-27 18:51:12', '2025-03-27 18:51:12'),
(168, 42, 'Định luật I Newton', 0, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(169, 42, 'Định luật II Newton', 0, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(170, 42, 'Định luật III Newton', 1, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(171, 42, 'Định luật vạn vật hấp dẫn', 0, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(172, 43, 'Vận tốc không đổi', 1, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(173, 43, 'Gia tốc không đổi', 0, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(174, 43, 'Quãng đường tỉ lệ với bình phương thời gian', 0, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(175, 43, 'Lực tác dụng thay đổi', 0, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(176, 44, 'A = F.s', 1, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(177, 44, 'A = m.v', 0, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(178, 44, 'A = P.t', 0, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(179, 44, 'A = F.v', 0, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(180, 45, 'Vôn (V)', 0, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(181, 45, 'Ampe (A)', 1, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(182, 45, 'Ôm (Ω)', 0, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(183, 45, 'Oát (W)', 0, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(184, 46, 'Ánh sáng truyền trong chân không', 0, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(185, 46, 'Ánh sáng truyền từ môi trường này sang môi trường khác', 1, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(186, 46, 'Ánh sáng phản xạ trên gương', 0, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(187, 46, 'Ánh sáng bị hấp thụ hoàn toàn', 0, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(188, 47, '5 m/s', 0, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(189, 47, '10 m/s', 1, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(190, 47, '15 m/s', 0, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(191, 47, '20 m/s', 0, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(192, 48, 'I = U/R', 0, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(193, 48, 'I = E/(R + r)', 1, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(194, 48, 'U = I.R', 0, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(195, 48, 'P = U.I', 0, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(196, 49, '6Ω', 0, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(197, 49, '12Ω', 0, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(198, 49, '24Ω', 1, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(199, 49, '48Ω', 0, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(200, 50, '1s', 0, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(201, 50, '2s', 1, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(202, 50, '3s', 0, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(203, 50, '4s', 0, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(204, 51, 'Tính chất hạt', 0, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(205, 51, 'Tính chất sóng', 1, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(206, 51, 'Tính chất điện từ', 0, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(207, 51, 'Tính chất lượng tử', 0, '2025-03-28 00:00:00', '2025-03-28 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `examquestion`
--

DROP TABLE IF EXISTS `examquestion`;
CREATE TABLE IF NOT EXISTS `examquestion` (
  `exam_id` int UNSIGNED NOT NULL,
  `question_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`question_id`,`exam_id`),
  KEY `examquestion_exam_id_foreign` (`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `examquestion`
--

INSERT INTO `examquestion` (`exam_id`, `question_id`) VALUES
(1, 1),
(1, 22),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 29),
(1, 30),
(1, 38),
(1, 41),
(2, 28),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36),
(2, 37),
(2, 39),
(2, 40),
(3, 23),
(4, 42),
(4, 43),
(4, 44),
(4, 45),
(4, 46),
(4, 47),
(5, 48),
(5, 49),
(5, 50),
(5, 51);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exams`
--

DROP TABLE IF EXISTS `exams`;
CREATE TABLE IF NOT EXISTS `exams` (
  `exam_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_by` int UNSIGNED NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`exam_id`),
  KEY `exams_created_by_foreign` (`created_by`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `exams`
--

INSERT INTO `exams` (`exam_id`, `title`, `description`, `created_by`, `createdAt`, `updatedAt`) VALUES
(1, 'Đề kiểm tra Toán 10 - Học kỳ 1', 'Đề thi gồm 20 câu hỏi trắc nghiệm Toán 10', 1, '2025-03-27 00:00:00', '2025-03-27 00:00:00'),
(2, 'Đề thi thử Toán 12', 'Đề thi thử THPT Quốc gia môn Toán', 1, '2025-03-27 00:00:00', '2025-03-27 00:00:00'),
(3, 'Kiểm tra Vật lý 11 - Chương 1', 'Đề kiểm tra 45 phút môn Vật lý lớp 11', 1, '2025-03-27 00:00:00', '2025-03-27 00:00:00'),
(4, 'Đề kiểm tra Vật lý 10 - Chương 1', 'Đề kiểm tra 45 phút môn Vật lý lớp 10', 1, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(5, 'Đề thi thử Vật lý 12', 'Đề thi thử THPT Quốc gia môn Vật lý', 1, '2025-03-28 00:00:00', '2025-03-28 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `question_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `subject_id` int UNSIGNED NOT NULL,
  `question_text` text NOT NULL,
  `difficulty` enum('easy','medium','hard') NOT NULL,
  `created_by` int UNSIGNED NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`question_id`),
  KEY `questions_created_by_foreign` (`created_by`),
  KEY `questions_subject_id_foreign` (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `questions`
--

INSERT INTO `questions` (`question_id`, `subject_id`, `question_text`, `difficulty`, `created_by`, `createdAt`, `updatedAt`) VALUES
(1, 1, '2 + 2 bằng mấy?', 'easy', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 1, 'Giá trị của biểu thức 5 + 3 × 2 là bao nhiêu?', 'easy', 1, '2025-03-27 18:29:49', '2025-03-27 18:29:49'),
(23, 1, 'Nếu x = 4 thì giá trị của biểu thức x^2 - 3x + 2 là bao nhiêu?', 'medium', 1, '2025-03-27 18:29:49', '2025-03-27 18:29:49'),
(24, 1, 'Phương trình 2x - 5 = 7 có nghiệm là bao nhiêu?', 'easy', 1, '2025-03-27 18:29:49', '2025-03-27 18:29:49'),
(25, 1, 'Tích của hai số 6 và 7 là bao nhiêu?', 'easy', 1, '2025-03-27 18:29:49', '2025-03-27 18:29:49'),
(26, 1, 'Chu vi của một hình vuông có cạnh dài 5 cm là bao nhiêu?', 'easy', 1, '2025-03-27 18:29:49', '2025-03-27 18:29:49'),
(27, 1, 'Một tam giác có các cạnh là 3 cm, 4 cm và 5 cm. Tam giác này có phải là tam giác vuông không?', 'medium', 1, '2025-03-27 18:29:49', '2025-03-27 18:29:49'),
(28, 1, 'Giá trị lớn nhất của hàm số y = -x^2 + 4x - 3 là bao nhiêu?', 'hard', 1, '2025-03-27 18:29:49', '2025-03-27 18:29:49'),
(29, 1, 'Số đối của -7 là bao nhiêu?', 'easy', 1, '2025-03-27 18:29:49', '2025-03-27 18:29:49'),
(30, 1, 'Phân số 3/4 có thể viết dưới dạng số thập phân là bao nhiêu?', 'easy', 1, '2025-03-27 18:29:49', '2025-03-27 18:29:49'),
(31, 1, 'Tập nghiệm của bất phương trình 2x - 1 > 3 là gì?', 'medium', 1, '2025-03-27 18:29:49', '2025-03-27 18:29:49'),
(32, 1, 'Đạo hàm của hàm số y = x^3 - 5x^2 + 2x - 1 là gì?', 'hard', 1, '2025-03-27 18:29:49', '2025-03-27 18:29:49'),
(33, 1, 'Phương trình bậc hai x^2 - 6x + 9 = 0 có nghiệm là gì?', 'medium', 1, '2025-03-27 18:29:49', '2025-03-27 18:29:49'),
(34, 1, 'Một hình tròn có bán kính 7 cm. Diện tích của nó là bao nhiêu?', 'medium', 1, '2025-03-27 18:29:49', '2025-03-27 18:29:49'),
(35, 1, 'Tổng của tất cả các số nguyên từ 1 đến 100 là bao nhiêu?', 'hard', 1, '2025-03-27 18:29:49', '2025-03-27 18:29:49'),
(36, 1, 'Giải phương trình log(x + 3) = 2', 'hard', 1, '2025-03-27 18:29:49', '2025-03-27 18:29:49'),
(37, 1, 'Cho dãy số Fibonacci: 1, 1, 2, 3, 5, 8, 13, ... Số hạng tiếp theo là bao nhiêu?', 'medium', 1, '2025-03-27 18:29:49', '2025-03-27 18:29:49'),
(38, 1, 'Nếu một chiếc xe chạy với vận tốc 60 km/h, thì sau 2,5 giờ nó đi được bao nhiêu km?', 'easy', 1, '2025-03-27 18:29:49', '2025-03-27 18:29:49'),
(39, 1, 'Hệ phương trình 2x + y = 5 và x - y = 1 có nghiệm (x, y) là gì?', 'medium', 1, '2025-03-27 18:29:49', '2025-03-27 18:29:49'),
(40, 1, 'Tính tích phân của hàm số f(x) = 3x^2 từ x = 0 đến x = 2.', 'hard', 1, '2025-03-27 18:29:49', '2025-03-27 18:29:49'),
(41, 1, 'Một cửa hàng giảm giá 20% cho một món hàng trị giá 500.000 VNĐ. Giá sau khi giảm là bao nhiêu?', 'easy', 1, '2025-03-27 18:29:49', '2025-03-27 18:29:49'),
(42, 2, 'Định luật nào sau đây là định luật bảo toàn động lượng?', 'easy', 1, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(43, 2, 'Một vật chuyển động thẳng đều có đặc điểm gì?', 'easy', 1, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(44, 2, 'Công thức tính công cơ học là:', 'easy', 1, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(45, 2, 'Đơn vị của cường độ dòng điện là:', 'easy', 1, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(46, 2, 'Hiện tượng khúc xạ ánh sáng xảy ra khi:', 'medium', 1, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(47, 2, 'Một vật có khối lượng 2kg rơi tự do từ độ cao 5m. Vận tốc của vật khi chạm đất là (g=10m/s²):', 'medium', 1, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(48, 2, 'Định luật Ôm cho toàn mạch được biểu diễn bằng công thức:', 'medium', 1, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(49, 2, 'Hiệu điện thế giữa hai đầu một dây dẫn là 12V, cường độ dòng điện qua dây là 0.5A. Điện trở của dây là:', 'medium', 1, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(50, 2, 'Một con lắc đơn có chiều dài 1m dao động với chu kỳ là (g=9.8m/s²):', 'hard', 1, '2025-03-28 00:00:00', '2025-03-28 00:00:00'),
(51, 2, 'Hiện tượng giao thoa ánh sáng chứng tỏ ánh sáng có tính chất gì?', 'hard', 1, '2025-03-28 00:00:00', '2025-03-28 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `results`
--

DROP TABLE IF EXISTS `results`;
CREATE TABLE IF NOT EXISTS `results` (
  `result_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL,
  `exam_id` int UNSIGNED NOT NULL,
  `score` double NOT NULL,
  `submitted_at` datetime NOT NULL,
  PRIMARY KEY (`result_id`),
  KEY `results_exam_id_foreign` (`exam_id`),
  KEY `results_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subjects`
--

DROP TABLE IF EXISTS `subjects`;
CREATE TABLE IF NOT EXISTS `subjects` (
  `subject_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `subjects`
--

INSERT INTO `subjects` (`subject_id`, `name`) VALUES
(1, 'Toán'),
(2, 'Vật lý'),
(3, 'Hóa học');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subsubjects`
--

DROP TABLE IF EXISTS `subsubjects`;
CREATE TABLE IF NOT EXISTS `subsubjects` (
  `subsubjects_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(255) NOT NULL,
  `subject_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`subsubjects_id`),
  KEY `subsubjects_subject_id_foreign` (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `subsubjects`
--

INSERT INTO `subsubjects` (`subsubjects_id`, `subject_name`, `subject_id`) VALUES
(1, 'Toán 10', 1),
(2, 'Toán 11', 1),
(3, 'Toán 12', 1),
(4, 'Vật Lý 10', 2),
(5, 'Vật Lý 11', 2),
(6, 'Vật Lý 12', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('student','teacher','admin') NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `role`, `createdAt`, `updatedAt`, `email`) VALUES
(1, 'teacher1', 'hashed_password', 'teacher', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'teacher1@example.com'),
(6, 'khai dep trai', '123', 'student', '2025-03-28 04:02:12', '2025-03-28 04:02:28', NULL);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`question_id`);

--
-- Các ràng buộc cho bảng `examquestion`
--
ALTER TABLE `examquestion`
  ADD CONSTRAINT `examquestion_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`exam_id`),
  ADD CONSTRAINT `examquestion_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`question_id`);

--
-- Các ràng buộc cho bảng `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exams_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`);

--
-- Các ràng buộc cho bảng `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `questions_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subsubjects` (`subsubjects_id`);

--
-- Các ràng buộc cho bảng `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`exam_id`),
  ADD CONSTRAINT `results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Các ràng buộc cho bảng `subsubjects`
--
ALTER TABLE `subsubjects`
  ADD CONSTRAINT `subsubjects_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
