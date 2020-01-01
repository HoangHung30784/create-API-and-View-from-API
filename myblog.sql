-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 01, 2020 lúc 09:05 AM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `myblog`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'Technology', '2019-12-28 14:48:12'),
(2, 'Gaming', '2019-12-28 14:48:12'),
(3, 'Auto', '2019-12-28 14:48:12'),
(4, 'Entertainment', '2019-12-28 14:48:12'),
(5, 'Books', '2019-12-28 14:48:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `body`, `author`, `created_at`) VALUES
(1, 1, 'Technology Post One', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum est nec lorem mattis interdum. Cras augue est, interdum eu consectetur et, faucibus vel turpis. Etiam pulvinar, enim quis elementum iaculis, tortor sapien eleifend eros, vitae rutrum augue quam sed leo. Vivamus fringilla, diam sit amet vestibulum vulputate, urna risus hendrerit arcu, vitae fringilla odio justo vulputate neque. Nulla a massa sed est vehicula rhoncus sit amet quis libero. Integer euismod est quis turpis hendrerit, in feugiat mauris laoreet. Vivamus nec laoreet neque. Cras condimentum aliquam nunc nec maximus. Cras facilisis eros quis leo euismod pharetra sed cursus orci.', 'Sam Smith', '2019-12-28 14:48:12'),
(2, 2, 'Gaming Post One', 'Adipiscing elit. Ut interdum est nec lorem mattis interdum. Cras augue est, interdum eu consectetur et, faucibus vel turpis. Etiam pulvinar, enim quis elementum iaculis, tortor sapien eleifend eros, vitae rutrum augue quam sed leo. Vivamus fringilla, diam sit amet vestibulum vulputate, urna risus hendrerit arcu, vitae fringilla odio justo vulputate neque. Nulla a massa sed est vehicula rhoncus sit amet quis libero. Integer euismod est quis turpis hendrerit, in feugiat mauris laoreet. Vivamus nec laoreet neque.', 'Kevin Williams', '2019-12-28 14:48:12'),
(3, 1, 'Technology Post Two', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum est nec lorem mattis interdum. Cras augue est, interdum eu consectetur et, faucibus vel turpis. Etiam pulvinar, enim quis elementum iaculis, tortor sapien eleifend eros, vitae rutrum augue quam sed leo. Vivamus fringilla, diam sit amet vestibulum vulputate, urna risus hendrerit arcu, vitae fringilla odio justo vulputate neque. Nulla a massa sed est vehicula rhoncus sit amet quis libero. Integer euismod est quis turpis hendrerit, in feugiat mauris laoreet. Vivamus nec laoreet neque. Cras condimentum aliquam nunc nec maximus. Cras facilisis eros quis leo euismod pharetra sed cursus orci.', 'Sam Smith', '2019-12-28 14:48:12'),
(4, 4, 'Entertainment Post One', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum est nec lorem mattis interdum. Cras augue est, interdum eu consectetur et, faucibus vel turpis. Etiam pulvinar, enim quis elementum iaculis, tortor sapien eleifend eros, vitae rutrum augue quam sed leo. Vivamus fringilla, diam sit amet vestibulum vulputate, urna risus hendrerit arcu, vitae fringilla odio justo vulputate neque. Nulla a massa sed est vehicula rhoncus sit amet quis libero. Integer euismod est quis turpis hendrerit, in feugiat mauris laoreet. Vivamus nec laoreet neque. Cras condimentum aliquam nunc nec maximus. Cras facilisis eros quis leo euismod pharetra sed cursus orci.', 'Mary Jackson', '2019-12-28 14:48:12'),
(5, 4, 'Entertainment Post Two', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum est nec lorem mattis interdum. Cras augue est, interdum eu consectetur et, faucibus vel turpis. Etiam pulvinar, enim quis elementum iaculis, tortor sapien eleifend eros, vitae rutrum augue quam sed leo. Vivamus fringilla, diam sit amet vestibulum vulputate, urna risus hendrerit arcu, vitae fringilla odio justo vulputate neque. Nulla a massa sed est vehicula rhoncus sit amet quis libero. Integer euismod est quis turpis hendrerit, in feugiat mauris laoreet. Vivamus nec laoreet neque. Cras condimentum aliquam nunc nec maximus. Cras facilisis eros quis leo euismod pharetra sed cursus orci.', 'Mary Jackson', '2019-12-28 14:48:12'),
(6, 1, 'Technology Post Three', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum est nec lorem mattis interdum. Cras augue est, interdum eu consectetur et, faucibus vel turpis. Etiam pulvinar, enim quis elementum iaculis, tortor sapien eleifend eros, vitae rutrum augue quam sed leo. Vivamus fringilla, diam sit amet vestibulum vulputate, urna risus hendrerit arcu, vitae fringilla odio justo vulputate neque. Nulla a massa sed est vehicula rhoncus sit amet quis libero. Integer euismod est quis turpis hendrerit, in feugiat mauris laoreet. Vivamus nec laoreet neque. Cras condimentum aliquam nunc nec maximus. Cras facilisis eros quis leo euismod pharetra sed cursus orci.', 'Sam Smith', '2019-12-28 14:48:12');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
