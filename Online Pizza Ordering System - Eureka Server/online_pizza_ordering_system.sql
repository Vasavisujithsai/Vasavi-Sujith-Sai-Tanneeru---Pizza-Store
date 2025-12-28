-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 03, 2024 at 08:15 AM
-- Server version: 8.0.39-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_pizza_ordering_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` bigint NOT NULL,
  `category_title` varchar(255) NOT NULL,
  `category_description` varchar(255) NOT NULL,
  `category_image` longblob,
  `category_image_filename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_title`, `category_description`, `category_image`, `category_image_filename`) VALUES
(1, 'Veg Pizza', 'Veg Pizza', NULL, 'Veg Piza.jpg'),
(2, 'Nonveg Pizza', 'Nonveg Pizza', NULL, 'Nonveg Pizza.jpg'),
(3, 'Pan Pizza', 'Pan Pizza', NULL, 'Pan Pizza.jpg'),
(4, 'Thick Crust Pizza', 'Thick Crust Pizza', NULL, 'Thick Crust pizza.jpg'),
(5, 'Cheese Crust Pizza', 'Cheese Crust Pizza', NULL, 'Cheese crust pizza.jpg'),
(6, 'Greek Pizza', 'Greek Pizza', NULL, 'greekpizza.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comments_id` bigint NOT NULL,
  `comments_product_id` varchar(255) NOT NULL,
  `comments_user_id` varchar(255) NOT NULL,
  `comments_title` varchar(255) DEFAULT NULL,
  `comments_date` varchar(255) NOT NULL,
  `comments_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comments_id`, `comments_product_id`, `comments_user_id`, `comments_title`, `comments_date`, `comments_description`) VALUES
