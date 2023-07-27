-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2023-07-27 16:24:30
-- サーバのバージョン： 10.4.28-MariaDB
-- PHP のバージョン: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_d13_10`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `like_table`
--

CREATE TABLE `like_table` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `todo_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `like_table`
--

INSERT INTO `like_table` (`id`, `user_id`, `todo_id`, `created_at`) VALUES
(9, 5, 9, '2023-07-18 23:03:41'),
(11, 6, 1, '2023-07-20 18:32:53'),
(14, 6, 10, '2023-07-20 21:25:20'),
(15, 6, 2, '2023-07-20 21:25:21'),
(16, 6, 7, '2023-07-20 21:25:22'),
(17, 6, 12, '2023-07-20 21:25:23'),
(18, 6, 11, '2023-07-20 21:25:23'),
(20, 5, 2, '2023-07-20 21:33:49'),
(22, 5, 4, '2023-07-20 21:33:52');

-- --------------------------------------------------------

--
-- テーブルの構造 `todo_table`
--

CREATE TABLE `todo_table` (
  `id` int(11) NOT NULL,
  `todo` varchar(128) NOT NULL,
  `deadline` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `todo_table`
--

INSERT INTO `todo_table` (`id`, `todo`, `deadline`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'SQL練習', '2021-12-31', '2023-06-17 15:36:38', '2023-06-17 15:36:38', '2023-06-24 17:10:43'),
(2, 'SQL練習2', '2021-12-31', '2023-06-17 15:40:00', '2023-06-17 15:40:00', '2023-06-24 17:19:23'),
(3, 'あいうえお', '2022-01-11', '2023-06-17 15:43:59', '2023-06-17 15:43:59', '2023-06-24 17:19:24'),
(4, 'かきくけこ', '2023-03-21', '2023-06-17 15:43:59', '2023-06-17 15:43:59', NULL),
(5, 'sasisuseso', '2022-07-21', '2023-06-17 15:43:59', '2023-06-17 15:43:59', NULL),
(7, 'ゴマ団子', '2023-10-21', '2023-06-17 15:43:59', '2023-06-17 15:43:59', NULL),
(8, 'そうめん', '2022-06-21', '2023-06-17 15:43:59', '2023-06-17 15:43:59', '2023-06-24 17:21:44'),
(9, '挑戦者', '2022-12-11', '2023-06-17 15:45:50', '2023-06-17 15:45:50', NULL),
(10, '敗北者', '2023-01-21', '2023-06-17 15:45:50', '2023-06-17 15:45:50', NULL),
(11, 'テストテスト', '2023-06-17', '2023-06-17 16:13:41', '2023-06-17 16:13:41', NULL),
(12, 'せせらぎ', '2023-06-18', '2023-06-17 16:56:54', '2023-06-17 16:56:54', NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `users_table`
--

CREATE TABLE `users_table` (
  `id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_admin` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `users_table`
--

INSERT INTO `users_table` (`id`, `username`, `password`, `is_admin`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'testuser01', '111111', 1, '2023-07-08 15:53:21', '2023-07-08 15:53:21', NULL),
(6, 'testuser02', '222222', 0, '2023-07-08 15:53:21', '2023-07-08 15:53:21', NULL),
(7, 'testuser03', '333333', 0, '2023-07-08 15:53:21', '2023-07-08 15:53:21', NULL),
(8, 'testuser04', '444444', 0, '2023-07-08 15:53:21', '2023-07-08 15:53:21', NULL);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `like_table`
--
ALTER TABLE `like_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `todo_table`
--
ALTER TABLE `todo_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `like_table`
--
ALTER TABLE `like_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- テーブルの AUTO_INCREMENT `todo_table`
--
ALTER TABLE `todo_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- テーブルの AUTO_INCREMENT `users_table`
--
ALTER TABLE `users_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
