

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";




--
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `NAME` varchar(50) NOT NULL,
  `ADDRESS` varchar(50) NOT NULL,
  `PHONE` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`NAME`, `ADDRESS`, `PHONE`) VALUES
('Cipla', 'Mumbai', '0112312903'),
('Cadila', 'Ahmedabad', '01289078443'),
('Torent Pharma', 'Ahmedabade', '010114367832');

-- --------------------------------------------------------

--
-- Table structure for table `drugs`
--

CREATE TABLE `drugs` (
  `NAME` varchar(50) NOT NULL,
  `TYPE` varchar(20) NOT NULL,
  `BARCODE` varchar(20) NOT NULL,
  `DOSE` varchar(10) NOT NULL,
  `CODE` varchar(10) NOT NULL,
  `COST_PRICE` double NOT NULL,
  `SELLING_PRICE` double NOT NULL,
  `EXPIRY` varchar(20) NOT NULL,
  `COMPANY_NAME` varchar(50) NOT NULL,
  `PRODUCTION_DATE` date NOT NULL,
  `EXPIRATION_DATE` date NOT NULL,
  `PLACE` varchar(20) NOT NULL,
  `QUANTITY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drugs`
--

INSERT INTO `drugs` (`NAME`, `TYPE`, `BARCODE`, `DOSE`, `CODE`, `COST_PRICE`, `SELLING_PRICE`, `EXPIRY`, `COMPANY_NAME`, `PRODUCTION_DATE`, `EXPIRATION_DATE`, `PLACE`, `QUANTITY`) VALUES
('Novalo', 'Bills', 'fsdgjfihjorodsf', 'normal', '3d00', 2, 3, 'Available for use', 'Torent Pharma', '2020-03-03', '2022-03-03', 'N-Right', 540),
('Novafol', 'Bills', 'ftrkl432432md', 'normal', '2xaa', 33, 40, 'Available for use', 'Torent Pharma', '2020-01-01', '2022-01-01', 'N-Left', 187),
('Breofin', 'Bills', 'sgnfsjkfnsdjfkb', 'normal', '1xcc', 4, 7, 'Available for use', 'Cipla', '2020-05-16', '2023-04-15', 'N-Right', 130),
('Morfin','Bills', 'nbhdl4978549', 'normal', '1xa7', 9, 16, 'Available for use', 'Cadila', '2020-04-07', '2022-03-19', 'M-Left', 210),
('Declofien', 'Bills', 'fsdjkbdfjkffds', 'normal', '2x06',10, 11, 'Available for use', 'Cipla', '2019-12-29', '2021-11-06', 'M-Right', 376);

-- --------------------------------------------------------

--
-- Table structure for table `expiry`
--

CREATE TABLE `expiry` (
  `PRODUCT_NAME` varchar(50) NOT NULL,
  `PRODUCT_CODE` varchar(20) NOT NULL,
  `DATE_OF_EXPIRY` varchar(10) NOT NULL,
  `QUANTITY_REMAIN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `history_sales`
--

CREATE TABLE `history_sales` (
  `USER_NAME` varchar(20) NOT NULL,
  `BARCODE` varchar(20) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `TYPE` varchar(10) NOT NULL,
  `DOSE` varchar(10) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `PRICE` double NOT NULL,
  `AMOUNT` double NOT NULL,
  `DATE` varchar(15) NOT NULL,
  `TIME` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_sales`
--

INSERT INTO `history_sales` (`USER_NAME`, `BARCODE`, `NAME`, `TYPE`, `DOSE`, `QUANTITY`, `PRICE`, `AMOUNT`, `DATE`, `TIME`) VALUES
('Manas Shukla', 'sgnfsjkfnsdjfkb', 'Breofin', 'Bills', ' Free used', 2, 6, 12, '12-02-2020', '05:02:06'),
('Manas Shukla', 'sgnfsjkfnsdjfkb', 'Breofin', 'Bills', ' Free used', 2, 6, 12, '12-02-2020', '05:02:26'),
('Manas Shukla', 'sgnfsjkfnsdjfkb', 'Breofin', 'Bills', ' Free used', 4, 6, 24, '12-02-2020', '05:02:40'),
('Manas Shukla', 'nbhdl4978549', 'Morfin', 'Injection', '1 (Day)', 2, 14, 28, '13-02-2020', '01:38:00'),
('Manas Shukla', 'nbhdl4978549', 'Morfin', 'Injection', '1 (Day)', 2, 14, 28, '13-02-2020', '01:38:10'),
('Manas Shukla', 'nbhdl4978549', 'Morfin', 'Injection', '1 (Day)', 7, 14, 98, '13-02-2020', '01:38:28'),
('Manas Shukla', 'nbhdl4978549', 'Morfin', 'Injection', '1 (Day)', 1, 14, 14, '13-02-2020', '01:38:46'),
('Devansh Agarwal', 'sgnfsjkfnsdjfkb', 'Breofin', 'Bills', ' Free used', 2, 6, 12, '13-02-2020', '01:59:34'),
('Devansh Agarwal', 'sgnfsjkfnsdjfkb', 'Breofin', 'Bills', ' Free used', 5, 6, 30, '13-02-2020', '01:59:43'),
('Manas Shukla', 'sgnfsjkfnsdjfkb', 'Breofin', 'Bills', ' Free used', 1, 6, 6, '13-02-2020', '02:12:33'),
('Manas Shukla', 'fsdjkbdfjkffds', 'Declofien', 'Injection', 'Free', 2, 14, 28, '17-02-2020', '09:55:43'),
('Devansh Agarwal', 'fsdjkbdfjkffds', 'Declofien', 'Injection', 'Free', 2, 14, 28, '17-02-2020', '09:55:58'),
('Manas Shukla', 'fsdjkbdfjkffds', 'Declofien', 'Injection', 'Free', 5, 14, 70, '17-02-2020', '09:56:11'),
('Manas Shukla', 'fsdjkbdfjkffds', 'Declofien', 'Injection', 'Free', 2, 17, 34, '17-02-2020', '10:04:58'),
('Manas Shukla', 'fsdjkbdfjkffds', 'Declofien', 'Injection', 'Free', 2, 17, 34, '17-02-2020', '10:05:15'),
('Devansh Agarwal', 'fsdjkbdfjkffds', 'Declofien', 'Injection', 'Free', 5, 17, 85, '17-02-2020', '10:05:26'),
('Manas Shukla', 'fsdjkbdfjkffds', 'Declofien', 'Injection', 'Free', 4, 20, 80, '18-02-2020', '11:16:08'),
('Manas Shukla', 'fsdjkbdfjkffds', 'Declofien', 'Injection', 'Free', 4, 20, 80, '18-02-2020', '11:16:28'),
('Devansh Agarwal', 'AnyBarcodedaf', 'AnyName', 'Drink', '2 Days', 4, 14, 56, '18-02-2020', '11:17:06'),
('Manas Shukla', 'AnyBarcodedaf', 'AnyName', 'Drink', '2 Days', 4, 14, 56, '18-02-2020', '11:17:15'),
('Manas Shukla', 'AnyBarcodedaf', 'AnyName', 'Drink', '2 Days', 7, 14, 98, '18-02-2020', '11:17:24'),
('Devansh Agarwal', 'AnyBarcodedaf', 'AnyName', 'Drink', '2 Days', 6, 14, 84, '18-02-2020', '11:18:29'),
('Devansh Agarwal', 'AnyBarcodedaf', 'AnyName', 'Drink', '2 Days', 2, 14, 28, '18-02-2020', '11:18:41'),
('Devansh Agarwal', 'AnyBarcodedaf', 'AnyName', 'Drink', '2 Days', 2, 14, 28, '18-02-2020', '11:18:45'),
('Manas Shukla', 'ftrkl432432md', 'Novafol', 'Bills', 'normal', 2, 40, 80, '14-04-2020', '04:50:32'),
('Manas Shukla', 'ftrkl432432md', 'Novafol', 'Bills', 'normal', 2, 40, 80, '14-04-2020', '04:50:53'),
('Manas Shukla', 'ftrkl432432md', 'Novafol', 'Bills', 'normal', 6, 40, 240, '14-04-2020', '04:51:01'),
('Manas Shukla', 'ftrkl432432md', 'Novafol', 'Bills', 'normal', 1, 40, 40, '03-05-2020', '03:33:30'),
('Manas Shukla', 'ftrkl432432md', 'Novafol', 'Bills', 'normal', 1, 40, 40, '03-05-2020', '03:33:36'),
('Manas Shukla', 'ftrkl432432md', 'Novafol', 'Bills', 'normal', 1, 40, 40, '03-05-2020', '03:33:41');

-- --------------------------------------------------------

--
-- Table structure for table `inbox`
--

CREATE TABLE `inbox` (
  `MESSAGE_FROM` varchar(20) NOT NULL,
  `MESSAGE_TO` varchar(20) NOT NULL,
  `MESSAGE_TEXT` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inbox`
--

INSERT INTO `inbox` (`MESSAGE_FROM`, `MESSAGE_TO`, `MESSAGE_TEXT`) VALUES
('Manas Shukla', 'Devansh Agarwal', 'Welcome Devansh Agarwal'),
('Devansh Agarwal', 'Manas Shukla', 'Hello Manas'),
('Manas Shukla', 'Devansh Agarwal', 'Hey , Devansh Agarwal '),
('Devansh Agarwal', 'Manas Shukla', 'Hey '),
('Devansh Agarwal', 'Manas Shukla', 'Welcome'),
('Manas Shukla', 'Devansh Agarwal', 'Hello , Devansh Agarwal'),
('Manas Shukla', 'Devansh Agarwal', 'Devansh Agarwal , Please go and update\nthe drug roof '),
('Manas Shukla', 'Tony', 'Welcome'),
('Manas Shukla', 'Devansh Agarwal', 'This is your salary on the disk , \n3000 , close in 12  ; good luck'),
('Manas Shukla', 'Devansh Agarwal', 'good job meet me in five'),
('Devansh Agarwal', 'Manas Shukla', 'Ok i will '),
('Devansh Agarwal', 'Manas Shukla', 'gdfgfdgfdgfdg'),
('Devansh Agarwal', 'Manas Shukla', 'haaaaaaaaaaaaaaaai'),
('Manas Shukla', 'Devansh Agarwal', 'What is wrong ? '),
('Devansh Agarwal', 'Manas Shukla', 'NOTHING');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `NAME` varchar(50) NOT NULL,
  `TYPE` varchar(20) NOT NULL,
  `DATE` varchar(20) NOT NULL,
  `TIME` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`NAME`, `TYPE`, `DATE`, `TIME`) VALUES
('Manas Shukla','Admin','25-03-2020','17:23:06'),
('Devansh Agarwal','Admin','16-05-2020','09:56:10');
-- --------------------------------------------------------

--
-- Table structure for table `message_history`
--

CREATE TABLE `message_history` (
  `MESSAGE_FROM` varchar(20) NOT NULL,
  `MESSAGE_TO` varchar(20) NOT NULL,
  `MESSAGE_TEXT` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `BARCODE` varchar(20) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `TYPE` varchar(20) NOT NULL,
  `COMPANY_NAME` varchar(20) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `PRICE` double NOT NULL,
  `AMOUNT` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`BARCODE`, `NAME`, `TYPE`, `COMPANY_NAME`, `QUANTITY`, `PRICE`, `AMOUNT`) VALUES
('fsdgjfihjorodsf', 'Novalo', 'Bills', 'Torent Pharma', 40, 2, 80),
('ftrkl432432md', 'Novafol', 'Bills', 'Torent Pharma', 30, 33, 990),
('sgnfsjkfnsdjfkb', 'Breofin', 'Bills', 'Cipla', 15, 7, 85),
('nbhdl4978549', 'Morfin', 'Bills', 'Cadila', 10, 16, 160);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `BARCODE` varchar(20) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `TYPE` varchar(10) NOT NULL,
  `DOSE` varchar(10) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `PRICE` double NOT NULL,
  `AMOUNT` double NOT NULL,
  `DATE` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `DOB` varchar(20) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `PHONE` varchar(20) NOT NULL,
  `SALARY` double NOT NULL,
  `PASSWORD` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `NAME`, `DOB`, `ADDRESS`, `PHONE`, `SALARY`, `PASSWORD`) VALUES
(1, 'Manas Shukla', '23-12-2000', 'Infocity Gandhinagar', '7990369522', 50000, 'adminhoon'),
(2, 'Devansh Agarwal', '7-12-2000', 'Lucknow India', '01290789432', 5000, 'root'),
(3, 'Tony Stank', '7-8-1977', ' 10880 Malibu Point, Malibu, California', '011804368743', 3000, 'rootaccess');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`NAME`);

--
-- Indexes for table `drugs`
--
ALTER TABLE `drugs`
  ADD PRIMARY KEY (`BARCODE`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`BARCODE`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);
--
-- Indexes for table `purchase`
--  
  ALTER TABLE purchase 
  add constraint fkr3
  foreign key(company_name)
  references company(name) 
  on update cascade on delete cascade;