(1, '1', '1', 'My First Comment', '2021-10-27', 'Multiply sea night grass fourth day sea lesser rule open subdue female fill which them Blessed, give fill lesser bearing multiply sea night grass fourth day sea lesser\r\n\r\n'),
(2, '1', '2', 'Multiply sea night grass fourth day sea lesser ', '2021-10-27', 'Multiply sea night grass fourth day sea lesser rule open subdue female fill which them Blessed, give fill lesser bearing multiply sea night grass fourth day sea lesser\r\n\r\n'),
(3, '1', '3', 'Multiply sea night grass fourth day sea lesser ', '2021-10-27', 'Multiply sea night grass fourth day sea lesser rule open subdue female fill which them Blessed, give fill lesser bearing multiply sea night grass fourth day sea lesser\r\n\r\n'),
(4, '1', '4', 'Multiply sea night grass fourth day sea lesser ', '2021-10-27', 'Multiply sea night grass fourth day sea lesser rule open subdue female fill which them Blessed, give fill lesser bearing multiply sea night grass fourth day sea lesser\r\n\r\n'),
(5, '1', '5', 'Multiply sea night grass fourth day sea lesser ', '2021-10-27', 'Multiply sea night grass fourth day sea lesser rule open subdue female fill which them Blessed, give fill lesser bearing multiply sea night grass fourth day sea lesser\r\n\r\n'),
(6, '1', '2', 'Multiply sea night grass fourth day sea lesser ', '2021-10-27', 'Multiply sea night grass fourth day sea lesser rule open subdue female fill which them Blessed, give fill lesser bearing multiply sea night grass fourth day sea lesser\r\n\r\n'),
(7, '1', '2', 'Multiply sea night grass fourth day sea lesser ', '2021-10-27', 'Multiply sea night grass fourth day sea lesser rule open subdue female fill which them Blessed, give fill lesser bearing multiply sea night grass fourth day sea lesser\r\n\r\n'),
(52, '4', '5', 'afd', '2024-08-31', 'asdfasdf'),
(53, '4', '5', 'asdf', '2024-08-31', 'asdf'),
(133, '5', '1', 'asasdf', '2021-10-27', 'asdfadsf'),
(139, '10', '5', 'I have no intention of leaving India', '2021-10-27', 'Unperturbed by the stinging criticism from the BJP, and other Hindu groups over his remarks on the raging intolerance debate, actor Aamir Khan on Wednesday said he or his wife Kiran Rao had no intention of leaving India and his love for the country required no endorsements from anyone. ?First let me state categorically that neither'),
(199, '7', '5', 'asdf', '2022-02-27', 'adfasdf'),
(200, '7', '5', 'asdf', '2022-02-27', 'asdf'),
(279, '10', '5', 'Very good product', '2022-03-12', 'This is very good product');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` bigint NOT NULL,
  `company_title` varchar(255) NOT NULL,
  `company_description` text NOT NULL,
  `company_image` longblob,
  `company_image_filename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company_title`, `company_description`, `company_image`, `company_image_filename`) VALUES
(1, 'Blackberry Fashion', 'To make students well-versed with Joint Entrance Exam (JEE), ETOOSINDIA brings you the complete IIT JEE Syllabus 2021-2022 to start your preparation. JEE consists of JEE Main and JEE Advanced paper offering admissions to BE/B.Tech & B.Arch/B.Plan companys. The exam is a gateway to get into renowned IITs, NITs, IITs, CFTIs, other engineering & architecture colleges in India. The syllabus comprises of subjects Physics, Chemistry & Mathematics. Students need to cover the entire syllabus well-in time to crack this prestigious exam. So, begin you your preparation for JEE 2021-2022 with ETOOSINDIA. The updated syllabus is mentioned below.\r\n\r\n', NULL, 'blackberry.jpeg'),
(2, 'Reebok', 'To make students well-versed with Joint Entrance Exam (JEE), ETOOSINDIA brings you the complete IIT JEE Syllabus 2021-2022 to start your preparation. JEE consists of JEE Main and JEE Advanced paper offering admissions to BE/B.Tech & B.Arch/B.Plan companys. The exam is a gateway to get into renowned IITs, NITs, IITs, CFTIs, other engineering & architecture colleges in India. The syllabus comprises of subjects Physics, Chemistry & Mathematics. Students need to cover the entire syllabus well-in time to crack this prestigious exam. So, begin you your preparation for JEE 2021-2022 with ETOOSINDIA. The updated syllabus is mentioned below.\r\n\r\n', NULL, 'reebok.png'),
(3, 'Adidas', 'To make students well-versed with Joint Entrance Exam (JEE), ETOOSINDIA brings you the complete IIT JEE Syllabus 2021-2022 to start your preparation. JEE consists of JEE Main and JEE Advanced paper offering admissions to BE/B.Tech & B.Arch/B.Plan companys. The exam is a gateway to get into renowned IITs, NITs, IITs, CFTIs, other engineering & architecture colleges in India. The syllabus comprises of subjects Physics, Chemistry & Mathematics. Students need to cover the entire syllabus well-in time to crack this prestigious exam. So, begin you your preparation for JEE 2021-2022 with ETOOSINDIA. The updated syllabus is mentioned below.\r\n\r\n', NULL, 'adidas.png'),
(4, 'Fila', 'To make students well-versed with Joint Entrance Exam (JEE), ETOOSINDIA brings you the complete IIT JEE Syllabus 2021-2022 to start your preparation. JEE consists of JEE Main and JEE Advanced paper offering admissions to BE/B.Tech & B.Arch/B.Plan companys. The exam is a gateway to get into renowned IITs, NITs, IITs, CFTIs, other engineering & architecture colleges in India. The syllabus comprises of subjects Physics, Chemistry & Mathematics. Students need to cover the entire syllabus well-in time to crack this prestigious exam. So, begin you your preparation for JEE 2021-2022 with ETOOSINDIA. The updated syllabus is mentioned below.\r\n\r\n', NULL, 'fila.png'),
(5, 'Biba', 'To make students well-versed with Joint Entrance Exam (JEE), ETOOSINDIA brings you the complete IIT JEE Syllabus 2021-2022 to start your preparation. JEE consists of JEE Main and JEE Advanced paper offering admissions to BE/B.Tech & B.Arch/B.Plan companys. The exam is a gateway to get into renowned IITs, NITs, IITs, CFTIs, other engineering & architecture colleges in India. The syllabus comprises of subjects Physics, Chemistry & Mathematics. Students need to cover the entire syllabus well-in time to crack this prestigious exam. So, begin you your preparation for JEE 2021-2022 with ETOOSINDIA. The updated syllabus is mentioned below.\r\n\r\n', NULL, 'biba.jpeg'),
(6, 'Van Heusen', 'To make students well-versed with Joint Entrance Exam (JEE), ETOOSINDIA brings you the complete IIT JEE Syllabus 2021-2022 to start your preparation. JEE consists of JEE Main and JEE Advanced paper offering admissions to BE/B.Tech & B.Arch/B.Plan companys. The exam is a gateway to get into renowned IITs, NITs, IITs, CFTIs, other engineering & architecture colleges in India. The syllabus comprises of subjects Physics, Chemistry & Mathematics. Students need to cover the entire syllabus well-in time to crack this prestigious exam. So, begin you your preparation for JEE 2021-2022 with ETOOSINDIA. The updated syllabus is mentioned below.\r\n\r\n', NULL, 'van-heusen.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` bigint NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_subject` varchar(255) DEFAULT NULL,
  `contact_message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `contact_name`, `contact_email`, `contact_subject`, `contact_message`) VALUES
