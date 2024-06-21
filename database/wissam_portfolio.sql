-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2024 at 05:21 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wissam_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `company_informations`
--

CREATE TABLE `company_informations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `details_ar` text DEFAULT NULL,
  `details_en` text DEFAULT NULL,
  `address_ar` varchar(255) DEFAULT NULL,
  `address_en` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `facebook_url` varchar(255) DEFAULT NULL,
  `youtube_url` varchar(255) DEFAULT NULL,
  `linkedin_url` varchar(255) DEFAULT NULL,
  `twitter_url` varchar(255) DEFAULT NULL,
  `instagram_url` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_informations`
--

INSERT INTO `company_informations` (`id`, `name_ar`, `name_en`, `details_ar`, `details_en`, `address_ar`, `address_en`, `phone`, `mobile`, `email`, `whatsapp`, `facebook_url`, `youtube_url`, `linkedin_url`, `twitter_url`, `instagram_url`, `photo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'BioHealux', 'BioHealux', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '1105 Mansoura Dakahlia - Egypt', '1105 Mansoura Dakahlia - Egypt', '0123456789', '01016856433', 'info@biohealux.com', '01016856433', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.linkedin.com/', 'https://www.twitter.com/', 'https://www.instagram.com/', 'company-information.png', '2024-06-05 19:28:57', '2024-06-05 19:28:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_items`
--

CREATE TABLE `course_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `author_ar` varchar(255) DEFAULT NULL,
  `author_en` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_items`
--

INSERT INTO `course_items` (`id`, `name_ar`, `name_en`, `author_ar`, `author_en`, `photo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Long Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat, est....', 'Long Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat, est....', 'Rabie Elkheir', 'Rabie Elkheir', 'course-item-1.jpg', '2024-06-05 19:28:57', '2024-06-05 19:28:57', NULL),
(2, 'Long Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat, est....', 'Long Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat, est....', 'Rabie Elkheir', 'Rabie Elkheir', 'course-item-2.jpg', '2024-06-05 19:28:57', '2024-06-05 19:28:57', NULL),
(3, 'Long Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat, est....', 'Long Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat, est....', 'Rabie Elkheir', 'Rabie Elkheir', 'course-item-3.jpg', '2024-06-05 19:28:57', '2024-06-05 19:28:57', NULL),
(4, 'Long Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat, est....', 'Long Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat, est....', 'Rabie Elkheir', 'Rabie Elkheir', 'course-item-4.jpg', '2024-06-05 19:28:57', '2024-06-05 19:28:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_06_035011_create_notifications_table', 1),
(6, '2023_08_07_003110_create_permission_tables', 1),
(7, '2024_05_28_230542_create_sliders_table', 1),
(8, '2024_05_29_213558_create_slider_footers_table', 1),
(9, '2024_05_29_220627_create_who_we_are_sides_table', 1),
(10, '2024_05_29_225031_create_who_we_are_details_table', 1),
(11, '2024_05_30_001758_create_who_we_are_faqs_table', 1),
(12, '2024_05_30_012045_create_service_details_table', 1),
(13, '2024_06_01_163739_create_service_items_table', 1),
(14, '2024_06_01_172254_create_project_details_table', 1),
(15, '2024_06_01_172311_create_project_items_table', 1),
(16, '2024_06_01_194719_create_course_items_table', 1),
(17, '2024_06_01_204733_create_company_informations_table', 1),
(18, '2024_06_01_223935_create_messages_table', 1),
(19, '2024_06_04_232336_create_parteners_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parteners`
--

CREATE TABLE `parteners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parteners`
--

INSERT INTO `parteners` (`id`, `name_ar`, `name_en`, `url`, `photo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'partener-1', 'partener-1', 'https://www.google.com/', 'partener-1.png', '2024-06-05 19:28:57', '2024-06-05 19:28:57', NULL),
(2, 'partener-2', 'partener-2', 'https://www.google.com/', 'partener-2.png', '2024-06-05 19:28:57', '2024-06-05 19:28:57', NULL),
(3, 'partener-3', 'partener-3', 'https://www.google.com/', 'partener-3.png', '2024-06-05 19:28:57', '2024-06-05 19:28:57', NULL),
(4, 'partener-4', 'partener-4', 'https://www.google.com/', 'partener-4.png', '2024-06-05 19:28:57', '2024-06-05 19:28:57', NULL),
(5, 'partener-5', 'partener-5', 'https://www.google.com/', 'partener-5.png', '2024-06-05 19:28:57', '2024-06-05 19:28:57', NULL),
(6, 'partener-6', 'partener-6', 'https://www.google.com/', 'partener-6.png', '2024-06-05 19:28:58', '2024-06-05 19:28:58', NULL),
(7, 'partener-7', 'partener-7', 'https://www.google.com/', 'partener-7.png', '2024-06-05 19:28:58', '2024-06-05 19:28:58', NULL),
(8, 'partener-8', 'partener-8', 'https://www.google.com/', 'partener-8.png', '2024-06-05 19:28:58', '2024-06-05 19:28:58', NULL),
(9, 'partener-9', 'partener-9', 'https://www.google.com/', 'partener-9.png', '2024-06-05 19:28:58', '2024-06-05 19:28:58', NULL),
(10, 'partener-10', 'partener-10', 'https://www.google.com/', 'partener-10.png', '2024-06-05 19:28:58', '2024-06-05 19:28:58', NULL),
(11, 'partener-11', 'partener-11', 'https://www.google.com/', 'partener-11.png', '2024-06-05 19:28:58', '2024-06-05 19:28:58', NULL),
(12, 'partener-12', 'partener-12', 'https://www.google.com/', 'partener-12.png', '2024-06-05 19:28:58', '2024-06-05 19:28:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'المستخدمين', 'web', '2024-06-05 19:28:54', '2024-06-05 19:28:54'),
(2, 'قائمة المستخدمين', 'web', '2024-06-05 19:28:55', '2024-06-05 19:28:55'),
(3, 'صلاحيات المستخدمين', 'web', '2024-06-05 19:28:55', '2024-06-05 19:28:55'),
(4, 'إضافة مستخدم', 'web', '2024-06-05 19:28:55', '2024-06-05 19:28:55'),
(5, 'تعديل مستخدم', 'web', '2024-06-05 19:28:55', '2024-06-05 19:28:55'),
(6, 'حذف مستخدم', 'web', '2024-06-05 19:28:55', '2024-06-05 19:28:55'),
(7, 'عرض صلاحية', 'web', '2024-06-05 19:28:55', '2024-06-05 19:28:55'),
(8, 'إضافة صلاحية', 'web', '2024-06-05 19:28:55', '2024-06-05 19:28:55'),
(9, 'تعديل صلاحية', 'web', '2024-06-05 19:28:55', '2024-06-05 19:28:55'),
(10, 'حذف صلاحية', 'web', '2024-06-05 19:28:55', '2024-06-05 19:28:55'),
(11, 'الإشعارات', 'web', '2024-06-05 19:28:55', '2024-06-05 19:28:55');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_details`
--

CREATE TABLE `project_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `details_ar` text DEFAULT NULL,
  `details_en` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_details`
--

INSERT INTO `project_details` (`id`, `details_ar`, `details_en`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'In quis luctus dolor. Sed ac libero arcu. Phasellus vulputate ultrices augue, eget feugiat lectus efficitur in. Nulla non pharetra justo. Nunc viverra consectetur bibendum.', 'In quis luctus dolor. Sed ac libero arcu. Phasellus vulputate ultrices augue, eget feugiat lectus efficitur in. Nulla non pharetra justo. Nunc viverra consectetur bibendum.', '2024-06-05 19:28:58', '2024-06-05 19:28:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project_items`
--

CREATE TABLE `project_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `details_ar` text DEFAULT NULL,
  `details_en` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_items`
--

INSERT INTO `project_items` (`id`, `name_ar`, `name_en`, `details_ar`, `details_en`, `photo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Long Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat, est....', 'Long Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat, est....', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem... Mauris fermentum porta sem, non hendrerit enim bibendum consectetur. Fusce diam est, porttitor vehicula gravida at, accumsan bibendum tincidunt imperdiet. Maecenas quis magna faucibus, varius ante sit amet, varius augue. Praesent aliquam, augue ac pulvinar accumsan Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae quidem libero, odio sit incidunt cupiditate officia veritatis tenetur similique labore. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Molestiae, exercitationem! Recusandae libero cumque culpa assumenda ullam ratione ab esse repellat magnam, cum doloremque! Corrupti, cumque labore quibusdam, voluptatem, minima commodi dolore nemo quisquam tempora aut vero similique esse aliquid provident! Dolorem facere quo nihil voluptas repudiandae? Temporibus officia enim eum?', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem... Mauris fermentum porta sem, non hendrerit enim bibendum consectetur. Fusce diam est, porttitor vehicula gravida at, accumsan bibendum tincidunt imperdiet. Maecenas quis magna faucibus, varius ante sit amet, varius augue. Praesent aliquam, augue ac pulvinar accumsan Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae quidem libero, odio sit incidunt cupiditate officia veritatis tenetur similique labore. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Molestiae, exercitationem! Recusandae libero cumque culpa assumenda ullam ratione ab esse repellat magnam, cum doloremque! Corrupti, cumque labore quibusdam, voluptatem, minima commodi dolore nemo quisquam tempora aut vero similique esse aliquid provident! Dolorem facere quo nihil voluptas repudiandae? Temporibus officia enim eum?', 'project-item-1.jpg', '2024-06-05 19:28:58', '2024-06-05 19:28:58', NULL),
(2, 'Long Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat, est....', 'Long Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat, est....', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem... Mauris fermentum porta sem, non hendrerit enim bibendum consectetur. Fusce diam est, porttitor vehicula gravida at, accumsan bibendum tincidunt imperdiet. Maecenas quis magna faucibus, varius ante sit amet, varius augue. Praesent aliquam, augue ac pulvinar accumsan Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae quidem libero, odio sit incidunt cupiditate officia veritatis tenetur similique labore. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Molestiae, exercitationem! Recusandae libero cumque culpa assumenda ullam ratione ab esse repellat magnam, cum doloremque! Corrupti, cumque labore quibusdam, voluptatem, minima commodi dolore nemo quisquam tempora aut vero similique esse aliquid provident! Dolorem facere quo nihil voluptas repudiandae? Temporibus officia enim eum?', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem... Mauris fermentum porta sem, non hendrerit enim bibendum consectetur. Fusce diam est, porttitor vehicula gravida at, accumsan bibendum tincidunt imperdiet. Maecenas quis magna faucibus, varius ante sit amet, varius augue. Praesent aliquam, augue ac pulvinar accumsan Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae quidem libero, odio sit incidunt cupiditate officia veritatis tenetur similique labore. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Molestiae, exercitationem! Recusandae libero cumque culpa assumenda ullam ratione ab esse repellat magnam, cum doloremque! Corrupti, cumque labore quibusdam, voluptatem, minima commodi dolore nemo quisquam tempora aut vero similique esse aliquid provident! Dolorem facere quo nihil voluptas repudiandae? Temporibus officia enim eum?', 'project-item-2.jpg', '2024-06-05 19:28:58', '2024-06-05 19:28:58', NULL),
(3, 'Long Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat, est....', 'Long Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat, est....', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem... Mauris fermentum porta sem, non hendrerit enim bibendum consectetur. Fusce diam est, porttitor vehicula gravida at, accumsan bibendum tincidunt imperdiet. Maecenas quis magna faucibus, varius ante sit amet, varius augue. Praesent aliquam, augue ac pulvinar accumsan Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae quidem libero, odio sit incidunt cupiditate officia veritatis tenetur similique labore. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Molestiae, exercitationem! Recusandae libero cumque culpa assumenda ullam ratione ab esse repellat magnam, cum doloremque! Corrupti, cumque labore quibusdam, voluptatem, minima commodi dolore nemo quisquam tempora aut vero similique esse aliquid provident! Dolorem facere quo nihil voluptas repudiandae? Temporibus officia enim eum?', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem... Mauris fermentum porta sem, non hendrerit enim bibendum consectetur. Fusce diam est, porttitor vehicula gravida at, accumsan bibendum tincidunt imperdiet. Maecenas quis magna faucibus, varius ante sit amet, varius augue. Praesent aliquam, augue ac pulvinar accumsan Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae quidem libero, odio sit incidunt cupiditate officia veritatis tenetur similique labore. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Molestiae, exercitationem! Recusandae libero cumque culpa assumenda ullam ratione ab esse repellat magnam, cum doloremque! Corrupti, cumque labore quibusdam, voluptatem, minima commodi dolore nemo quisquam tempora aut vero similique esse aliquid provident! Dolorem facere quo nihil voluptas repudiandae? Temporibus officia enim eum?', 'project-item-3.jpg', '2024-06-05 19:28:58', '2024-06-05 19:28:58', NULL),
(4, 'Long Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat, est....', 'Long Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat, est....', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem... Mauris fermentum porta sem, non hendrerit enim bibendum consectetur. Fusce diam est, porttitor vehicula gravida at, accumsan bibendum tincidunt imperdiet. Maecenas quis magna faucibus, varius ante sit amet, varius augue. Praesent aliquam, augue ac pulvinar accumsan Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae quidem libero, odio sit incidunt cupiditate officia veritatis tenetur similique labore. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Molestiae, exercitationem! Recusandae libero cumque culpa assumenda ullam ratione ab esse repellat magnam, cum doloremque! Corrupti, cumque labore quibusdam, voluptatem, minima commodi dolore nemo quisquam tempora aut vero similique esse aliquid provident! Dolorem facere quo nihil voluptas repudiandae? Temporibus officia enim eum?', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem... Mauris fermentum porta sem, non hendrerit enim bibendum consectetur. Fusce diam est, porttitor vehicula gravida at, accumsan bibendum tincidunt imperdiet. Maecenas quis magna faucibus, varius ante sit amet, varius augue. Praesent aliquam, augue ac pulvinar accumsan Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae quidem libero, odio sit incidunt cupiditate officia veritatis tenetur similique labore. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Molestiae, exercitationem! Recusandae libero cumque culpa assumenda ullam ratione ab esse repellat magnam, cum doloremque! Corrupti, cumque labore quibusdam, voluptatem, minima commodi dolore nemo quisquam tempora aut vero similique esse aliquid provident! Dolorem facere quo nihil voluptas repudiandae? Temporibus officia enim eum?', 'project-item-4.jpg', '2024-06-05 19:28:58', '2024-06-05 19:28:58', NULL),
(5, 'Long Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat, est....', 'Long Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat, est....', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem... Mauris fermentum porta sem, non hendrerit enim bibendum consectetur. Fusce diam est, porttitor vehicula gravida at, accumsan bibendum tincidunt imperdiet. Maecenas quis magna faucibus, varius ante sit amet, varius augue. Praesent aliquam, augue ac pulvinar accumsan Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae quidem libero, odio sit incidunt cupiditate officia veritatis tenetur similique labore. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Molestiae, exercitationem! Recusandae libero cumque culpa assumenda ullam ratione ab esse repellat magnam, cum doloremque! Corrupti, cumque labore quibusdam, voluptatem, minima commodi dolore nemo quisquam tempora aut vero similique esse aliquid provident! Dolorem facere quo nihil voluptas repudiandae? Temporibus officia enim eum?', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem... Mauris fermentum porta sem, non hendrerit enim bibendum consectetur. Fusce diam est, porttitor vehicula gravida at, accumsan bibendum tincidunt imperdiet. Maecenas quis magna faucibus, varius ante sit amet, varius augue. Praesent aliquam, augue ac pulvinar accumsan Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae quidem libero, odio sit incidunt cupiditate officia veritatis tenetur similique labore. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Molestiae, exercitationem! Recusandae libero cumque culpa assumenda ullam ratione ab esse repellat magnam, cum doloremque! Corrupti, cumque labore quibusdam, voluptatem, minima commodi dolore nemo quisquam tempora aut vero similique esse aliquid provident! Dolorem facere quo nihil voluptas repudiandae? Temporibus officia enim eum?', 'project-item-5.jpg', '2024-06-05 19:28:58', '2024-06-05 19:28:58', NULL),
(6, 'Long Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat, est....', 'Long Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat, est....', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem... Mauris fermentum porta sem, non hendrerit enim bibendum consectetur. Fusce diam est, porttitor vehicula gravida at, accumsan bibendum tincidunt imperdiet. Maecenas quis magna faucibus, varius ante sit amet, varius augue. Praesent aliquam, augue ac pulvinar accumsan Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae quidem libero, odio sit incidunt cupiditate officia veritatis tenetur similique labore. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Molestiae, exercitationem! Recusandae libero cumque culpa assumenda ullam ratione ab esse repellat magnam, cum doloremque! Corrupti, cumque labore quibusdam, voluptatem, minima commodi dolore nemo quisquam tempora aut vero similique esse aliquid provident! Dolorem facere quo nihil voluptas repudiandae? Temporibus officia enim eum?', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem... Mauris fermentum porta sem, non hendrerit enim bibendum consectetur. Fusce diam est, porttitor vehicula gravida at, accumsan bibendum tincidunt imperdiet. Maecenas quis magna faucibus, varius ante sit amet, varius augue. Praesent aliquam, augue ac pulvinar accumsan Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae quidem libero, odio sit incidunt cupiditate officia veritatis tenetur similique labore. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Molestiae, exercitationem! Recusandae libero cumque culpa assumenda ullam ratione ab esse repellat magnam, cum doloremque! Corrupti, cumque labore quibusdam, voluptatem, minima commodi dolore nemo quisquam tempora aut vero similique esse aliquid provident! Dolorem facere quo nihil voluptas repudiandae? Temporibus officia enim eum?', 'project-item-6.jpg', '2024-06-05 19:28:58', '2024-06-05 19:28:58', NULL),
(7, 'Long Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat, est....', 'Long Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat, est....', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem... Mauris fermentum porta sem, non hendrerit enim bibendum consectetur. Fusce diam est, porttitor vehicula gravida at, accumsan bibendum tincidunt imperdiet. Maecenas quis magna faucibus, varius ante sit amet, varius augue. Praesent aliquam, augue ac pulvinar accumsan Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae quidem libero, odio sit incidunt cupiditate officia veritatis tenetur similique labore. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Molestiae, exercitationem! Recusandae libero cumque culpa assumenda ullam ratione ab esse repellat magnam, cum doloremque! Corrupti, cumque labore quibusdam, voluptatem, minima commodi dolore nemo quisquam tempora aut vero similique esse aliquid provident! Dolorem facere quo nihil voluptas repudiandae? Temporibus officia enim eum?', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem... Mauris fermentum porta sem, non hendrerit enim bibendum consectetur. Fusce diam est, porttitor vehicula gravida at, accumsan bibendum tincidunt imperdiet. Maecenas quis magna faucibus, varius ante sit amet, varius augue. Praesent aliquam, augue ac pulvinar accumsan Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae quidem libero, odio sit incidunt cupiditate officia veritatis tenetur similique labore. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Molestiae, exercitationem! Recusandae libero cumque culpa assumenda ullam ratione ab esse repellat magnam, cum doloremque! Corrupti, cumque labore quibusdam, voluptatem, minima commodi dolore nemo quisquam tempora aut vero similique esse aliquid provident! Dolorem facere quo nihil voluptas repudiandae? Temporibus officia enim eum?', 'project-item-7.jpg', '2024-06-05 19:28:58', '2024-06-05 19:28:58', NULL),
(8, 'Long Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat, est....', 'Long Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat, est....', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem... Mauris fermentum porta sem, non hendrerit enim bibendum consectetur. Fusce diam est, porttitor vehicula gravida at, accumsan bibendum tincidunt imperdiet. Maecenas quis magna faucibus, varius ante sit amet, varius augue. Praesent aliquam, augue ac pulvinar accumsan Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae quidem libero, odio sit incidunt cupiditate officia veritatis tenetur similique labore. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Molestiae, exercitationem! Recusandae libero cumque culpa assumenda ullam ratione ab esse repellat magnam, cum doloremque! Corrupti, cumque labore quibusdam, voluptatem, minima commodi dolore nemo quisquam tempora aut vero similique esse aliquid provident! Dolorem facere quo nihil voluptas repudiandae? Temporibus officia enim eum?', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem... Mauris fermentum porta sem, non hendrerit enim bibendum consectetur. Fusce diam est, porttitor vehicula gravida at, accumsan bibendum tincidunt imperdiet. Maecenas quis magna faucibus, varius ante sit amet, varius augue. Praesent aliquam, augue ac pulvinar accumsan Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae quidem libero, odio sit incidunt cupiditate officia veritatis tenetur similique labore. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Molestiae, exercitationem! Recusandae libero cumque culpa assumenda ullam ratione ab esse repellat magnam, cum doloremque! Corrupti, cumque labore quibusdam, voluptatem, minima commodi dolore nemo quisquam tempora aut vero similique esse aliquid provident! Dolorem facere quo nihil voluptas repudiandae? Temporibus officia enim eum?', 'project-item-8.jpg', '2024-06-05 19:28:58', '2024-06-05 19:28:58', NULL),
(9, 'Long Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat, est....', 'Long Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat, est....', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem... Mauris fermentum porta sem, non hendrerit enim bibendum consectetur. Fusce diam est, porttitor vehicula gravida at, accumsan bibendum tincidunt imperdiet. Maecenas quis magna faucibus, varius ante sit amet, varius augue. Praesent aliquam, augue ac pulvinar accumsan Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae quidem libero, odio sit incidunt cupiditate officia veritatis tenetur similique labore. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Molestiae, exercitationem! Recusandae libero cumque culpa assumenda ullam ratione ab esse repellat magnam, cum doloremque! Corrupti, cumque labore quibusdam, voluptatem, minima commodi dolore nemo quisquam tempora aut vero similique esse aliquid provident! Dolorem facere quo nihil voluptas repudiandae? Temporibus officia enim eum?', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem consectetur adipisicing elit. Eos, nemo provident. Doloribus nobis laborum, inventore magni voluptate voluptas pariatur rem... Mauris fermentum porta sem, non hendrerit enim bibendum consectetur. Fusce diam est, porttitor vehicula gravida at, accumsan bibendum tincidunt imperdiet. Maecenas quis magna faucibus, varius ante sit amet, varius augue. Praesent aliquam, augue ac pulvinar accumsan Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae quidem libero, odio sit incidunt cupiditate officia veritatis tenetur similique labore. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Molestiae, exercitationem! Recusandae libero cumque culpa assumenda ullam ratione ab esse repellat magnam, cum doloremque! Corrupti, cumque labore quibusdam, voluptatem, minima commodi dolore nemo quisquam tempora aut vero similique esse aliquid provident! Dolorem facere quo nihil voluptas repudiandae? Temporibus officia enim eum?', 'project-item-9.jpg', '2024-06-05 19:28:58', '2024-06-05 19:28:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2024-06-05 19:28:56', '2024-06-05 19:28:56'),
(2, 'hvjh', 'web', '2024-06-07 23:48:00', '2024-06-07 23:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_details`
--

CREATE TABLE `service_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `details_ar` text DEFAULT NULL,
  `details_en` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_details`
--

INSERT INTO `service_details` (`id`, `details_ar`, `details_en`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'In quis luctus dolor. Sed ac libero arcu. Phasellus vulputate ultrices augue, eget feugiat lectus efficitur in. Nulla non pharetra justo. Nunc viverra consectetur bibendum', 'In quis luctus dolor. Sed ac libero arcu. Phasellus vulputate ultrices augue, eget feugiat lectus efficitur in. Nulla non pharetra justo. Nunc viverra consectetur bibendum', '2024-06-05 19:28:58', '2024-06-05 19:28:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_items`
--

CREATE TABLE `service_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `details_ar` text DEFAULT NULL,
  `details_en` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_items`
--

INSERT INTO `service_items` (`id`, `name_ar`, `name_en`, `details_ar`, `details_en`, `photo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Medical Equipment', 'Medical Equipment', 'Ut elit tellus, luctus nec magna mattis et, pulvinar dapibus lorem leo ultricies et vitae enim', 'Ut elit tellus, luctus nec magna mattis et, pulvinar dapibus lorem leo ultricies et vitae enim', 'service-item-1.png', '2024-06-05 19:28:59', '2024-06-05 19:28:59', NULL),
(2, 'Planning Consultation', 'Planning Consultation', 'Ut elit tellus, luctus nec magna mattis et, pulvinar dapibus lorem leo ultricies et vitae enim', 'Ut elit tellus, luctus nec magna mattis et, pulvinar dapibus lorem leo ultricies et vitae enim', 'service-item-2.webp', '2024-06-05 19:28:59', '2024-06-05 19:28:59', NULL),
(3, 'Medical Equipment Supply', 'Medical Equipment Supply', 'Ut elit tellus, luctus nec magna mattis et, pulvinar dapibus lorem leo ultricies et vitae enim', 'Ut elit tellus, luctus nec magna mattis et, pulvinar dapibus lorem leo ultricies et vitae enim', 'service-item-3.png', '2024-06-05 19:28:59', '2024-06-05 19:28:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `details_ar` text DEFAULT NULL,
  `details_en` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name_ar`, `name_en`, `details_ar`, `details_en`, `photo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'BIOHEALUX', 'BIOHEALUX', 'Medical Equipment Planning', 'Medical Equipment Planning Consultation Services', 'slider-1.jpg', '2024-06-05 19:28:59', '2024-06-05 19:28:59', NULL),
(2, 'BIOHEALUX', 'BIOHEALUX', 'Medical Equipment Supply', 'Medical Equipment Supply', 'slider-1.jpg', '2024-06-05 19:29:00', '2024-06-05 19:29:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slider_footers`
--

CREATE TABLE `slider_footers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `details_ar` text DEFAULT NULL,
  `details_en` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_footers`
--

INSERT INTO `slider_footers` (`id`, `name_ar`, `name_en`, `details_ar`, `details_en`, `photo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Medical Equipment', 'Medical Equipment', 'Lorem ipsum dolor, sit amet consectetur', 'Lorem ipsum dolor, sit amet consectetur', 'slider-footer-1.png', '2024-06-05 19:28:59', '2024-06-05 19:28:59', NULL),
(2, 'Planning Consultation', 'Planning Consultation', 'Lorem ipsum dolor, sit amet consectetur', 'Lorem ipsum dolor, sit amet consectetur', 'slider-footer-2.webp', '2024-06-05 19:28:59', '2024-06-05 19:28:59', NULL),
(3, 'Medical Equipment Supply', 'Medical Equipment Supply', 'Lorem ipsum dolor, sit amet consectetur', 'Lorem ipsum dolor, sit amet consectetur', 'slider-footer-3.png', '2024-06-05 19:28:59', '2024-06-05 19:28:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `roles_name` text NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `mobile`, `password`, `photo`, `roles_name`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ahmed Nabil', 'ahmednassag@gmail.com', NULL, '01016856433', '$2y$10$iHtyBxiHU9UWOB23Hw5axe74.zEI9is/LWzlgR1kuBPP/IQpw.1Wy', 'avatar.jpg', '[\"Admin\"]', 1, NULL, '2024-06-05 19:28:55', '2024-06-09 17:28:45');

-- --------------------------------------------------------

--
-- Table structure for table `who_we_are_details`
--

CREATE TABLE `who_we_are_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `details_ar` text DEFAULT NULL,
  `details_en` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `who_we_are_details`
--

INSERT INTO `who_we_are_details` (`id`, `details_ar`, `details_en`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris', '2024-06-05 19:29:00', '2024-06-05 19:29:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `who_we_are_faqs`
--

CREATE TABLE `who_we_are_faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `details_ar` text DEFAULT NULL,
  `details_en` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `who_we_are_faqs`
--

INSERT INTO `who_we_are_faqs` (`id`, `name_ar`, `name_en`, `details_ar`, `details_en`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Why Us?', 'Why Us?', 'Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation', 'Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation', '2024-06-05 19:29:00', '2024-06-05 19:29:00', NULL),
(2, 'Explore Our Service', 'Explore Our Service', 'Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation', 'Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation', '2024-06-05 19:29:00', '2024-06-05 19:29:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `who_we_are_sides`
--

CREATE TABLE `who_we_are_sides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `details_ar` text DEFAULT NULL,
  `details_en` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `who_we_are_sides`
--

INSERT INTO `who_we_are_sides` (`id`, `name_ar`, `name_en`, `details_ar`, `details_en`, `photo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'BIOHEALUX', 'BIOHEALUX', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'who-we-are-side-1.jpg', '2024-06-05 19:29:00', '2024-06-05 19:29:00', NULL),
(2, 'BIOHEALUX', 'BIOHEALUX', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'who-we-are-side-1.jpg', '2024-06-05 19:29:00', '2024-06-05 19:29:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company_informations`
--
ALTER TABLE `company_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_items`
--
ALTER TABLE `course_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `parteners`
--
ALTER TABLE `parteners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `project_details`
--
ALTER TABLE `project_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_items`
--
ALTER TABLE `project_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `service_details`
--
ALTER TABLE `service_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_items`
--
ALTER TABLE `service_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_footers`
--
ALTER TABLE `slider_footers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`);

--
-- Indexes for table `who_we_are_details`
--
ALTER TABLE `who_we_are_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `who_we_are_faqs`
--
ALTER TABLE `who_we_are_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `who_we_are_sides`
--
ALTER TABLE `who_we_are_sides`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company_informations`
--
ALTER TABLE `company_informations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course_items`
--
ALTER TABLE `course_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `parteners`
--
ALTER TABLE `parteners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_details`
--
ALTER TABLE `project_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project_items`
--
ALTER TABLE `project_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `service_details`
--
ALTER TABLE `service_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service_items`
--
ALTER TABLE `service_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `slider_footers`
--
ALTER TABLE `slider_footers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `who_we_are_details`
--
ALTER TABLE `who_we_are_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `who_we_are_faqs`
--
ALTER TABLE `who_we_are_faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `who_we_are_sides`
--
ALTER TABLE `who_we_are_sides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
