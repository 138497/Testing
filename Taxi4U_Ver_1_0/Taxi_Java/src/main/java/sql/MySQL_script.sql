-- Delete Old DB and Create a Fresh DB
drop database if exists taxi_db;
create database taxi_db;

-- Use DB
use taxi_db;

-- Create TABLE for Application 
CREATE TABLE tblOrder (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `pickupcity` varchar(45) NOT NULL,
  `dropcity` varchar(45) NOT NULL,
  `datevalue` varchar(45) NOT NULL,
  `hourvalue` varchar(45) NOT NULL,
  `minutevalue` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `street` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `zip` varchar(45) NOT NULL,
  `ustd` varchar(45) NOT NULL,
  `telephone` varchar(45) NOT NULL,
  `vehicletype` varchar(45) NOT NULL,
  PRIMARY KEY (`order_id`)
);

-- Create TABLE for Application 
CREATE TABLE tblFeedbacks (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Mobile` varchar(45) NOT NULL,
  `Feedback` varchar(500) NOT NULL,
  PRIMARY KEY (`feedback_id`)
);