(142, 'Kaushal Kishore', 'kaushal@gmail.com', 'Need to Learn PHP', 'Hello Team, I need to learn PHP'),
(143, 'Amit Kumar', 'amit@gmail.com', 'Need to Learn C', 'Hello Team, I need to learn C Language'),
(146, 'Sumit Singh', 'sumit@gmail.com', 'Need to Learn Angular', 'Hello Team, I need to learn Angular'),
(147, 'Rahul Kumar', 'rahul@gmail.com', 'Need to Learn NodeJS', 'Hello Team, I need to learn NodeJS');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` bigint NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'India'),
(2, 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` bigint NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_password` varchar(255) NOT NULL,
  `customer_first_name` varchar(255) NOT NULL,
  `customer_last_name` varchar(255) NOT NULL,
  `customer_dob` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_city` varchar(255) NOT NULL,
  `customer_state` varchar(255) NOT NULL,
  `customer_country` varchar(255) NOT NULL,
  `customer_mobile` varchar(255) NOT NULL,
  `customer_nationalty` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_email`, `customer_password`, `customer_first_name`, `customer_last_name`, `customer_dob`, `customer_address`, `customer_city`, `customer_state`, `customer_country`, `customer_mobile`, `customer_nationalty`) VALUES
(1, 'aman@gmail.com', 'test', 'Aman', 'Kumar', '2021-10-15', 'gjhg', 'Mumbai', 'Maharastra', 'India', '9899786756', 'Indian'),
(2, 'sumit@gmail.com', 'test', 'Pawan', 'Kumar', '2021-10-15', 'jhjk', 'Jaipur', 'Rajasthan', 'India', '9878765434', 'jb'),
(3, 'rahul@gmail.com', 'test', 'Rahul', 'Kumar', '2021-10-08', 'jhg', 'Mumbai', 'Mahastra', 'India', '8987676567', 'g'),
(4, 'sumit@gmail.com', 'test', 'Sumit', 'Kumar', '2021-10-16', 'jk', 'Delhi', 'Delhi', 'India', '7689876567', 'kh'),
(5, 'amit@gmail.com', 'test', 'Amit', 'Kumar', '2021-10-26', 'gg1', 'Kanpur', 'Uttar Pradesh', 'India', '9123321289', 'gg1'),
(56, 'fff@fff.com', 'test', 'adfsasd', 'h', '2024-09-26', 'asdfasdf', 'asdfasdf', 'asdf', 'asdfasdf', 'asdfasdf', 'asdfasdf');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` bigint NOT NULL,
  `department_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`) VALUES
