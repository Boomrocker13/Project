CREATE DATABASE  IF NOT EXISTS `grading`;
USE `grading`;

--
-- Table structure for table `student`
--
DROP TABLE IF EXISTS `attends`;
DROP TABLE IF EXISTS `student`;
DROP TABLE IF EXISTS `course`;
DROP TABLE IF EXISTS `instructor`;


CREATE TABLE IF NOT EXISTS `instructor` (
  `instructorId` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`instructorId`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `course` (
  `courseId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `instructorId` int DEFAULT NULL,
  `description`varchar(450) DEFAULT NULL,
  `syllabus`varchar(450) DEFAULT NULL,
  `year`int DEFAULT NULL,
  `semester`int DEFAULT NULL,
  `type`varchar(45) DEFAULT NULL,
  `ects`float(4) DEFAULT NULL,
  `dm`int DEFAULT NULL,
  `department`varchar(45) DEFAULT NULL,  
  PRIMARY KEY (`courseId`),
  FOREIGN KEY (`instructorId`) REFERENCES `instructor`(`instructorId`)

) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `student` (
  `studentId` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `am` int DEFAULT NULL ,
  `gender` varchar(6) DEFAULT NULL,
  `registrationYear` int DEFAULT NULL,
  `registrationSemester` varchar(45) DEFAULT NULL,
  `labGrade` int DEFAULT NULL ,
  `finalGrade` int DEFAULT NULL ,
  `email` varchar(45) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `graduateStatus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`studentId`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `attends`(
	`studentId` int,
    `courseId` int,
    PRIMARY KEY (`studentId`, `courseId`),
	FOREIGN KEY (`studentId`) references `student`(`studentId`),
    FOREIGN KEY (`courseId`) REFERENCES `course`(`courseId`)
);
--
-- Data for table `instructor`
--

INSERT INTO `instructor` VALUES 
	(1,'Leslie','Andrews','LeslieA', 'LeslieAndrews', 'leslie@luv2code.com', 'female', 'Chemistry');
--	('LeslieA', 'LeslieAndrews');

INSERT INTO `student` VALUES 
	(2, 'Bruce', 'Wayne', 52, 'Male', 2002, 'Fall', 2, 5, 'iambatman@gcm.dc', 'Physics', 'UnderGraduate');