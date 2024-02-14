-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2024 at 03:32 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php65_laravel_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `display_at_home_page` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `display_at_home_page`) VALUES
(1, 'iPhone', 0, 1),
(2, 'Samsung', 0, 1),
(3, 'Xiaomi', 0, 1),
(4, 'Oppo', 0, 0),
(5, 'Huawei', 0, 0),
(6, 'Redmi', 3, 0),
(7, 'Realme', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `address`, `phone`) VALUES
(1, 'Phạm Hồng Thái', 'phamthai2606@gmail.com', '$2y$12$Na2yjqUNIpzkPGbHmiFO4ehscjrUdxL0fAcdlff4ivdjMjdSGz0ZW', 'Thái Bình', '0862698173'),
(2, 'Nguyễn Văn A', 'nva@gmail.com', '$2y$12$T0Y6iOfa4WQrFxqBtf2ky.XyFYzSowIEXIg5he01bUbJtHGWYSJB.', 'Hà Nội', '0123456789'),
(3, 'Hà Thị Lam', 'halam0805@gmail.com', '$2y$12$1hmTVVyh2WN3dACykfsXFuiT0OYgF3E98p2M4iT7bQEse2MoXi.9e', 'Thái Bình', '0123456789'),
(4, 'Phạm Thị Bích Ngọc', 'phamthibichngoc@gmail.com', '$2y$12$tJM76Az97elF.RHRPJkDfeQ1Hx.CbVUQo3bajOTus.6VmSJ0MFp0u', 'Vĩnh Phúc', '0123456789'),
(5, 'abc', 'abc@gmail.com', '$2y$12$JzkMMRVVkhQWAHUieBJK1ePyA86hmgY9oHBt8fns7sHkCPyFsjewC', 'abc', '01234567'),
(6, 'Nguyễn Thị Khánh Huyền', 'khanhhuyen@gmail.com', '$2y$12$KS214.xyRYPy158Pk9rZeePC.ZejBGpshnKWVEL.N8e9.KCRzj5k.', 'Hà Nội', '0123456789'),
(7, 'Nguyễn Văn D', 'nvd@gmail.com', '$2y$12$XY6prWH80EPpOAdXdwE.deNYdBbs3AhIv3MI9TvxSyb9T6ZQh1eqa', 'abc', '0123456789'),
(8, 'Nguyễn Trọng Đức Minh', 'nguyenminh@gmail.com', '$2y$12$ucnNwFI7XAf1hzxlqiFw4O/M0z/bIdhkqfcc1QwHb6FQB.L/N4GH6', 'Bắc Giang', '0123456789');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_28_133330_create_categories_table', 2),
(9, '2023_12_03_025317_create_products_table', 3),
(10, '2023_12_03_135824_create_news_table', 4),
(11, '2023_12_13_023049_create_customers_table', 5),
(12, '2023_12_14_075344_create_orders_table', 6),
(13, '2023_12_14_075436_create_order_details_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(500) NOT NULL,
  `image` varchar(500) NOT NULL,
  `description` varchar(4000) NOT NULL,
  `content` text NOT NULL,
  `hot` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `name`, `image`, `description`, `content`, `hot`, `created_at`, `updated_at`) VALUES
(1, 'Đánh giá smartphone chip S660, RAM 8 GB, giá 6,99 triệu tại Việt Nam', '1701616003_tintuc1.png', '<p>Đánh giá smartphone chip S660, RAM 8 GB, giá 6,99 triệu tại Việt Nam.</p>', '<p>Tại thị trường Việt Nam, Realme 2 Pro được bán với giá cao nhất 6,99 triệu đồng. Máy được trang bị chip Qualcomm Snapdragon 660, RAM 4/6/8 GB camera kép.</p>', 1, NULL, '2023-12-26 21:28:56'),
(2, 'Khám phá smartphone màn hình gập được đầu tiên của Samsung', '1701656840_1701651951_tintuc2.png', '<p>Samsung chỉ mới trình diễn mẫu smartphone dùng màn hình gập lại được đầu tiên của mình, các thông tin chi tiết về sản phẩm vẫn chưa được công bố. Tuy nhiên, các dữ liệu này hiện đã rò rỉ khá đầy đủ.</p>', '<p>Có hai ưu điểm chính. Đầu tiên, nó có thể tăng gấp đôi không gian màn hình có sẵn. Ví dụ sản phẩm của Samsung có màn hình 4,5 inch cho phép bạn sử dụng khi đóng, sau đó mở ra ở chế độ tablet với màn hình 7,3 inch. Thứ hai, nó cho phép thực hiện đa nhiệm trong 3 khu vực cùng lúc, khác biệt với Axon M cho phép bạn sử dụng toàn bộ màn hình cho một ứng dụng, tải ứng dụng riêng trên mỗi màn hình và phản chiếu cùng một ứng dụng trên cả hai màn hình.</p>', 1, NULL, '2023-12-26 21:28:14'),
(3, 'Doanh số iPhone XS và iPhone XR thảm hại, Apple sản xuất lại iPhone X', '1701701964_tintuc3.png', '<p>Doanh số iPhone XS và iPhone XR thảm hại, Apple sản xuất lại iPhone X.</p>', '<p>Theo The Wall Street Journal, Apple vừa thỏa thuận với Samsung để mua một số lượng màn hình OLED nhất định. Nguyên do là người dùng không quá mặn mà với các iPhone mới của Apple, dẫn đến số lượng màn hình OLED để trang bị cho máy cũng không đạt được thỏa thuận ban đầu. Do đó, Apple chuyển sang mô hình iPhone X. Trước đó, Apple đã ngừng bán iPhone X tại các cửa hàng khi iPhone XS được phát hành lần đầu tiên. Trong quá khứ, Apple cũng đã nhiều lần bán lại các model đời cũ và sức mua rất tốt vì giá bán thấp hơn nhiều so với những mẫu mới. The Verge cũng cho biết, Apple đã cắt giảm số lượng sản xuất cả 3 mẫu iPhone mới của mình do nhu cầu mua thấp hơn dự kiến. Đặc biệt là mẫu giá rẻ iPhone XR, khi mà người dùng cân nhắc lựa chọn mẫu iPhone 8 của năm ngoái có giá rẻ hơn so với mẫu mới.</p>', 1, NULL, '2023-12-26 21:30:33'),
(4, 'Chiếc điện thoại thông minh này của LG sẽ có tới 16 Camera', '1701702086_tintuc4.png', '<p>Chiếc điện thoại thông minh này của LG sẽ có tới 16 Camera.</p>', '<p>Theo đó, một bằng sáng chế mới được LG cung cấp bất ngờ rò rỉ trên trang công nghệ LetsGoDigital. Nội dung đề cập tới một điện thoại thông minh của hãng LG có hệ thống camera chính gồm 16 ống kính. Đây có lẽ là hệ thống camera đặc biệt, có số lượng ống kính nhiều nhất tính tới thời điểm hiện tại. Các chuyên gia công nghệ nhận định, 16 ống kính này sẽ chụp ảnh cùng một lúc, trong đó hệ thống camera cũng hỗ trợ điều chỉnh góc chụp rộng tự động, định vị cảnh chụp tốt nhất cho người dùng. Ngoài ra, điện thoại đặc biệt này sẽ có một camera selfie OL ở mặt trước.</p>', 1, NULL, '2023-12-26 21:28:02'),
(5, 'Những tiêu chí bạn không nên bỏ qua khi mua smartphone 2018', '1701702299_tintuc5.png', '<p>Năm 2018, chứng kiến nhiều công nghệ nổi bật được trang bị trên các dòng smartphone mới bao gồm nhận diện khuôn mặt, AI camera hay màn hình hỗ trợ HDR.</p>', '<p>Ngoài thiết kế hay camera, smartphone hiện nay được trang bị nhiều tính năng như màn hình HDR, trí tuệ nhân tạo AI… Đây được xem là tiêu chuẩn mới, khi lựa chọn smartphone. 2018 được xem làm năm phát triển mạnh mẽ của chip AI. Con chip này xuất hiện trên iPhone XS Max, Pixel 3 XL hay những model tầm trung như Oppo F9… Chip AI sở hữu sức mạnh tính toán siêu nhanh. Giúp giải quyết được nhiều tác vụ phức tạp hơn như nhận diện giọng nói, khuôn mặt, dịch ngôn ngữ hay tìm kiếm thông tin. Ngoài ra, AI còn giúp người dùng xác định ngữ cảnh khi chụp như thức ăn, hoa, bầu trời hay thú cưng… từ đó tự động điều chỉnh ánh sáng, màu sắc cho phù hợp.</p>', 1, NULL, '2023-12-26 21:03:05');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `price` float NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `date`, `price`, `status`) VALUES
(1, 1, '2023-12-20', 28817200, 1),
(2, 4, '2023-12-20', 38709900, 1),
(3, 3, '2023-12-20', 17233000, 1),
(4, 6, '2023-12-20', 40485000, 1),
(5, 8, '2023-12-20', 7191000, 1),
(7, 1, '2023-12-22', 36497600, 0),
(8, 1, '2024-01-05', 7191000, 0),
(9, 1, '2024-01-05', 13993000, 1),
(10, 1, '2024-01-05', 19225200, 0),
(11, 1, '2024-01-08', 7191000, 1),
(12, 1, '2024-01-08', 7191000, 1),
(13, 1, '2024-01-08', 9592000, 0),
(14, 1, '2024-01-08', 1990000, 1),
(15, 4, '2024-01-08', 33089400, 1),
(16, 4, '2024-01-08', 7191000, 1),
(18, 8, '2024-01-08', 15112200, 0),
(19, 8, '2024-01-08', 13993000, 1),
(20, 8, '2024-01-08', 40485000, 0),
(21, 8, '2024-01-08', 7191000, 1),
(22, 8, '2024-01-09', 11082600, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(1, 1, 3, 1, 9592000),
(2, 1, 10, 2, 9612600),
(3, 2, 24, 2, 11082600),
(4, 2, 21, 1, 16544700),
(5, 3, 2, 1, 7641000),
(6, 3, 30, 1, 9592000),
(7, 4, 25, 2, 20242500),
(10, 5, 28, 1, 7191000),
(11, 7, 28, 2, 7191000),
(12, 7, 9, 2, 5516500),
(13, 7, 18, 1, 11082600),
(14, 8, 7, 1, 7191000),
(15, 9, 29, 1, 13993000),
(16, 10, 27, 2, 9612600),
(17, 11, 28, 1, 7191000),
(18, 12, 7, 1, 7191000),
(19, 13, 3, 1, 9592000),
(20, 14, 4, 1, 1990000),
(21, 15, 21, 2, 16544700),
(22, 16, 28, 1, 7191000),
(23, 18, 26, 2, 7556100),
(24, 19, 29, 1, 13993000),
(25, 20, 13, 2, 20242500),
(26, 21, 28, 1, 7191000),
(27, 22, 24, 1, 11082600);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL,
  `category_id` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `discount` int(11) NOT NULL,
  `description` varchar(4000) NOT NULL,
  `content` varchar(4000) NOT NULL,
  `promotion` varchar(500) NOT NULL,
  `warranty` varchar(500) NOT NULL,
  `hot` int(11) NOT NULL,
  `ship` varchar(500) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `category_id`, `quantity`, `price`, `discount`, `description`, `content`, `promotion`, `warranty`, `hot`, `ship`, `created_at`, `updated_at`) VALUES