(1, 'IT Department'),
(2, 'Java Developement'),
(3, 'HR Department'),
(4, 'Web Developement');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` bigint NOT NULL,
  `employee_sal` varchar(255) DEFAULT NULL,
  `employee_first_name` varchar(255) DEFAULT NULL,
  `employee_middle_name` varchar(255) DEFAULT NULL,
  `employee_last_name` varchar(255) DEFAULT NULL,
  `employee_gender` varchar(255) DEFAULT NULL,
  `employee_address` varchar(255) DEFAULT NULL,
  `employee_village` varchar(255) DEFAULT NULL,
  `employee_state` varchar(255) DEFAULT NULL,
  `employee_country` varchar(255) DEFAULT NULL,
  `employee_landline` varchar(255) DEFAULT NULL,
  `employee_mobile` varchar(255) DEFAULT NULL,
  `employee_email` varchar(255) DEFAULT NULL,
  `employee_status` varchar(255) NOT NULL,
  `employee_department` varchar(255) NOT NULL,
  `employee_dob` varchar(255) NOT NULL,
  `employee_nationalty` varchar(255) NOT NULL,
  `employee_qualification` varchar(255) DEFAULT NULL,
  `employee_history` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `employee_sal`, `employee_first_name`, `employee_middle_name`, `employee_last_name`, `employee_gender`, `employee_address`, `employee_village`, `employee_state`, `employee_country`, `employee_landline`, `employee_mobile`, `employee_email`, `employee_status`, `employee_department`, `employee_dob`, `employee_nationalty`, `employee_qualification`, `employee_history`) VALUES
(1001, '1', 'Amit', 'Kumar', 'Singh', 'Male', 'A : 42/6', 'Ghaziabad', '5', '1', 'Uttar Pradesh', '09876543212', 'kaushal@gmail.com', '2', '1', '2021-07-07', 'Indian', '', ''),
(1002, '2', 'Kaushal', 'Kishore', 'Jaiswal', 'Male', 'A : 42/6', 'Ghaziabad', 'sdfgsdfg', '1', '89273458', '09876543212', 'kaushal.rahuljaiswal@gmail.com', '1', '3', '2021-08-31', 'Indian', 'qwrqwer', 'qwreqwer'),
(1003, '1', 'Sumit', 'Kumar', 'Aggarwal', 'Male', 'A : 42/6', 'Ghaziabad', '1', '1', 'Uttar Pradesh', '09876543212', 'kishore@gmail.com', '2', '1', '12 January, 1988', 'Indian', '', ''),
(1014, '1', 'Anuj', 'Kumar', 'Dubej', 'Male', 'A : 42/6 Sector 62', 'Bhabua (Kaimur)', '1', '1', '9876543212', '9876543212', 'anuj@gmail.com', '1', '1', '12 January 1985', 'Indian', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` bigint NOT NULL,
  `feedback_name` varchar(255) NOT NULL,
  `feedback_email` varchar(255) NOT NULL,
  `feedback_message` varchar(255) DEFAULT NULL,
  `feedback_rating` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `feedback_name`, `feedback_email`, `feedback_message`, `feedback_rating`) VALUES
(1, 'Amit Singh', 'amit@gmail.com', 'Good Website', '5'),
(2, 'Sumit Singh', 'sumit@gmail.com', 'Best Website', '4'),
(3, 'Ranjeet Singh', 'ranjeet@gmail.com', 'Good contents for students', '5'),
(148, 'Aman', 'aman@gmail.com', 'Informative Website', '5');

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(294);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` bigint NOT NULL,
  `login_employee_id` varchar(255) NOT NULL,
  `login_email` varchar(255) NOT NULL,
  `login_password` varchar(255) NOT NULL,
  `login_level_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `login_employee_id`, `login_email`, `login_password`, `login_level_id`) VALUES
