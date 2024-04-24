-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2018 at 07:52 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agroculture`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogdata`
--

CREATE TABLE `blogdata` (
  `blogId` int(10) NOT NULL,
  `blogUser` varchar(256) NOT NULL,
  `blogTitle` varchar(256) NOT NULL,
  `blogContent` longtext NOT NULL,
  `blogTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `likes` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogdata`
--

INSERT INTO `blogdata` (`blogId`, `blogUser`, `blogTitle`, `blogContent`, `blogTime`, `likes`) VALUES
(19, 'ThePhenom', 'First Blog', '<p>Its Awesome website<img alt="wink" src="https://cdn.ckeditor.com/4.8.0/full/plugins/smiley/images/wink_smile.png" style="height:23px; width:23px" title="wink" /></p>\r\n', '2018-02-25 13:09:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blogfeedback`
--

CREATE TABLE `blogfeedback` (
  `blogId` int(10) NOT NULL,
  `comment` varchar(256) NOT NULL,
  `commentUser` varchar(256) NOT NULL,
  `commentPic` varchar(256) NOT NULL DEFAULT 'profile0.png',
  `commentTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogfeedback`
--

INSERT INTO `blogfeedback` (`blogId`, `comment`, `commentUser`, `commentPic`, `commentTime`) VALUES
(19, 'Mast yarr', 'ThePhenom', 'profile0.png', '2018-02-25 13:09:54');

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `bid` int(100) NOT NULL,
  `bname` varchar(100) NOT NULL,
  `busername` varchar(100) NOT NULL,
  `bpassword` varchar(100) NOT NULL,
  `bhash` varchar(100) NOT NULL,
  `bemail` varchar(100) NOT NULL,
  `bmobile` varchar(100) NOT NULL,
  `baddress` text NOT NULL,
  `bactive` int(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

CREATE TABLE `farmer` (
  `fid` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `fusername` varchar(255) NOT NULL,
  `fpassword` varchar(255) NOT NULL,
  `fhash` varchar(255) NOT NULL,
  `femail` varchar(255) NOT NULL,
  `fmobile` varchar(255) NOT NULL,
  `faddress` text NOT NULL,
  `factive` int(255) NOT NULL DEFAULT '0',
  `frating` int(11) NOT NULL DEFAULT '0',
  `picExt` varchar(255) NOT NULL DEFAULT 'png',
  `picStatus` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`fid`, `fname`, `fusername`, `fpassword`, `fhash`, `femail`, `fmobile`, `faddress`, `factive`, `frating`, `picExt`, `picStatus`) VALUES
(3, 'Kaivalya Hemant Mendki', 'ThePhenom', '$2y$10$22ezmzHRa9c5ycHmVm5RpOnlT4LwFaDZar1XhmLRJQKGrcVRhPgti', '61b4a64be663682e8cb037d9719ad8cd', 'kmendki98@gmail.com', '8600611198', 'abcde', 0, 0, 'png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `fproduct`
--

CREATE TABLE `fproduct` (
  `fid` int(255) NOT NULL,
  `pid` int(255) NOT NULL,
  `product` varchar(255) NOT NULL,
  `pcat` varchar(255) NOT NULL,
  `pinfo` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `pimage` varchar(255) NOT NULL DEFAULT 'blank.png',
  `picStatus` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fproduct`
--

INSERT INTO `fproduct` (`fid`, `pid`, `product`, `pcat`, `pinfo`, `price`, `pimage`, `picStatus`) VALUES
(3, 27, 'Mango', 'Fruit', '<p>Mango raseela</p>\r\n', 500, 'Mango3.jpeg', 1),
(3, 28, 'Ladyfinger', 'Vegetable', '<p>Its veggie</p>\r\n', 1000, 'Ladyfinger3.jpg', 1),
(3, 29, 'Bajra', 'Grains', '<p>bajre di rti</p>\r\n', 400, 'Bajra3.jpg', 1),
(3, 30, 'Banana', 'Fruit', '<p>Jalgaon banana</p>\r\n', 400, 'Banana3.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `likedata`
--

CREATE TABLE `likedata` (
  `blogId` int(10) NOT NULL,
  `blogUserId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likedata`
--

INSERT INTO `likedata` (`blogId`, `blogUserId`) VALUES
(19, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mycart`
--

CREATE TABLE `mycart` (
  `bid` int(10) NOT NULL,
  `pid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mycart`
--

INSERT INTO `mycart` (`bid`, `pid`) VALUES
(3, 27),
(3, 30);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `pid` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rating` int(10) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `tid` int(10) NOT NULL,
  `bid` int(10) NOT NULL,
  `pid` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `addr` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`tid`, `bid`, `pid`, `name`, `city`, `mobile`, `email`, `pincode`, `addr`) VALUES
(1, 3, 28, 'sa,j,cns', 'sajc', 'sajch', 'kmendki98@gmail.com', 'sacu', 'ckaskjc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogdata`
--
ALTER TABLE `blogdata`
  ADD PRIMARY KEY (`blogId`);

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `bid` (`bid`);

--
-- Indexes for table `farmer`
--
ALTER TABLE `farmer`
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `fid` (`fid`);

--
-- Indexes for table `fproduct`
--
ALTER TABLE `fproduct`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `likedata`
--
ALTER TABLE `likedata`
  ADD KEY `blogId` (`blogId`),
  ADD KEY `blogUserId` (`blogUserId`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`tid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogdata`
--
ALTER TABLE `blogdata`
  MODIFY `blogId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `bid` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `farmer`
--
ALTER TABLE `farmer`
  MODIFY `fid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `fproduct`
--
ALTER TABLE `fproduct`
  MODIFY `pid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `tid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `buyer`
--
ALTER TABLE `buyer`
  ADD CONSTRAINT `buyer_ibfk_1` FOREIGN KEY (`bid`) REFERENCES `farmer` (`fid`);

--
-- Constraints for table `likedata`
--
ALTER TABLE `likedata`
  ADD CONSTRAINT `likedata_ibfk_1` FOREIGN KEY (`blogId`) REFERENCES `blogdata` (`blogId`);
  
  
  -- Trigger 1: Increment likes when a new row is inserted into likedata
DELIMITER //
CREATE TRIGGER after_likedata_insert
AFTER INSERT ON likedata
FOR EACH ROW
BEGIN
  UPDATE blogdata
  SET likes = likes + 1
  WHERE blogId = NEW.blogId;
END;
//
DELIMITER ;

-- Trigger 2: Decrement likes when a row is deleted from likedata
DELIMITER //
CREATE TRIGGER after_likedata_delete
AFTER DELETE ON likedata
FOR EACH ROW
BEGIN
  UPDATE blogdata
  SET likes = likes - 1
  WHERE blogId = OLD.blogId;
END;
//
DELIMITER ;


-- procedure

DELIMITER //

CREATE PROCEDURE get_total_likes(IN blogId_param INT)
BEGIN
    DECLARE total_likes INT;

    SELECT COUNT(*) INTO total_likes
    FROM likedata
    WHERE blogId = blogId_param;

    SELECT total_likes;
END;
//

DELIMITER ;




-- cursor 2

DELIMITER //

CREATE PROCEDURE GetAllProducts()
BEGIN
  -- Declare variables for product details
  DECLARE v_fid INT;
  DECLARE v_pid INT;
  DECLARE v_product VARCHAR(255);
  DECLARE v_pcat VARCHAR(255);
  DECLARE v_pinfo VARCHAR(255);
  DECLARE v_price FLOAT;
  DECLARE v_pimage VARCHAR(255);
  DECLARE v_picStatus INT;

  -- Cursor to iterate through products
  DECLARE productCursor CURSOR FOR
    SELECT fid, pid, product, pcat, pinfo, price, pimage, picStatus
    FROM fproduct;

  -- Open the cursor
  OPEN productCursor;

  -- Loop to fetch and display product details
  productLoop: LOOP
    FETCH productCursor INTO v_fid, v_pid, v_product, v_pcat, v_pinfo, v_price, v_pimage, v_picStatus;

    -- Exit the loop if no more rows
    IF (v_fid IS NULL) THEN
      LEAVE productLoop;
    END IF;

    -- Display product details
    SELECT 'Farmer ID:', v_fid AS 'Farmer ID',
           'Product ID:', v_pid AS 'Product ID',
           'Product:', v_product AS 'Product',
           'Category:', v_pcat AS 'Category',
           'Info:', v_pinfo AS 'Info',
           'Price:', v_price AS 'Price',
           'Image:', v_pimage AS 'Image',
           'Status:', v_picStatus AS 'Status';
  END LOOP;

  -- Close the cursor
  CLOSE productCursor;

END //

DELIMITER ;


-- cursor 3 get all product

DELIMITER //

CREATE PROCEDURE get_all_products()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE fid_param INT;
    DECLARE pid_param INT;
    DECLARE product_param VARCHAR(255);
    DECLARE pcat_param VARCHAR(255);
    DECLARE pinfo_param VARCHAR(255);
    DECLARE price_param FLOAT;
    DECLARE pimage_param VARCHAR(255);
    
    DECLARE product_cursor CURSOR FOR
        SELECT fid, pid, product, pcat, pinfo, price, pimage
        FROM fproduct;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    OPEN product_cursor;
    
    read_loop: LOOP
        FETCH product_cursor INTO fid_param, pid_param, product_param, pcat_param, pinfo_param, price_param, pimage_param;
        
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Process the data as needed
        -- For example, you can print or use the variables in further logic
        SELECT fid_param, pid_param, product_param, pcat_param, pinfo_param, price_param, pimage_param;

    END LOOP;

    CLOSE product_cursor;
END;
//

DELIMITER ;

-- cursor 4 get blog comments 

DELIMITER //

CREATE PROCEDURE get_blog_comments()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE blogId_param INT;
    DECLARE blogUser_param VARCHAR(256);
    DECLARE blogTitle_param VARCHAR(256);
    DECLARE blogContent_param LONGTEXT;
    DECLARE comment_param VARCHAR(256);
    DECLARE commentUser_param VARCHAR(256);
    
    DECLARE blog_cursor CURSOR FOR
        SELECT bd.blogId, bd.blogUser, bd.blogTitle, bd.blogContent, bf.comment, bf.commentUser
        FROM blogdata bd
        LEFT JOIN blogfeedback bf ON bd.blogId = bf.blogId;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    OPEN blog_cursor;
    
    read_loop: LOOP
        FETCH blog_cursor INTO blogId_param, blogUser_param, blogTitle_param, blogContent_param, comment_param, commentUser_param;
        
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Process the data as needed
        -- For example, you can print or use the variables in further logic
        SELECT blogId_param, blogUser_param, blogTitle_param, blogContent_param, comment_param, commentUser_param;

    END LOOP;

    CLOSE blog_cursor;
END;
//

DELIMITER ;


  

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