(1, 'Xiaomi Redmi 12C', '1701656925_xiaomi-redmi-12c-grey-thumb-600x600.jpg', '3', 20, 3990000, 30, '<p>Điện thoại Xiaomi Redmi 12C 128GB</p>', '<p>Màn hình: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; IPS LCD 6.71\" HD+ &nbsp; &nbsp;</p><p>Hệ điều hành: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Android 12&nbsp;</p><p>Camera sau: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Chính 50 MP &amp; Phụ QVGA&nbsp;</p><p>Camera trước: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5 MP&nbsp;</p><p>Chip: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; MediaTek Helio G85&nbsp;</p><p>RAM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4 GB&nbsp;</p><p>Dung lượng lưu trữ: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 128 GB&nbsp;</p><p>SIM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2 Nano SIM Hỗ trợ 4G&nbsp;</p><p>Pin, Sạc: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5000 mAh 10W</p>', '<p>Sản phẩm sẽ được giảm 30000đ khi mua hàng online bằng thẻ BIDV</p>', '<p>Trong hộp có: Điện thoại, Sạc, Tai nghe, Sách hướng dẫn, Cây lấy sim.&nbsp;</p><p>Bảo hành chính hãng 12 tháng.&nbsp;</p><p>1 đổi 1 trong vòng 1 tháng nếu có lỗi của nhà sản xuất, đổi sản phẩm tại nhà trong 1 ngày.</p>', 1, '<p>Giao hàng trong 2 giờ</p>', NULL, '2023-12-19 04:27:23'),
(2, 'Xiaomi Redmi Note 12 Pro', '1701684653_xiaomi-redmi-note-12-4g-mono-den-256gb-600x600.jpg', '3', 20, 8490000, 10, '<p>Điện thoại Xiaomi Redmi Note 12 Pro 5G</p>', '<p>Màn hình: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; AMOLED 6.67\" Full HD+ &nbsp; &nbsp;</p><p>Hệ điều hành: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Android 12&nbsp;</p><p>Camera sau: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Chính 50 MP &amp; Phụ 8 MP, 2 MP&nbsp;</p><p>Camera trước: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 16 MP&nbsp;</p><p>Chip: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; MediaTek Dimensity 1080 8 nhân&nbsp;</p><p>RAM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;8 GB&nbsp;</p><p>Dung lượng lưu trữ: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 256 GB&nbsp;</p><p>SIM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2 Nano SIM Hỗ trợ 5G</p><p>Pin, Sạc: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5000 mAh 67 W</p>', '<p>Sản phẩm sẽ được giảm 30000đ khi mua hàng online bằng thẻ BIDV</p>', '<p>Trong hộp có: Điện thoại, Sạc, Tai nghe, Sách hướng dẫn, Cây lấy sim.&nbsp;</p><p>Bảo hành chính hãng 12 tháng.&nbsp;</p><p>1 đổi 1 trong vòng 1 tháng nếu có lỗi của nhà sản xuất, đổi sản phẩm tại nhà trong 1 ngày.</p>', 0, '<p>Giao hàng trong 2 giờ</p>', NULL, '2023-12-19 04:27:01'),
(3, 'Xiaomi 12T', '1701685285_xiaomi-12t-thumb-600x600.jpg', '3', 30, 11990000, 20, '<p>Điện thoại Xiaomi 12T 5G 256GB</p>', '<p>Màn hình: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; AMOLED 6.67\" 1.5K &nbsp; &nbsp;</p><p>Hệ điều hành: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Android 12&nbsp;</p><p>Camera sau: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Chính 108 MP &amp; Phụ 8 MP, 2 MP&nbsp;</p><p>Camera trước: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 20 MP&nbsp;</p><p>Chip: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;MediaTek Dimensity 8100 Ultra 8 nhân&nbsp;</p><p>RAM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;8 GB&nbsp;</p><p>Dung lượng lưu trữ: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 256 GB&nbsp;</p><p>SIM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2 Nano SIM Hỗ trợ 5G&nbsp;</p><p>Pin, Sạc: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5000 mAh 120 W</p>', '<p>Sản phẩm sẽ được giảm 30000đ khi mua hàng online bằng thẻ BIDV</p>', '<p>Trong hộp có: Điện thoại, Sạc, Tai nghe, Sách hướng dẫn, Cây lấy sim.&nbsp;</p><p>Bảo hành chính hãng 12 tháng.&nbsp;</p><p>1 đổi 1 trong vòng 1 tháng nếu có lỗi của nhà sản xuất, đổi sản phẩm tại nhà trong 1 ngày.</p>', 1, '<p>Giao hàng trong 2 giờ</p>', NULL, '2023-12-19 04:26:40'),
(4, 'Xiaomi Redmi A1', '1701685548_Xiaomi-Redmi-A1-thumb-xanh-duong-600x600.jpg', '3', 30, 1990000, 0, '<p>Điện thoại Xiaomi Redmi A1</p>', '<p>Màn hình: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; IPS LCD 6.52\" HD+ &nbsp; &nbsp;</p><p>Hệ điều hành: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Android 12 (Go Edition)&nbsp;</p><p>Camera sau: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Chính 8 MP &amp; Phụ QVGA&nbsp;</p><p>Camera trước: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;5 MP</p><p>Chip: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; MediaTek MT6761 (Helio A22)&nbsp;</p><p>RAM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2 GB&nbsp;</p><p>Dung lượng lưu trữ: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 32 GB&nbsp;</p><p>SIM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2 Nano SIM Hỗ trợ 4G&nbsp;</p><p>Pin, Sạc: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5000 mAh 10 W</p>', '<p>Sản phẩm sẽ được giảm 30000đ khi mua hàng online bằng thẻ BIDV</p>', '<p>Trong hộp có: Điện thoại, Sạc, Tai nghe, Sách hướng dẫn, Cây lấy sim.&nbsp;</p><p>Bảo hành chính hãng 12 tháng.&nbsp;</p><p>1 đổi 1 trong vòng 1 tháng nếu có lỗi của nhà sản xuất, đổi sản phẩm tại nhà trong 1 ngày.</p>', 0, '<p>Giao hàng trong 2 giờ</p>', NULL, '2023-12-19 04:26:12'),
(5, 'Xiaomi 13 5G', '1701685809_xiaomi-13-thumb-den-600x600.jpg', '3', 15, 19990000, 30, '<p>Điện thoại Xiaomi 13 5G</p>', '<p>Màn hình: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; AMOLED 6.36\" Full HD+ &nbsp; &nbsp;</p><p>Hệ điều hành: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Android 13&nbsp;</p><p>Camera sau: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Chính 50 MP &amp; Phụ 12 MP, 10 MP&nbsp;</p><p>Camera trước: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 32 MP&nbsp;</p><p>Chip: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Snapdragon 8 Gen 2 8 nhân&nbsp;</p><p>RAM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;8 GB&nbsp;</p><p>Dung lượng lưu trữ: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 256 GB&nbsp;</p><p>SIM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2 Nano SIM Hỗ trợ 5G&nbsp;</p><p>Pin, Sạc: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4500 mAh 67 W</p>', '<p>Sản phẩm sẽ được giảm 30000đ khi mua hàng online bằng thẻ BIDV</p>', '<p>Trong hộp có: Điện thoại, Sạc, Tai nghe, Sách hướng dẫn, Cây lấy sim.&nbsp;</p><p>Bảo hành chính hãng 12 tháng.&nbsp;</p><p>1 đổi 1 trong vòng 1 tháng nếu có lỗi của nhà sản xuất, đổi sản phẩm tại nhà trong 1 ngày.</p>', 1, '<p>Giao hàng trong 2 giờ</p>', NULL, '2023-12-19 04:25:50'),
(6, 'Xiaomi 12', '1701686254_Xiaomi-12-xam-thumb-mau-600x600.jpg', '3', 20, 13990000, 32, '<p>Điện thoại Xiaomi 12 5G</p>', '<p>Màn hình: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; AMOLED 6.28\" Full HD+ &nbsp; &nbsp;</p><p>Hệ điều hành: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Android 12&nbsp;</p><p>Camera sau: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Chính 50 MP &amp; Phụ 13 MP, 5 MP&nbsp;</p><p>Camera trước: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 32 MP&nbsp;</p><p>Chip: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Snapdragon 8 Gen 1&nbsp;</p><p>RAM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;8 GB&nbsp;</p><p>Dung lượng lưu trữ: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 256 GB&nbsp;</p><p>SIM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2 Nano SIM Hỗ trợ 5G</p><p>Pin, Sạc: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4500 mAh 67 W</p>', '<p>Sản phẩm sẽ được giảm 30000đ khi mua hàng online bằng thẻ BIDV</p>', '<p>Trong hộp có: Điện thoại, Sạc, Tai nghe, Sách hướng dẫn, Cây lấy sim.&nbsp;</p><p>Bảo hành chính hãng 12 tháng.&nbsp;</p><p>1 đổi 1 trong vòng 1 tháng nếu có lỗi của nhà sản xuất, đổi sản phẩm tại nhà trong 1 ngày.</p>', 1, '<p>Giao hàng trong 2 giờ</p>', NULL, '2023-12-19 04:25:28'),
(7, 'Xiaomi Redmi Note 12 Pro', '1701686452_xiaomi-redmi-12-pro-4g-xanh-thumb-600x600.jpg', '3', 50, 7990000, 10, '<p>Điện thoại Xiaomi Redmi Note 12 Pro 256GB</p>', '<p>Màn hình: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; AMOLED 6.67\" Full HD+ &nbsp; &nbsp;</p><p>Hệ điều hành: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Android 11&nbsp;</p><p>Camera sau: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Chính 108 MP &amp; Phụ 8 MP, 2 MP, 2 MP&nbsp;</p><p>Camera trước: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 16 MP&nbsp;</p><p>Chip: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Snapdragon 732G&nbsp;</p><p>RAM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;8 GB&nbsp;</p><p>Dung lượng lưu trữ: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 256 GB&nbsp;</p><p>SIM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2 Nano SIM (SIM 2 chung khe thẻ nhớ) Hỗ trợ 4G</p><p>Pin, Sạc: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;5000 mAh 67 W</p>', '<p>Sản phẩm sẽ được giảm 30000đ khi mua hàng online bằng thẻ BIDV</p>', '<p>Trong hộp có: Điện thoại, Sạc, Tai nghe, Sách hướng dẫn, Cây lấy sim.&nbsp;</p><p>Bảo hành chính hãng 12 tháng.&nbsp;</p><p>1 đổi 1 trong vòng 1 tháng nếu có lỗi của nhà sản xuất, đổi sản phẩm tại nhà trong 1 ngày.</p>', 1, '<p>Giao hàng trong 2 giờ</p>', NULL, '2023-12-19 04:27:56'),
(8, 'Samsung Galaxy A14', '1701686670_samsung-galaxy-a14-tlte-thumb-den-600x600.jpg', '2', 32, 4990000, 10, '<p>Điện thoại Samsung Galaxy A14 6GB</p>', '<p>Màn hình: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; PLS LCD 6.6\" Full HD+ &nbsp; &nbsp;</p><p>Hệ điều hành: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Android 13&nbsp;</p><p>Camera sau: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Chính 50 MP &amp; Phụ 5 MP, 2 MP&nbsp;</p><p>Camera trước: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 13 MP&nbsp;</p><p>Chip: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Exynos 850&nbsp;</p><p>RAM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;6 GB&nbsp;</p><p>Dung lượng lưu trữ: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 128 GB&nbsp;</p><p>SIM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2 Nano SIM Hỗ trợ 4G&nbsp;</p><p>Pin, Sạc: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5000 mAh15 W</p>', '<p>Sản phẩm sẽ được giảm 30000đ khi mua hàng online bằng thẻ BIDV</p>', '<p>Trong hộp có: Điện thoại, Sạc, Tai nghe, Sách hướng dẫn, Cây lấy sim.&nbsp;</p><p>Bảo hành chính hãng 12 tháng.&nbsp;</p><p>1 đổi 1 trong vòng 1 tháng nếu có lỗi của nhà sản xuất, đổi sản phẩm tại nhà trong 1 ngày.</p>', 1, '<p>Giao hàng trong 2 giờ</p>', NULL, '2023-12-19 04:24:43'),
(9, 'Samsung Galaxy A24', '1701698105_samsung-galaxy-a24-black-thumb-600x600.jpg', '2', 30, 6490000, 15, '<p>Điện thoại Samsung Galaxy A24 6GB</p>', '<p>Màn hình: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Super AMOLED 6.5\" Full HD+ &nbsp;&nbsp;</p><p>Hệ điều hành: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Android 13&nbsp;</p><p>Camera sau: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Chính 50 MP &amp; Phụ 5 MP, 2 MP&nbsp;</p><p>Camera trước: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 13 MP&nbsp;</p><p>Chip: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; MediaTek Helio G99&nbsp;</p><p>RAM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;6 GB&nbsp;</p><p>Dung lượng lưu trữ: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 128 GB&nbsp;</p><p>SIM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2 Nano SIM Hỗ trợ 4G&nbsp;</p><p>Pin, Sạc: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5000 mAh 25 W</p>', '<p>Sản phẩm sẽ được giảm 30000đ khi mua hàng online bằng thẻ BIDV</p>', '<p>Trong hộp có: Điện thoại, Sạc, Tai nghe, Sách hướng dẫn, Cây lấy sim.&nbsp;</p><p>Bảo hành chính hãng 12 tháng.&nbsp;</p><p>1 đổi 1 trong vòng 1 tháng nếu có lỗi của nhà sản xuất, đổi sản phẩm tại nhà trong 1 ngày.</p>', 0, '<p>Giao hàng trong 2 giờ</p>', NULL, '2023-12-19 04:24:26'),
(10, 'Samsung Galaxy S21 FE', '1701698349_Samsung-Galaxy-S21-FE-vang-1-2-600x600.jpg', '2', 30, 12990000, 26, '<p>Điện thoại Samsung Galaxy S21 FE 5G (6GB/128GB)</p>', '<p>Màn hình: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Dynamic AMOLED 2X 6.4\" Full HD+ &nbsp; &nbsp;</p><p>Hệ điều hành: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Android 12&nbsp;</p><p>Camera sau: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Chính 12 MP &amp; Phụ 12 MP, 8 MP&nbsp;</p><p>Camera trước: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 32 MP&nbsp;</p><p>Chip: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Exynos 2100&nbsp;</p><p>RAM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;6 GB&nbsp;</p><p>Dung lượng lưu trữ: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 128 GB&nbsp;</p><p>SIM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2 Nano SIM Hỗ trợ 5G&nbsp;</p><p>Pin, Sạc: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4500 mAh 25 W</p>', '<p>Sản phẩm sẽ được giảm 30000đ khi mua hàng online bằng thẻ BIDV</p>', '<p>Trong hộp có: Điện thoại, Sạc, Tai nghe, Sách hướng dẫn, Cây lấy sim.&nbsp;</p><p>Bảo hành chính hãng 12 tháng.&nbsp;</p><p>1 đổi 1 trong vòng 1 tháng nếu có lỗi của nhà sản xuất, đổi sản phẩm tại nhà trong 1 ngày.</p>', 1, '<p>Giao hàng trong 2 giờ</p>', NULL, '2023-12-19 04:23:47'),
(11, 'Samsung Galaxy S23 Ultra', '1701698526_samsung-galaxy-s23-ultra-thumb-xanh-600x600.jpg', '2', 34, 36990000, 21, '<p>Điện thoại Samsung Galaxy S23 Ultra 5G 512GB</p>', '<p>Màn hình: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Dynamic AMOLED 2X 6.8\" Quad HD+ (2K+) &nbsp; &nbsp;</p><p>Hệ điều hành: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Android 13&nbsp;</p><p>Camera sau: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Chính 200 MP &amp; Phụ 12 MP, 10 MP, 10 MP&nbsp;</p><p>Camera trước: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 12 MP&nbsp;</p><p>Chip: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Snapdragon 8 Gen 2 for Galaxy&nbsp;</p><p>RAM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;12 GB&nbsp;</p><p>Dung lượng lưu trữ: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 512 GB&nbsp;</p><p>SIM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2 Nano SIM hoặc 1 Nano SIM + 1 eSIM Hỗ trợ 5G</p><p>Pin, Sạc: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5000 mAh 45 W</p>', '<p>Sản phẩm sẽ được giảm 30000đ khi mua hàng online bằng thẻ BIDV</p>', '<p>Trong hộp có: Điện thoại, Sạc, Tai nghe, Sách hướng dẫn, Cây lấy sim.&nbsp;</p><p>Bảo hành chính hãng 12 tháng.&nbsp;</p><p>1 đổi 1 trong vòng 1 tháng nếu có lỗi của nhà sản xuất, đổi sản phẩm tại nhà trong 1 ngày.</p>', 0, '<p>Giao hàng trong 2 giờ</p>', NULL, '2023-12-19 04:23:26'),
(12, 'Samsung Galaxy A34', '1701698705_samsung-galaxy-a34-thumb-den-600x600.jpg', '2', 25, 8490000, 11, '<p>Điện thoại Samsung Galaxy A34 5G 128GB</p>', '<p>Màn hình: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Super AMOLED 6.6\" Full HD+ &nbsp; &nbsp;</p><p>Hệ điều hành: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Android 13&nbsp;</p><p>Camera sau: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Chính 48 MP &amp; Phụ 8 MP, 5 MP&nbsp;</p><p>Camera trước: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 13 MP&nbsp;</p><p>Chip: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; MediaTek Dimensity 1080 8 nhân&nbsp;</p><p>RAM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;8 GB&nbsp;</p><p>Dung lượng lưu trữ: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 128 GB&nbsp;</p><p>SIM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2 Nano SIM Hỗ trợ 5G</p><p>Pin, Sạc: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5000 mAh 25 W</p>', '<p>Sản phẩm sẽ được giảm 30000đ khi mua hàng online bằng thẻ BIDV</p>', '<p>Trong hộp có: Điện thoại, Sạc, Tai nghe, Sách hướng dẫn, Cây lấy sim.&nbsp;</p><p>Bảo hành chính hãng 12 tháng.&nbsp;</p><p>1 đổi 1 trong vòng 1 tháng nếu có lỗi của nhà sản xuất, đổi sản phẩm tại nhà trong 1 ngày.</p>', 1, '<p>Giao hàng trong 2 giờ</p>', NULL, '2023-12-19 04:23:13'),
(13, 'Samsung Galaxy S23+', '1701699019_samsung-galaxy-s23-plus-600x600.jpg', '2', 30, 26990000, 25, '<p>Điện thoại Samsung Galaxy S23+ 5G 256GB</p>', '<p>Màn hình: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Dynamic AMOLED 2X 6.6\" Full HD+ &nbsp; &nbsp;</p><p>Hệ điều hành: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Android 13</p><p>Camera sau: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Chính 50 MP &amp; Phụ 12 MP, 10 MP&nbsp;</p><p>Camera trước: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 12 MP&nbsp;</p><p>Chip: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Snapdragon 8 Gen 2 for Galaxy&nbsp;</p><p>RAM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;8 GB&nbsp;</p><p>Dung lượng lưu trữ: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 256 GB&nbsp;</p><p>SIM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2 Nano SIM hoặc 1 Nano SIM + 1 eSIM Hỗ trợ 5G&nbsp;</p><p>Pin, Sạc: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4700 mAh 45 W</p>', '<p>Sản phẩm sẽ được giảm 30000đ khi mua hàng online bằng thẻ BIDV</p>', '<p>Trong hộp có: Điện thoại, Sạc, Tai nghe, Sách hướng dẫn, Cây lấy sim.&nbsp;</p><p>Bảo hành chính hãng 12 tháng.&nbsp;</p><p>1 đổi 1 trong vòng 1 tháng nếu có lỗi của nhà sản xuất, đổi sản phẩm tại nhà trong 1 ngày.</p>', 0, '<p>Giao hàng trong 2 giờ</p>', NULL, '2023-12-19 04:22:58'),
(14, 'Samsung Galaxy Z Fold4', '1701699196_samsung-galaxy-z-fold4-kem-256gb-600x600.jpg', '2', 30, 40990000, 43, '<p>Điện thoại Samsung Galaxy Z Fold4 5G 256GB</p>', '<p>Màn hình: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Dynamic AMOLED 2X Chính 7.6\" &amp; Phụ 6.2\" Quad HD+ (2K+) &nbsp; &nbsp;</p><p>Hệ điều hành: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Android 12&nbsp;</p><p>Camera sau: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Chính 50 MP &amp; Phụ 12 MP, 10 MP&nbsp;</p><p>Camera trước: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 10 MP &amp; 4 MP&nbsp;</p><p>Chip: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Snapdragon 8+ Gen 1&nbsp;</p><p>RAM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;12 GB&nbsp;</p><p>Dung lượng lưu trữ: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 256 GB&nbsp;</p><p>SIM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1 Nano SIM &amp; 1 eSIM Hỗ trợ 5G&nbsp;</p><p>Pin, Sạc: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4400 mAh 25 W</p>', '<p>Sản phẩm sẽ được giảm 30000đ khi mua hàng online bằng thẻ BIDV</p>', '<p>Trong hộp có: Điện thoại, Sạc, Tai nghe, Sách hướng dẫn, Cây lấy sim.&nbsp;</p><p>Bảo hành chính hãng 12 tháng.&nbsp;</p><p>1 đổi 1 trong vòng 1 tháng nếu có lỗi của nhà sản xuất, đổi sản phẩm tại nhà trong 1 ngày.</p>', 0, '<p>Giao hàng trong 2 giờ</p>', NULL, '2023-12-19 04:22:41'),
(15, 'iPhone 14 Pro Max', '1701699669_iphone-14-pro-max-den-thumb-600x600.jpg', '1', 17, 29490000, 6, '<p>Điện thoại iPhone 14 Pro Max 128GB</p>', '<p>Màn hình: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; OLED 6.7\" Super Retina XDR &nbsp; &nbsp;</p><p>Hệ điều hành: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; iOS 16&nbsp;</p><p>Camera sau: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Chính 48 MP &amp; Phụ 12 MP, 12 MP&nbsp;</p><p>Camera trước: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 12 MP&nbsp;</p><p>Chip: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Apple A16 Bionic&nbsp;</p><p>RAM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;6 GB&nbsp;</p><p>Dung lượng lưu trữ: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 128 GB&nbsp;</p><p>SIM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1 Nano SIM &amp; 1 eSIM Hỗ trợ 5G&nbsp;</p><p>Pin, Sạc: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4323 mAh 20 W</p>', '<p>Sản phẩm sẽ được giảm 30000đ khi mua hàng online bằng thẻ BIDV</p>', '<p>Trong hộp có: Điện thoại, Sạc, Tai nghe, Sách hướng dẫn, Cây lấy sim.&nbsp;</p><p>Bảo hành chính hãng 12 tháng.&nbsp;</p><p>1 đổi 1 trong vòng 1 tháng nếu có lỗi của nhà sản xuất, đổi sản phẩm tại nhà trong 1 ngày.</p>', 1, '<p>Giao hàng trong 2 giờ</p>', NULL, '2023-12-19 18:48:43'),
(16, 'iPhone 14 Pro', '1701699912_iphone-14-128gb-vang-thumbnew-600x600.jpeg', '1', 23, 27090000, 7, '<p>Điện thoại iPhone 14 Pro 128GB</p>', '<p>Màn hình: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; OLED 6.1\" Super Retina XDR &nbsp; &nbsp;</p><p>Hệ điều hành: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; iOS 16&nbsp;</p><p>Camera sau: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Chính 48 MP &amp; Phụ 12 MP, 12 MP&nbsp;</p><p>Camera trước: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 12 MP&nbsp;</p><p>Chip: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Apple A16 Bionic&nbsp;</p><p>RAM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;6 GB&nbsp;</p><p>Dung lượng lưu trữ: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 128 GB&nbsp;</p><p>SIM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1 Nano SIM &amp; 1 eSIM Hỗ trợ 5G&nbsp;</p><p>Pin, Sạc: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3200 mAh 20 W</p>', '<p>Sản phẩm sẽ được giảm 30000đ khi mua hàng online bằng thẻ BIDV</p>', '<p>Trong hộp có: Điện thoại, Sạc, Tai nghe, Sách hướng dẫn, Cây lấy sim.&nbsp;</p><p>Bảo hành chính hãng 12 tháng.&nbsp;</p><p>1 đổi 1 trong vòng 1 tháng nếu có lỗi của nhà sản xuất, đổi sản phẩm tại nhà trong 1 ngày.</p>', 1, '<p>Giao hàng trong 2 giờ</p>', NULL, '2023-12-19 18:48:58'),
(17, 'iPhone 14 Plus', '1701700175_iphone-14-plus-gold-thumbnew-600x600.jpeg', '1', 41, 23690000, 7, '<p>Điện thoại iPhone 14 Plus 128GB</p>', '<p>Màn hình: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; OLED 6.7\" Super Retina XDR &nbsp; &nbsp;</p><p>Hệ điều hành: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; iOS 16&nbsp;</p><p>Camera sau: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2 camera 12 MP&nbsp;</p><p>Camera trước: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 12 MP&nbsp;</p><p>Chip: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Apple A15 Bionic&nbsp;</p><p>RAM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;6 GB&nbsp;</p><p>Dung lượng lưu trữ: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 128 GB&nbsp;</p><p>SIM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1 Nano SIM &amp; 1 eSIM Hỗ trợ 5G&nbsp;</p><p>Pin, Sạc: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4325 mAh 20 W</p>', '<p>Sản phẩm sẽ được giảm 30000đ khi mua hàng online bằng thẻ BIDV</p>', '<p>Trong hộp có: Điện thoại, Sạc, Tai nghe, Sách hướng dẫn, Cây lấy sim.&nbsp;</p><p>Bảo hành chính hãng 12 tháng.&nbsp;</p><p>1 đổi 1 trong vòng 1 tháng nếu có lỗi của nhà sản xuất, đổi sản phẩm tại nhà trong 1 ngày.</p>', 1, '<p>Giao hàng trong 2 giờ</p>', NULL, '2023-12-19 18:49:16'),
(18, 'iPhone 11', '1701700346_iphone-11-trang-600x600.jpg', '1', 21, 11790000, 6, '<p>Điện thoại iPhone 11 64GB</p>', '<p>Màn hình: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; IPS LCD 6.1\" Liquid Retina &nbsp; &nbsp;</p><p>Hệ điều hành: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; iOS 15&nbsp;</p><p>Camera sau: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2 camera 12 MP&nbsp;</p><p>Camera trước: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 12 MP&nbsp;</p><p>Chip: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Apple A13 Bionic&nbsp;</p><p>RAM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4 GB&nbsp;</p><p>Dung lượng lưu trữ: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 64 GB&nbsp;</p><p>SIM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1 Nano SIM &amp; 1 eSIM Hỗ trợ 4G&nbsp;</p><p>Pin, Sạc: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3110 mAh18 W</p>', '<p>Sản phẩm sẽ được giảm 30000đ khi mua hàng online bằng thẻ BIDV</p>', '<p>Trong hộp có: Điện thoại, Sạc, Tai nghe, Sách hướng dẫn, Cây lấy sim.&nbsp;</p><p>Bảo hành chính hãng 12 tháng.&nbsp;</p><p>1 đổi 1 trong vòng 1 tháng nếu có lỗi của nhà sản xuất, đổi sản phẩm tại nhà trong 1 ngày.</p>', 0, '<p>Giao hàng trong 2 giờ</p>', NULL, '2023-12-19 18:49:30'),
(19, 'iPhone 14', '1701700526_iphone-14-128gb-vang-thumbnew-600x600.jpeg', '1', 10, 23990000, 7, '<p>Điện thoại iPhone 14 256GB</p>', '<p>Màn hình: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; OLED 6.1\" Super Retina XDR &nbsp; &nbsp;</p><p>Hệ điều hành: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; iOS 16&nbsp;</p><p>Camera sau: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2 camera 12 MP&nbsp;</p><p>Camera trước: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 12 MP&nbsp;</p><p>Chip: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Apple A15 Bionic&nbsp;</p><p>RAM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;6 GB&nbsp;</p><p>Dung lượng lưu trữ: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 256 GB&nbsp;</p><p>SIM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1 Nano SIM &amp; 1 eSIM Hỗ trợ 5G&nbsp;</p><p>Pin, Sạc: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3279 mAh 20 W</p>', '<p>Sản phẩm sẽ được giảm 30000đ khi mua hàng online bằng thẻ BIDV</p>', '<p>Trong hộp có: Điện thoại, Sạc, Tai nghe, Sách hướng dẫn, Cây lấy sim.&nbsp;</p><p>Bảo hành chính hãng 12 tháng.&nbsp;</p><p>1 đổi 1 trong vòng 1 tháng nếu có lỗi của nhà sản xuất, đổi sản phẩm tại nhà trong 1 ngày.</p>', 0, '<p>Giao hàng trong 2 giờ</p>', NULL, '2023-12-19 18:49:46'),
(20, 'iPhone 13', '1701700981_iphone-13-xanh-la-thumb-new-600x600.jpg', '1', 22, 17790000, 7, '<p>Điện thoại iPhone 13 128GB</p>', '<p>Màn hình: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; OLED 6.1\" Super Retina XDR &nbsp; &nbsp;</p><p>Hệ điều hành: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; iOS 15&nbsp;</p><p>Camera sau: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2 camera 12 MP&nbsp;</p><p>Camera trước: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 12 MP&nbsp;</p><p>Chip: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Apple A15 Bionic&nbsp;</p><p>RAM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4 GB&nbsp;</p><p>Dung lượng lưu trữ: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 128 GB&nbsp;</p><p>SIM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1 Nano SIM &amp; 1 eSIM Hỗ trợ 5G&nbsp;</p><p>Pin, Sạc: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3240 mAh 20 W</p>', '<p>Sản phẩm sẽ được giảm 30000đ khi mua hàng online bằng thẻ BIDV</p>', '<p>Trong hộp có: Điện thoại, Sạc, Tai nghe, Sách hướng dẫn, Cây lấy sim.&nbsp;</p><p>Bảo hành chính hãng 12 tháng.&nbsp;</p><p>1 đổi 1 trong vòng 1 tháng nếu có lỗi của nhà sản xuất, đổi sản phẩm tại nhà trong 1 ngày.</p>', 1, '<p>Giao hàng trong 2 giờ</p>', NULL, '2023-12-19 18:48:25'),
(21, 'iPhone 13', '1702608378_xiaomi-redmi-note-12-4g-mono-den-256gb-600x600.jpg', '1', 22, 17790000, 7, '<p>Điện thoại iPhone 13 128GB</p>', '<p>Màn hình: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; OLED 6.1\" Super Retina XDR &nbsp; &nbsp;</p><p>Hệ điều hành: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; iOS 15&nbsp;</p><p>Camera sau: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2 camera 12 MP&nbsp;</p><p>Camera trước: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 12 MP&nbsp;</p><p>Chip: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Apple A15 Bionic&nbsp;</p><p>RAM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4 GB&nbsp;</p><p>Dung lượng lưu trữ: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 128 GB&nbsp;</p><p>SIM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1 Nano SIM &amp; 1 eSIM Hỗ trợ 5G&nbsp;</p><p>Pin, Sạc: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3240 mAh 20 W</p>', '<p>Sản phẩm sẽ được giảm 30000đ khi mua hàng online bằng thẻ BIDV</p>', '<p>Trong hộp có: Điện thoại, Sạc, Tai nghe, Sách hướng dẫn, Cây lấy sim.&nbsp;</p><p>Bảo hành chính hãng 12 tháng.&nbsp;</p><p>1 đổi 1 trong vòng 1 tháng nếu có lỗi của nhà sản xuất, đổi sản phẩm tại nhà trong 1 ngày.</p>', 0, '<p>Giao hàng trong 2 giờ</p>', NULL, '2023-12-19 18:48:09'),
(22, 'iPhone 15 Pro', '1702549167_iphone-15-pro-blue-thumbnew-600x600.jpg', '1', 15, 28990000, 3, '<p>Điện thoại iPhone 15 Pro</p>', '<p>Màn hình: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; OLED 6.1\" Super Retina XDR &nbsp; &nbsp;</p><p>Hệ điều hành: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; iOS 17&nbsp;</p><p>Camera sau: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Chính 48 MP &amp; Phụ 12 MP, 12 MP&nbsp;</p><p>Camera trước: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 12 MP&nbsp;</p><p>Chip: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Apple A17 Pro 6 nhân&nbsp;</p><p>RAM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;8 GB&nbsp;</p><p>Dung lượng lưu trữ: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 128 GB&nbsp;</p><p>SIM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1 Nano SIM &amp; 1 eSIM Hỗ trợ 5G&nbsp;</p><p>Pin, Sạc: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3274 mAh 20 W</p>', '<p>Sản phẩm sẽ được giảm 30000đ khi mua hàng online bằng thẻ BIDV</p>', '<p>Trong hộp có: Điện thoại, Sạc, Tai nghe, Sách hướng dẫn, Cây lấy sim.&nbsp;</p><p>Bảo hành chính hãng 12 tháng.</p><p>1 đổi 1 trong vòng 1 tháng nếu có lỗi của nhà sản xuất, đổi sản phẩm tại nhà trong 1 ngày.</p>', 0, '<p>Giao hàng trong 2 giờ</p>', NULL, '2023-12-19 18:47:59'),
(23, 'iPhone 14 Pro Max', '1702610759_iphone-14-pro-max-den-thumb-600x600.jpg', '1', 21, 29490000, 7, '<p>Điện thoại iPhone 14 Pro Max 128GB</p>', '<p>Màn hình: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; OLED 6.7\" Super Retina XDR &nbsp; &nbsp;</p><p>Hệ điều hành: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; iOS 16&nbsp;</p><p>Camera sau: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Chính 48 MP &amp; Phụ 12 MP, 12 MP&nbsp;</p><p>Camera trước: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 12 MP&nbsp;</p><p>Chip: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Apple A16 Bionic&nbsp;</p><p>RAM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;6 GB&nbsp;</p><p>Dung lượng lưu trữ: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 128 GB&nbsp;</p><p>SIM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1 Nano SIM &amp; 1 eSIM Hỗ trợ 5G&nbsp;</p><p>Pin, Sạc: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4323 mAh 20 W</p>', '<p>Sản phẩm sẽ được giảm 30000đ khi mua hàng online bằng thẻ BIDV</p>', '<p>Trong hộp có: Điện thoại, Sạc, Tai nghe, Sách hướng dẫn, Cây lấy sim.&nbsp;</p><p>Bảo hành chính hãng 12 tháng.&nbsp;</p><p>1 đổi 1 trong vòng 1 tháng nếu có lỗi của nhà sản xuất, đổi sản phẩm tại nhà trong 1 ngày.</p>', 0, '<p>Giao hàng trong 2 giờ</p>', NULL, '2023-12-19 18:47:47'),
(24, 'iPhone 11', '1702610874_iphone-11-trang-600x600.jpg', '1', 25, 11790000, 6, '<p>Điện thoại iPhone 11 64GB</p>', '<p>Màn hình: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; IPS LCD 6.1\" Liquid Retina &nbsp; &nbsp;</p><p>Hệ điều hành: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; iOS 15&nbsp;</p><p>Camera sau: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2 camera 12 MP&nbsp;</p><p>Camera trước: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 12 MP&nbsp;</p><p>Chip: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Apple A13 Bionic&nbsp;</p><p>RAM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4 GB&nbsp;</p><p>Dung lượng lưu trữ: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 64 GB&nbsp;</p><p>SIM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1 Nano SIM &amp; 1 eSIM Hỗ trợ 4G&nbsp;</p><p>Pin, Sạc: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3110 mAh18 W</p>', '<p>Sản phẩm sẽ được giảm 30000đ khi mua hàng online bằng thẻ BIDV</p>', '<p>Trong hộp có: Điện thoại, Sạc, Tai nghe, Sách hướng dẫn, Cây lấy sim.&nbsp;</p><p>Bảo hành chính hãng 12 tháng.&nbsp;</p><p>1 đổi 1 trong vòng 1 tháng nếu có lỗi của nhà sản xuất, đổi sản phẩm tại nhà trong 1 ngày.</p>', 0, '<p>Giao hàng trong 2 giờ</p>', NULL, '2023-12-19 18:47:36'),
(25, 'Samsung Galaxy S23+', '1702611028_1701699019_samsung-galaxy-s23-plus-600x600.jpg', '2', 30, 26990000, 25, '<p>Điện thoại Samsung Galaxy S23+ 5G 256GB</p>', '<p>Màn hình: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Dynamic AMOLED 2X 6.6\" Full HD+ &nbsp; &nbsp;</p><p>Hệ điều hành: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Android 13</p><p>Camera sau: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Chính 50 MP &amp; Phụ 12 MP, 10 MP&nbsp;</p><p>Camera trước: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 12 MP&nbsp;</p><p>Chip: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Snapdragon 8 Gen 2 for Galaxy&nbsp;</p><p>RAM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;8 GB&nbsp;</p><p>Dung lượng lưu trữ: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 256 GB&nbsp;</p><p>SIM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2 Nano SIM hoặc 1 Nano SIM + 1 eSIM Hỗ trợ 5G&nbsp;</p><p>Pin, Sạc: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4700 mAh 45 W</p>', '<p>Sản phẩm sẽ được giảm 30000đ khi mua hàng online bằng thẻ BIDV</p>', '<p>Trong hộp có: Điện thoại, Sạc, Tai nghe, Sách hướng dẫn, Cây lấy sim.&nbsp;</p><p>Bảo hành chính hãng 12 tháng.&nbsp;</p><p>1 đổi 1 trong vòng 1 tháng nếu có lỗi của nhà sản xuất, đổi sản phẩm tại nhà trong 1 ngày.</p>', 0, '<p>Giao hàng trong 2 giờ</p>', NULL, '2023-12-19 18:47:26'),
(26, 'Samsung Galaxy A34', '1702611141_1701698705_samsung-galaxy-a34-thumb-den-600x600.jpg', '2', 25, 8490000, 11, '<p>Điện thoại Samsung Galaxy A34 5G 128GB</p>', '<p>Màn hình: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Super AMOLED 6.6\" Full HD+ &nbsp; &nbsp;</p><p>Hệ điều hành: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Android 13&nbsp;</p><p>Camera sau: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Chính 48 MP &amp; Phụ 8 MP, 5 MP&nbsp;</p><p>Camera trước: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 13 MP&nbsp;</p><p>Chip: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; MediaTek Dimensity 1080 8 nhân&nbsp;</p><p>RAM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;8 GB&nbsp;</p><p>Dung lượng lưu trữ: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 128 GB&nbsp;</p><p>SIM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2 Nano SIM Hỗ trợ 5G</p><p>Pin, Sạc: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5000 mAh 25 W</p>', '<p>Sản phẩm sẽ được giảm 30000đ khi mua hàng online bằng thẻ BIDV</p>', '<p>Trong hộp có: Điện thoại, Sạc, Tai nghe, Sách hướng dẫn, Cây lấy sim.&nbsp;</p><p>Bảo hành chính hãng 12 tháng.&nbsp;</p><p>1 đổi 1 trong vòng 1 tháng nếu có lỗi của nhà sản xuất, đổi sản phẩm tại nhà trong 1 ngày.</p>', 0, '<p>Giao hàng trong 2 giờ</p>', NULL, '2023-12-19 18:46:15'),
(27, 'Samsung Galaxy S21 FE', '1702611258_1701698349_Samsung-Galaxy-S21-FE-vang-1-2-600x600.jpg', '2', 30, 12990000, 26, '<p>Điện thoại Samsung Galaxy S21 FE 5G (6GB/128GB)</p>', '<p>Màn hình: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Dynamic AMOLED 2X 6.4\" Full HD+ &nbsp; &nbsp;</p><p>Hệ điều hành: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Android 12&nbsp;</p><p>Camera sau: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Chính 12 MP &amp; Phụ 12 MP, 8 MP&nbsp;</p><p>Camera trước: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 32 MP&nbsp;</p><p>Chip: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Exynos 2100&nbsp;</p><p>RAM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;6 GB&nbsp;</p><p>Dung lượng lưu trữ: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 128 GB&nbsp;</p><p>SIM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2 Nano SIM Hỗ trợ 5G&nbsp;</p><p>Pin, Sạc: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4500 mAh 25 W</p>', '<p>Sản phẩm sẽ được giảm 30000đ khi mua hàng online bằng thẻ BIDV</p>', '<p>Trong hộp có: Điện thoại, Sạc, Tai nghe, Sách hướng dẫn, Cây lấy sim.&nbsp;</p><p>Bảo hành chính hãng 12 tháng.&nbsp;</p><p>1 đổi 1 trong vòng 1 tháng nếu có lỗi của nhà sản xuất, đổi sản phẩm tại nhà trong 1 ngày.</p>', 0, '<p>Giao hàng trong 2 giờ</p>', NULL, '2023-12-19 18:45:35'),
(28, 'Xiaomi Redmi Note 12 Pro', '1702611393_1701684653_xiaomi-redmi-note-12-4g-mono-den-256gb-600x600.jpg', '3', 50, 7990000, 10, '<p>Điện thoại Xiaomi Redmi Note 12 Pro 256GB</p>', '<p>Màn hình: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; AMOLED 6.67\" Full HD+ &nbsp; &nbsp;</p><p>Hệ điều hành: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Android 11&nbsp;</p><p>Camera sau: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Chính 108 MP &amp; Phụ 8 MP, 2 MP, 2 MP&nbsp;</p><p>Camera trước: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 16 MP&nbsp;</p><p>Chip: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Snapdragon 732G&nbsp;</p><p>RAM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;8 GB&nbsp;</p><p>Dung lượng lưu trữ: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 256 GB&nbsp;</p><p>SIM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2 Nano SIM (SIM 2 chung khe thẻ nhớ) Hỗ trợ 4G</p><p>Pin, Sạc: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;5000 mAh 67 W</p>', '<p>Sản phẩm sẽ được giảm 30000đ khi mua hàng online bằng thẻ BIDV</p>', '<p>Trong hộp có: Điện thoại, Sạc, Tai nghe, Sách hướng dẫn, Cây lấy sim.&nbsp;</p><p>Bảo hành chính hãng 12 tháng.&nbsp;</p><p>1 đổi 1 trong vòng 1 tháng nếu có lỗi của nhà sản xuất, đổi sản phẩm tại nhà trong 1 ngày.</p>', 0, '<p>Giao hàng trong 2 giờ</p>', NULL, '2023-12-19 18:45:15');
INSERT INTO `products` (`id`, `name`, `image`, `category_id`, `quantity`, `price`, `discount`, `description`, `content`, `promotion`, `warranty`, `hot`, `ship`, `created_at`, `updated_at`) VALUES
(29, 'Xiaomi 13 5G', '1702611524_1701685809_xiaomi-13-thumb-den-600x600.jpg', '3', 15, 19990000, 30, '<p>Điện thoại Xiaomi 13 5G</p>', '<p>Màn hình: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; AMOLED 6.36\" Full HD+ &nbsp; &nbsp;</p><p>Hệ điều hành: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Android 13&nbsp;</p><p>Camera sau: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Chính 50 MP &amp; Phụ 12 MP, 10 MP&nbsp;</p><p>Camera trước: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 32 MP&nbsp;</p><p>Chip: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Snapdragon 8 Gen 2 8 nhân&nbsp;</p><p>RAM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;8 GB&nbsp;</p><p>Dung lượng lưu trữ: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 256 GB&nbsp;</p><p>SIM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2 Nano SIM Hỗ trợ 5G&nbsp;</p><p>Pin, Sạc: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4500 mAh 67 W</p>', '<p>Sản phẩm sẽ được giảm 30000đ khi mua hàng online bằng thẻ BIDV</p>', '<p>Trong hộp có: Điện thoại, Sạc, Tai nghe, Sách hướng dẫn, Cây lấy sim.&nbsp;</p><p>Bảo hành chính hãng 12 tháng.&nbsp;</p><p>1 đổi 1 trong vòng 1 tháng nếu có lỗi của nhà sản xuất, đổi sản phẩm tại nhà trong 1 ngày.</p>', 0, '<p>Giao hàng trong 2 giờ</p>', NULL, '2023-12-19 18:45:05'),
(30, 'Xiaomi 12T', '1702611748_1701685285_xiaomi-12t-thumb-600x600.jpg', '3', 30, 11990000, 20, '<p>Điện thoại Xiaomi 12T 5G 256GB</p>', '<p>Màn hình: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; AMOLED 6.67\" 1.5K &nbsp; &nbsp;</p><p>Hệ điều hành: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Android 12&nbsp;</p><p>Camera sau: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Chính 108 MP &amp; Phụ 8 MP, 2 MP&nbsp;</p><p>Camera trước: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 20 MP&nbsp;</p><p>Chip: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;MediaTek Dimensity 8100 Ultra 8 nhân&nbsp;</p><p>RAM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;8 GB&nbsp;</p><p>Dung lượng lưu trữ: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 256 GB&nbsp;</p><p>SIM: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2 Nano SIM Hỗ trợ 5G&nbsp;</p><p>Pin, Sạc: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5000 mAh 120 W</p>', '<p>Sản phẩm sẽ được giảm 30000đ khi mua hàng online bằng thẻ BIDV</p>', '<p>Trong hộp có: Điện thoại, Sạc, Tai nghe, Sách hướng dẫn, Cây lấy sim.&nbsp;</p><p>Bảo hành chính hãng 12 tháng.&nbsp;</p><p>1 đổi 1 trong vòng 1 tháng nếu có lỗi của nhà sản xuất, đổi sản phẩm tại nhà trong 1 ngày.</p>', 1, '<p>Giao hàng trong 2 giờ</p>', NULL, '2024-01-07 02:07:24');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `product_id` int(20) NOT NULL,
  `star` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `product_id`, `star`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 2, 1),