(1, '1001', 'admin', 'test', '1'),
(2, '1002', 'employee', 'test', '2'),
(37, '36', 'hh', 'hh', '2'),
(39, '38', 'hh', 'hh', '1'),
(41, '40', 'hh', 'hh', '2'),
(43, '42', 'hh', 'hh', '2'),
(45, '44', 'hh', 'hh', '1'),
(47, '46', 'hh', 'hh', '1'),
(49, '48', 'jj', 'jj', '1'),
(51, '50', 'hh', 'hh', '1'),
(53, '52', 'hh', 'hh', '2'),
(55, '54', 'hh', 'hh', '1'),
(57, '56', 'hh', 'hh', '2'),
(59, '58', 'hhh', 'hh', '1'),
(61, '60', 'admin1', 'test', '1'),
(100, '99', 'uu', 'uu', '2'),
(102, '101', 'jjj', 'jj', '1'),
(104, '103', 'xx', 'xx', '1');

-- --------------------------------------------------------

--
-- Table structure for table `month`
--

CREATE TABLE `month` (
  `month_id` bigint NOT NULL,
  `month_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `month`
--

INSERT INTO `month` (`month_id`, `month_name`) VALUES
(1, 'January'),
(2, 'February'),
(3, 'March'),
(4, 'April'),
(5, 'May'),
(6, 'June'),
(7, 'July'),
(8, 'August'),
(9, 'September'),
(10, 'October'),
(11, 'November'),
(12, 'December');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint NOT NULL,
  `order_customer_id` varchar(255) NOT NULL,
  `order_total` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `order_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_customer_id`, `order_total`, `order_status`, `order_date`) VALUES
(1, '5', '1800', 'Paid', '31 Aug 2024 05:42 PM'),
(2, '5', '900', 'Paid', '31 Aug 2024 05:50 PM'),
(88, '1', '581', 'Paid', '11 Aug 2021 02:28 PM'),
(93, '2', '940', 'Paid', '11 Aug 2021 02:30 PM'),
(98, '1', '34', 'Paid', '11 Aug 2021 04:36 PM'),
(100, '4', '760', 'Paid', '12 Aug 2021 12:02 AM'),
(231, '1', '500', 'Paid', '11 Mar 2022 01:59 PM'),
(235, '2', '520', 'Paid', '11 Mar 2022 02:39 PM'),
(237, '3', '600', 'Paid', '11 Mar 2022 02:45 PM'),
(239, '5', '700', 'Paid', '11 Mar 2022 02:46 PM'),
(241, '5', '820', 'Paid', '11 Mar 2022 02:47 PM'),
(244, '5', '120', 'Paid', '11 Mar 2022 02:49 PM'),
(249, '5', '230', 'Paid', '11 Mar 2022 02:53 PM'),
(250, '5', '200', 'Paid', '11 Mar 2022 02:57 PM'),
(253, '5', '180', 'Paid', '11 Mar 2022 02:58 PM'),
(256, '5', '510', 'Paid', '11 Mar 2022 03:35 PM'),
(261, '5', '80', 'Paid', '11 Mar 2022 04:16 PM'),
(263, '5', '110', 'Paid', '11 Mar 2022 07:02 PM'),
(271, '5', '110', 'Paid', '12 Mar 2022 12:10 PM'),
(275, '5', '130', 'Paid', '12 Mar 2022 10:54 PM'),
(290, '5', '30', 'Paid', '12 Mar 2022 11:13 PM'),
(292, '5', '800', 'Paid', '14 Mar 2022 02:28 PM'),
(293, '56', '1900', 'Paid', '03 Sep 2024 08:14 AM');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` bigint NOT NULL,
  `payment_customer_id` varchar(255) NOT NULL,
  `payment_date` varchar(255) NOT NULL,
  `payment_amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_customer_id`, `payment_date`, `payment_amount`) VALUES
