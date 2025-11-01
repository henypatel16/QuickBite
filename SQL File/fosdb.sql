-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2025 at 04:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fosdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 7894561238, 'test@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2023-11-30 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(5) NOT NULL,
  `CategoryName` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `CreationDate`) VALUES
(3, 'Itallian', '2023-12-14 18:30:00'),
(4, 'Thai', '2023-12-14 18:30:00'),
(5, 'South Indian', '2023-12-14 18:30:00'),
(6, 'North Indian', '2023-12-14 18:30:00'),
(8, 'Starters', '2023-12-14 18:30:00'),
(9, 'Chinease', '2023-12-14 18:30:00'),
(14, 'Desserts', '2025-09-20 15:19:29');

-- --------------------------------------------------------

--
-- Table structure for table `tblfood`
--

CREATE TABLE `tblfood` (
  `ID` int(10) NOT NULL,
  `CategoryName` varchar(120) DEFAULT NULL,
  `ItemName` varchar(120) DEFAULT NULL,
  `ItemPrice` varchar(120) DEFAULT NULL,
  `ItemDes` varchar(500) DEFAULT NULL,
  `Image` varchar(120) DEFAULT NULL,
  `ItemQty` varchar(120) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblfood`
--

INSERT INTO `tblfood` (`ID`, `CategoryName`, `ItemName`, `ItemPrice`, `ItemDes`, `Image`, `ItemQty`, `creationDate`) VALUES
(1, 'Itallian', 'Veg Pizza', '190', 'Delicious cheesy veg pizza topped with fresh vegetables and herbs for a perfect taste.', '440fb95c527ee0b0637800e42ff54884.jpg', 'Medium', '2023-12-17 06:10:12'),
(2, 'Itallian', 'Margherita Pizza', '120', 'Classic Italian pizza topped with fresh mozzarella, tomato sauce, and basil leaves.', 'd2807733e00865036e38e60570aa66a7.jpg', 'Regular', '2023-12-17 06:10:12'),
(3, 'Itallian', 'Classic Cheese Pizza', '220', 'A timeless favorite loaded with rich tomato sauce and extra melted cheese.', '784bafd85e0bc704b827e6709e47998f.jpg', 'Large', '2023-12-17 06:10:12'),
(4, 'Itallian', 'Panner Pizza', '450', 'A delicious pizza topped with spicy marinated paneer, veggies, and cheesy goodness.', 'f434539f2635989f9e71bfbf8083f178.jpg', 'Medium', '2023-12-17 06:10:12'),
(5, 'Itallian', 'Sweet Corn pizza', '440', 'A cheesy delight loaded with golden sweet corn and a touch of seasoning.', 'ebaf50b51ebac216e855658ed8927664.jpg', 'Large', '2023-12-17 06:10:12'),
(6, 'North Indian', 'Chana Masala', '120', 'A flavorful curry made with chickpeas simmered in a spiced onion-tomato gravy.', '4767fbfa7cd1b3ea8e4840d07a6b2af0.jpg', 'Full', '2023-12-17 06:10:12'),
(7, 'North Indian', 'Rajma Masala', '125', 'Rajma Masala is a much loved spicy curry in most Indian Households.                               	', '3dd92f35f2fedc2346fad728c4810df5.jpg', 'Full', '2023-12-17 06:10:12'),
(8, 'South Indian', 'Dosa', '85', 'Dosa  are served hot along with sambar, a stuffing of potatoes, and chutney.                             	', 'a9c5f3c2ded0f4231398beb529c3e615.jpg', 'Regular', '2023-12-17 06:10:12'),
(9, 'South Indian', 'Idli', '75', 'Idli are a type of savoury rice cake, originating from the Indian subcontinent and served coconut chutney.                                         	', '569e6a0e53c4a8873d7e3c308aaa537e.jpg', '2 pcs', '2023-12-17 06:10:12'),
(10, 'South Indian', 'Medu Vada', '60', 'Crispy South Indian fritters made from urad dal, served with chutney and sambar.', 'e36ac34276cb84ef35480ea30fdbbd3e.jpg', '2 pcs', '2023-12-17 06:10:12'),
(11, 'North Indian', 'Chole Bhature', '120', 'A popular North Indian dish of spicy chickpea curry served with deep-fried fluffy bhature.', '65b8555e99c417db2f6c5974dc2bf3b2.jpg', '2 pcs', '2023-12-17 06:10:12'),
(12, 'North Indian', 'Aloo paratha', '85', ' Aloo paratha is served with butter, chutney, or Indian pickles in different parts of northern and western India.                                                 	', '2e990e90082255246a1b6050524da3a7.jpg', '2 pieces', '2023-12-17 06:10:12'),
(13, 'North Indian', 'Mix Pratha', '85', 'Whole wheat paratha stuffed with a flavorful mix of spiced vegetables, served with curd or pickle.', 'd4c32deb621519f11c76bf3e2d34b7fc.jpg', '2 pieces', '2023-12-17 06:10:12'),
(14, 'North Indian', 'Paneer Paratha.', '95', 'Soft, flaky Indian flatbread stuffed with spiced paneer (cottage cheese) filling, perfect for breakfast or a wholesome meal.', '64ad65b82b4848e1d1aa4c0f887dd6a1.jpg', '2 pieces', '2023-12-17 06:10:12'),
(15, 'Chinease', 'Hakka Noodle', '120', 'Hakka Noodle is one our famous food which is made up by our homemade masale.                                               	', 'cd1665808d10446495abafd15eb1d036.jpg', 'full', '2023-12-17 06:10:12'),
(17, 'Thai', 'Vegetarian Thai green curry', '180', 'A fragrant and spicy coconut-based curry with fresh vegetables, tofu, and aromatic Thai herbs.                             	', '27a6231a6e3e6e13945c7d65a01e8d78.jpg', '500', '2025-09-20 16:30:00'),
(18, 'Starters', 'Panner Tikka', '200', 'Soft cubes of paneer marinated in spiced yogurt, skewered with onions and capsicum, and grilled to perfection with smoky flavors.                    	', 'c2e66d5c56d4e4d6cc52843a20c27f40.jpg', '200', '2025-09-21 10:52:42'),
(19, 'Desserts', 'Rasmalai', '180', 'Soft, spongy cottage cheese patties soaked in sweetened, thickened milk flavored with cardamom, saffron, and garnished with dry fruits.                                             	', '7fdc6700b2bde070ca773df391fb5ca1.jpg', '1', '2025-09-21 11:00:12');

-- --------------------------------------------------------

--
-- Table structure for table `tblfoodtracking`
--

CREATE TABLE `tblfoodtracking` (
  `ID` int(10) NOT NULL,
  `OrderId` char(50) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `status` char(50) DEFAULT NULL,
  `StatusDate` timestamp NULL DEFAULT current_timestamp(),
  `OrderCanclledByUser` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblfoodtracking`
--

INSERT INTO `tblfoodtracking` (`ID`, `OrderId`, `remark`, `status`, `StatusDate`, `OrderCanclledByUser`) VALUES
(5, '298759191', 'sorry ', 'Order Cancelled', '2025-09-20 16:25:22', NULL),
(6, '844186003', 'Thank you so muchhh...', 'Food Delivered', '2025-09-21 11:16:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblorderaddresses`
--

CREATE TABLE `tblorderaddresses` (
  `ID` int(11) NOT NULL,
  `UserId` char(100) DEFAULT NULL,
  `Ordernumber` char(100) DEFAULT NULL,
  `Flatnobuldngno` varchar(255) DEFAULT NULL,
  `StreetName` varchar(255) DEFAULT NULL,
  `Area` varchar(255) DEFAULT NULL,
  `Landmark` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `OrderTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `OrderFinalStatus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblorderaddresses`
--

INSERT INTO `tblorderaddresses` (`ID`, `UserId`, `Ordernumber`, `Flatnobuldngno`, `StreetName`, `Area`, `Landmark`, `City`, `OrderTime`, `OrderFinalStatus`) VALUES
(3, '4', '298759191', '31', 'krushna kunj soc.', 'bhestan', 'neae vegtable market', 'surat', '2025-09-20 16:24:16', 'Order Cancelled'),
(4, '4', '844186003', '31', 'krushna kunj soc.', 'bhestan', 'near vegtable market', 'surat', '2025-09-21 11:12:04', 'Food Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE `tblorders` (
  `ID` int(11) NOT NULL,
  `UserId` char(10) DEFAULT NULL,
  `FoodId` char(10) DEFAULT NULL,
  `FoodQty` int(11) DEFAULT NULL,
  `IsOrderPlaced` int(11) DEFAULT NULL,
  `OrderNumber` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`ID`, `UserId`, `FoodId`, `FoodQty`, `IsOrderPlaced`, `OrderNumber`) VALUES
(6, '4', '2', 2, 1, '298759191'),
(7, '4', '8', 1, 1, '298759191'),
(8, '4', '3', 1, 1, '844186003');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `Email`, `MobileNumber`, `Password`, `RegDate`) VALUES
(4, 'heny', 'patel', 'henypatel01@gmail.com', 6351249014, 'bc573864331a9e42e4511de6f678aa83', '2025-09-20 13:56:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CategoryName` (`CategoryName`);

--
-- Indexes for table `tblfood`
--
ALTER TABLE `tblfood`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfoodtracking`
--
ALTER TABLE `tblfoodtracking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserId` (`UserId`,`Ordernumber`);

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserId` (`UserId`,`FoodId`,`OrderNumber`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblfood`
--
ALTER TABLE `tblfood`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblfoodtracking`
--
ALTER TABLE `tblfoodtracking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
