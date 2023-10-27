-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2023 at 09:28 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `apiapp_products`
--

CREATE TABLE `apiapp_products` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `product` varchar(225) NOT NULL,
  `product_img` varchar(100) DEFAULT NULL,
  `price` bigint(20) UNSIGNED NOT NULL CHECK (`price` >= 0),
  `description` longtext NOT NULL,
  `product_slug` varchar(50) NOT NULL,
  `product_category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apiapp_products`
--

INSERT INTO `apiapp_products` (`id`, `created_at`, `updated_at`, `product`, `product_img`, `price`, `description`, `product_slug`, `product_category_id`) VALUES
(12, '2023-10-27 05:57:13.909093', '2023-10-27 05:57:13.909093', 'Sony', 'images/products/download_cKqgl5p.jpeg', 505, 'dsfs', 'sony', 3),
(14, '2023-10-27 06:01:40.680309', '2023-10-27 07:26:03.522363', 'Sony', 'images/products/download_in70u3W.jpeg', 8888888, 'dsfs5154', 'sony-3', 2);

-- --------------------------------------------------------

--
-- Table structure for table `apiapp_products_saved_by`
--

CREATE TABLE `apiapp_products_saved_by` (
  `id` bigint(20) NOT NULL,
  `products_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `apiapp_product_category`
--

CREATE TABLE `apiapp_product_category` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `category` varchar(200) NOT NULL,
  `category_image` varchar(100) DEFAULT NULL,
  `category_slug` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apiapp_product_category`
--

INSERT INTO `apiapp_product_category` (`id`, `created_at`, `updated_at`, `category`, `category_image`, `category_slug`) VALUES
(1, '2023-10-27 04:13:51.480560', '2023-10-27 04:13:51.480560', 'Mobile', '', 'mobile'),
(2, '2023-10-27 05:11:50.938178', '2023-10-27 05:11:50.938178', 'Camera', '', 'camera'),
(3, '2023-10-27 05:27:12.100895', '2023-10-27 05:27:12.100895', 'Toys', '', 'toys'),
(4, '2023-10-27 06:43:36.604077', '2023-10-27 06:43:36.604077', 'Cloths', '', 'cloths'),
(5, '2023-10-27 07:24:45.773659', '2023-10-27 07:24:45.773659', 'iphone', '', 'iphone');

-- --------------------------------------------------------

--
-- Table structure for table `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Token', 7, 'add_token'),
(26, 'Can change Token', 7, 'change_token'),
(27, 'Can delete Token', 7, 'delete_token'),
(28, 'Can view Token', 7, 'view_token'),
(29, 'Can add token', 8, 'add_tokenproxy'),
(30, 'Can change token', 8, 'change_tokenproxy'),
(31, 'Can delete token', 8, 'delete_tokenproxy'),
(32, 'Can view token', 8, 'view_tokenproxy'),
(33, 'Can add product_category', 9, 'add_product_category'),
(34, 'Can change product_category', 9, 'change_product_category'),
(35, 'Can delete product_category', 9, 'delete_product_category'),
(36, 'Can view product_category', 9, 'view_product_category'),
(37, 'Can add products', 10, 'add_products'),
(38, 'Can change products', 10, 'change_products'),
(39, 'Can delete products', 10, 'delete_products'),
(40, 'Can view products', 10, 'view_products');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$aUu8yb7DucCgStIIgwvtum$w2yp8TKPMvQV0DLBsC6I9nvoJSYcFGO0SYgznIiKH9I=', '2023-10-27 04:10:28.208028', 1, 'admin', '', '', '', 1, 1, '2023-10-27 04:09:30.172696');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-10-27 04:13:51.486561', '1', 'Mobile', 1, '[{\"added\": {}}]', 9, 1),
(2, '2023-10-27 04:15:31.699217', '1', 'Iphone', 1, '[{\"added\": {}}]', 10, 1),
(3, '2023-10-27 04:30:15.914753', '1', 'Iphone', 2, '[{\"changed\": {\"fields\": [\"Product img\"]}}]', 10, 1),
(4, '2023-10-27 05:56:54.859468', '11', 'Sony', 3, '', 10, 1),
(5, '2023-10-27 05:56:54.870515', '10', 'Sony', 3, '', 10, 1),
(6, '2023-10-27 05:56:54.879512', '9', 'Sony', 3, '', 10, 1),
(7, '2023-10-27 05:56:54.882519', '8', 'Sony', 3, '', 10, 1),
(8, '2023-10-27 05:56:54.886513', '7', 'Sony', 3, '', 10, 1),
(9, '2023-10-27 05:56:54.889531', '6', 'Sony', 3, '', 10, 1),
(10, '2023-10-27 05:56:54.902519', '5', 'Sony', 3, '', 10, 1),
(11, '2023-10-27 05:56:54.905512', '4', 'Sony', 3, '', 10, 1),
(12, '2023-10-27 05:56:54.907514', '3', 'Sony', 3, '', 10, 1),
(13, '2023-10-27 05:56:54.910511', '2', 'Sony', 3, '', 10, 1),
(14, '2023-10-27 05:56:54.913511', '1', 'Iphone', 3, '', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(10, 'ApiApp', 'products'),
(9, 'ApiApp', 'product_category'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'authtoken', 'token'),
(8, 'authtoken', 'tokenproxy'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-10-22 09:01:58.078307'),
(2, 'auth', '0001_initial', '2023-10-22 09:01:59.283379'),
(3, 'admin', '0001_initial', '2023-10-22 09:01:59.624389'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-10-22 09:01:59.640379'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-10-22 09:01:59.662392'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-10-22 09:01:59.801379'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-10-22 09:02:00.137026'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-10-22 09:02:00.223025'),
(9, 'auth', '0004_alter_user_username_opts', '2023-10-22 09:02:00.241022'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-10-22 09:02:00.346022'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-10-22 09:02:00.357023'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-10-22 09:02:00.376024'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-10-22 09:02:00.423029'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-10-22 09:02:00.475025'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-10-22 09:02:00.533024'),
(16, 'auth', '0011_update_proxy_permissions', '2023-10-22 09:02:00.560020'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-10-22 09:02:00.629023'),
(18, 'sessions', '0001_initial', '2023-10-22 09:02:00.731022'),
(19, 'authtoken', '0001_initial', '2023-10-22 09:04:51.332458'),
(20, 'authtoken', '0002_auto_20160226_1747', '2023-10-22 09:04:51.407475'),
(21, 'authtoken', '0003_tokenproxy', '2023-10-22 09:04:51.414463'),
(22, 'ApiApp', '0001_initial', '2023-10-27 03:51:26.034076'),
(23, 'ApiApp', '0002_alter_product_category_category_slug', '2023-10-27 04:13:29.893434'),
(24, 'ApiApp', '0003_alter_products_saved_by', '2023-10-27 04:15:18.172005');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('wgth0opwqq8itmxjih0yoqrmoc9hyw7w', '.eJxVjDsOwjAQBe_iGlne9S-mpM8Zol3HwQFkS3FSIe6OLKWA9s3Me4uJjj1PR0vbtM7iKkBcfjem-Eylg_lB5V5lrGXfVpZdkSdtcqxzet1O9-8gU8u9tppsYEuWHRI4sEa7gZh9sIiJeQHURmlQHlNcENB40gYGUiE6r8TnC8f3Nr8:1qwEB2:N_Q6IjlBGf2O_o1_FPdea-jY1GyGw4rhWRQEXtvzpuM', '2023-11-10 04:10:28.213016');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apiapp_products`
--
ALTER TABLE `apiapp_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_slug` (`product_slug`),
  ADD KEY `ApiApp_products_product_category_id_684ec54d_fk_ApiApp_pr` (`product_category_id`);

--
-- Indexes for table `apiapp_products_saved_by`
--
ALTER TABLE `apiapp_products_saved_by`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ApiApp_products_saved_by_products_id_user_id_1164e78a_uniq` (`products_id`,`user_id`),
  ADD KEY `ApiApp_products_saved_by_user_id_0bf8ba3c_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `apiapp_product_category`
--
ALTER TABLE `apiapp_product_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_slug` (`category_slug`);

--
-- Indexes for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apiapp_products`
--
ALTER TABLE `apiapp_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `apiapp_products_saved_by`
--
ALTER TABLE `apiapp_products_saved_by`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apiapp_product_category`
--
ALTER TABLE `apiapp_product_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apiapp_products`
--
ALTER TABLE `apiapp_products`
  ADD CONSTRAINT `ApiApp_products_product_category_id_684ec54d_fk_ApiApp_pr` FOREIGN KEY (`product_category_id`) REFERENCES `apiapp_product_category` (`id`);

--
-- Constraints for table `apiapp_products_saved_by`
--
ALTER TABLE `apiapp_products_saved_by`
  ADD CONSTRAINT `ApiApp_products_save_products_id_4c096be6_fk_ApiApp_pr` FOREIGN KEY (`products_id`) REFERENCES `apiapp_products` (`id`),
  ADD CONSTRAINT `ApiApp_products_saved_by_user_id_0bf8ba3c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