(165, '5', '2021-11-06', '10000'),
(166, '5', '2021-11-06', '15000'),
(167, '5', '2021-11-06', '12000');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` bigint NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_category_id` varchar(255) NOT NULL,
  `product_image_filename` varchar(255) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` longblob,
  `product_cost` varchar(255) NOT NULL,
  `product_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_title`, `product_category_id`, `product_image_filename`, `product_description`, `product_image`, `product_cost`, `product_date`) VALUES
(1, 'Babycorn Pizza', '1', 'baby corn pizza.jpg', 'A baked dish originating in Italy, which consists of a flat, round, crispy leavened dough covered with a layer of sauce and a layer of one or more toppings, such as meat, seafood, vegetables, and fruit, which is often topped with a layer of cheese. A popular dish served for all types of occassions and meals, Pizza is made as a sweet or a savory food that can be enjoyed as a breakfast, brunch, lunch, dinner, or snack.\n', NULL, '1000', NULL),
(4, 'Cheezy Pizza', '5', 'cheezy pizza.jpg', 'A baked dish originating in Italy, which consists of a flat, round, crispy leavened dough covered with a layer of sauce and a layer of one or more toppings, such as meat, seafood, vegetables, and fruit, which is often topped with a layer of cheese. A popular dish served for all types of occassions and meals, Pizza is made as a sweet or a savory food that can be enjoyed as a breakfast, brunch, lunch, dinner, or snack.\n', NULL, '900', NULL),
(5, 'Lamb Pizza', '4', 'lamb pizza.cms', 'A baked dish originating in Italy, which consists of a flat, round, crispy leavened dough covered with a layer of sauce and a layer of one or more toppings, such as meat, seafood, vegetables, and fruit, which is often topped with a layer of cheese. A popular dish served for all types of occassions and meals, Pizza is made as a sweet or a savory food that can be enjoyed as a breakfast, brunch, lunch, dinner, or snack.\n', NULL, '800', NULL),
(6, 'White Chicken Pizza', '2', 'white chicken pizza.jpg', 'A baked dish originating in Italy, which consists of a flat, round, crispy leavened dough covered with a layer of sauce and a layer of one or more toppings, such as meat, seafood, vegetables, and fruit, which is often topped with a layer of cheese. A popular dish served for all types of occassions and meals, Pizza is made as a sweet or a savory food that can be enjoyed as a breakfast, brunch, lunch, dinner, or snack.\n', NULL, '600', NULL),
(7, 'Tandoori Pizza', '5', 'tandoori pizza.jpg', 'A baked dish originating in Italy, which consists of a flat, round, crispy leavened dough covered with a layer of sauce and a layer of one or more toppings, such as meat, seafood, vegetables, and fruit, which is often topped with a layer of cheese. A popular dish served for all types of occassions and meals, Pizza is made as a sweet or a savory food that can be enjoyed as a breakfast, brunch, lunch, dinner, or snack.\n', NULL, '1200', NULL),
(9, 'Salad Pizza', '4', 'Salad pizza.jpg', 'A baked dish originating in Italy, which consists of a flat, round, crispy leavened dough covered with a layer of sauce and a layer of one or more toppings, such as meat, seafood, vegetables, and fruit, which is often topped with a layer of cheese. A popular dish served for all types of occassions and meals, Pizza is made as a sweet or a savory food that can be enjoyed as a breakfast, brunch, lunch, dinner, or snack.\n', NULL, '3000', NULL),
(10, 'Margherita Pizza', '6', 'margherita pizza.jpg', 'A baked dish originating in Italy, which consists of a flat, round, crispy leavened dough covered with a layer of sauce and a layer of one or more toppings, such as meat, seafood, vegetables, and fruit, which is often topped with a layer of cheese. A popular dish served for all types of occassions and meals, Pizza is made as a sweet or a savory food that can be enjoyed as a breakfast, brunch, lunch, dinner, or snack.\n', NULL, '800', NULL),
(11, 'Grilled Pizza', '5', 'Grilled Pizza.png', 'A baked dish originating in Italy, which consists of a flat, round, crispy leavened dough covered with a layer of sauce and a layer of one or more toppings, such as meat, seafood, vegetables, and fruit, which is often topped with a layer of cheese. A popular dish served for all types of occassions and meals, Pizza is made as a sweet or a savory food that can be enjoyed as a breakfast, brunch, lunch, dinner, or snack.\n', NULL, '300', NULL),
(12, 'Garlic Chicken Pizza', '4', 'Garlic chicken pizza.jpg', 'A baked dish originating in Italy, which consists of a flat, round, crispy leavened dough covered with a layer of sauce and a layer of one or more toppings, such as meat, seafood, vegetables, and fruit, which is often topped with a layer of cheese. A popular dish served for all types of occassions and meals, Pizza is made as a sweet or a savory food that can be enjoyed as a breakfast, brunch, lunch, dinner, or snack.\n', NULL, '400', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `roles_id` bigint NOT NULL,
  `roles_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`roles_id`, `roles_name`) VALUES