(4, 1, 1),
(5, 1, 1),
(6, 8, 5),
(7, 10, 4),
(8, 1, 3),
(9, 22, 5),
(10, 22, 4),
(11, 17, 2),
(12, 8, 5),
(13, 11, 4),
(14, 11, 3),
(15, 8, 3),
(16, 30, 5),
(17, 29, 4),
(18, 28, 3),
(19, 11, 5),
(20, 30, 1),
(21, 18, 1),
(22, 8, 5),
(23, 4, 1),
(24, 4, 1),
(25, 6, 1),
(26, 30, 5),
(27, 29, 2),
(28, 29, 3),
(29, 7, 5),
(30, 8, 5),
(31, 7, 1),
(32, 22, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(100) NOT NULL,
  `birthday` date NOT NULL,
  `gender` varchar(100) NOT NULL,
  `phonenumber` varchar(100) NOT NULL,
  `permission` varchar(100) NOT NULL,
  `provider` varchar(100) NOT NULL,
  `provider_id` varchar(100) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `address`, `birthday`, `gender`, `phonenumber`, `permission`, `provider`, `provider_id`, `remember_token`) VALUES
(1, 'Phạm Hồng Thái', 'phamthai2606@gmail.com', NULL, '$2y$12$hIg146mBgY3JTMD9ppFDx.dkDcyJUn50It4zdlMNAUbIuHzMCXNaO', 'Thái Bình', '2001-06-26', 'Nam', '0862698173', 'admin', '', '', NULL),
(3, 'Hà Thị Lam', 'halam0805@gmail.com', NULL, '$2y$12$L5x9XITvjx2sY6vOLf0XXeNuVl.dYyYQ1evCUmbIuAYz6fLW2cy9S', 'Thái Bình', '2001-08-05', 'Nữ', '0862698173', 'user', '', '', NULL),
(4, 'Trần Quang Anh', 'quanganh@gmail.com', NULL, '$2y$12$ijRMcpAUW31ue3agLv4Tm.93HAaqCMYNKI/uRV10e97.Mf1BOz0Dy', 'Hà Nội', '2001-06-26', 'Nam', '0862698173', 'order', '', '', NULL),
(5, 'Vũ Thảo Vy', 'thaovy0205cute@gmail.com', NULL, '$2y$12$9kRG6BodpJtjb.RfYXviHePe0Qkd9VpOCqAlyTD41BH28GQj413Bi', 'Hà Nội', '2002-06-26', 'Nữ', '0862698173', 'user', '', '', NULL),
(6, 'Hoàng Lâm', 'hoanglam995@gmail.com', NULL, '$2y$12$MSjLtTORR5vWwljxahh3ZenrI1K2lM1jNeZ0GaIoSW5fxOijqAbdW', 'Hà Nội', '2004-10-12', 'Nam', '0862698173', 'order', '', '', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