(1, 'Admin'),
(2, 'Employee');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `salary_id` bigint NOT NULL,
  `salary_employee_id` varchar(255) NOT NULL,
  `salary_month` varchar(255) NOT NULL,
  `salary_working_days` varchar(255) NOT NULL,
  `salary_basic` varchar(255) NOT NULL,
  `salary_hra` varchar(255) NOT NULL,
  `salary_mediclaim` varchar(255) NOT NULL,
  `salary_ta` varchar(255) NOT NULL,
  `salary_da` varchar(255) NOT NULL,
  `salary_reimbursement` varchar(255) NOT NULL,
  `salary_ca` varchar(255) NOT NULL,
  `salary_others` varchar(255) NOT NULL,
  `salary_dpf` varchar(255) NOT NULL,
  `salary_dtax` varchar(255) NOT NULL,
  `salary_desc` varchar(255) DEFAULT NULL,
  `salary_total` varchar(255) NOT NULL,
  `salary_dedc` varchar(255) NOT NULL,
  `salary_slip` longblob,
  `salary_slip_filename` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`salary_id`, `salary_employee_id`, `salary_month`, `salary_working_days`, `salary_basic`, `salary_hra`, `salary_mediclaim`, `salary_ta`, `salary_da`, `salary_reimbursement`, `salary_ca`, `salary_others`, `salary_dpf`, `salary_dtax`, `salary_desc`, `salary_total`, `salary_dedc`, `salary_slip`, `salary_slip_filename`) VALUES
(91, '1003', '8', '30', '1000', '1000', '1000', '1', '1', '1', '1', '1', '1', '1', '1', '4000', '1', NULL, '1630263488_303881675-Vehicle-Showroom-Management-System-Project-Report-in-PHP-and-MySQL (1).docx'),
(92, '1002', '5', '30', '3500', '4500', '3', '3', '3', '3', '3', '3', '3', '3', '3', '7500', '3', NULL, '1630263915_0584082100172_.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `saluation`
--

CREATE TABLE `saluation` (
  `saluation_id` bigint NOT NULL,
  `saluation_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saluation`
--

INSERT INTO `saluation` (`saluation_id`, `saluation_name`) VALUES
(1, 'Mr.'),
(2, 'Mrs.');

-- --------------------------------------------------------

--
-- Table structure for table `sell`
--

CREATE TABLE `sell` (
  `sell_id` bigint NOT NULL,
  `sell_order_id` varchar(255) NOT NULL,
  `sell_product_id` varchar(255) NOT NULL,
  `sell_units` varchar(255) NOT NULL,
  `sell_price_per_unit` varchar(255) NOT NULL,
  `sell_total_cost` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sell`
--

INSERT INTO `sell` (`sell_id`, `sell_order_id`, `sell_product_id`, `sell_units`, `sell_price_per_unit`, `sell_total_cost`) VALUES
(1, '1', '4', '1', '900', '900'),
(3, '1', '4', '1', '900', '900'),
(52, '2', '4', '1', '900', '900'),
(89, '88', '5', '1', '1', '1'),
(90, '88', '9', '4', '10', '40'),
(91, '88', '7', '4', '10', '40'),
(92, '88', '10', '5', '100', '500'),
(95, '93', '8', '5', '100', '500'),
(96, '93', '9', '4', '10', '40'),
(97, '93', '10', '4', '100', '400'),
(99, '98', '5', '34', '1', '34'),
(102, '100', '8', '3', '100', '300'),
(103, '100', '10', '4', '100', '400'),
(104, '100', '9', '2', '10', '20'),
(105, '100', '6', '4', '10', '40'),
(172, '0', '5', '1', '80', '80'),
(173, '0', '5', '1', '80', '80'),
(174, '0', '5', '1', '80', '80'),
(175, '0', '5', '1', '80', '80'),
(178, '0', '5', '1', '80', '80'),
(179, '0', '5', '1', '80', '80'),
(181, '180', '5', '1', '80', '80'),
(183, '182', '5', '1', '80', '80'),
(184, '182', '5', '1', '80', '80'),
(185, '182', '5', '1', '80', '80'),
(186, '182', '5', '1', '80', '80'),
(187, '182', '5', '1', '80', '80'),
(188, '182', '5', '1', '80', '80'),
(189, '182', '7', '1', '120', '120'),
(190, '182', '7', '1', '120', '120'),
(191, '182', '7', '1', '120', '120'),
(193, '192', '5', '1', '80', '80'),
(194, '192', '11', '1', '300', '300'),
(195, '192', '9', '1', '30', '30'),
(202, '196', '5', '1', '80', '80'),
(207, '196', '1', '1', '100', '100'),
(209, '208', '5', '1', '80', '80'),
(213, '208', '1', '1', '100', '100'),
(218, '208', '12', '1', '400', '400'),
(220, '219', '5', '1', '80', '80'),
(222, '219', '11', '1', '300', '300'),
(223, '219', '7', '1', '120', '120'),
(233, '232', '7', '1', '120', '120'),
(234, '232', '12', '1', '400', '400'),
(236, '232', '5', '1', '80', '80'),
(238, '232', '1', '1', '100', '100'),
(240, '232', '7', '1', '120', '120'),
(243, '242', '7', '1', '120', '120'),
(246, '245', '5', '1', '80', '80'),
(247, '245', '7', '1', '120', '120'),
(248, '245', '9', '1', '30', '30'),
(251, '250', '5', '1', '80', '80'),
(252, '250', '7', '1', '120', '120'),
(254, '253', '10', '1', '80', '80'),
(255, '253', '1', '1', '100', '100'),
(257, '256', '12', '1', '400', '400'),
(258, '256', '5', '1', '80', '80'),
(260, '256', '9', '1', '30', '30'),
(262, '261', '5', '1', '80', '80'),
(264, '263', '9', '1', '30', '30'),
(265, '263', '10', '1', '80', '80'),
(273, '271', '10', '1', '80', '80'),
(274, '271', '9', '1', '30', '30'),
(277, '275', '9', '1', '30', '30'),
(278, '275', '1', '1', '100', '100'),
(291, '290', '9', '1', '30', '30'),
(293, '292', '5', '1', '800', '800'),
(294, '293', '4', '1', '900', '900'),
(295, '293', '1', '1', '1000', '1000');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` bigint NOT NULL,
  `state_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`) VALUES
(1, 'Maharastra'),
(2, 'Gujrat'),
(3, 'Bihar'),
(4, 'Uttar Pradesh'),
(5, 'Delhi'),
(6, 'Haryana');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comments_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `month`
--
ALTER TABLE `month`
  ADD PRIMARY KEY (`month_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`roles_id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`salary_id`);

--
-- Indexes for table `saluation`
--
ALTER TABLE `saluation`
  ADD PRIMARY KEY (`saluation_id`);

--
-- Indexes for table `sell`
--
ALTER TABLE `sell`
  ADD PRIMARY KEY (`sell_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comments_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1015;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `month`
--
ALTER TABLE `month`
  MODIFY `month_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `roles_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `salary_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `saluation`
--
ALTER TABLE `saluation`
  MODIFY `saluation_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sell`
--
ALTER TABLE `sell`
  MODIFY `sell_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
