CREATE DATABASE HMS;

USE HMS;

CREATE TABLE `ADMIN`(
    ADMIN_ID 	VARCHAR(20) PRIMARY KEY,
	PASSWD 		VARCHAR(100),
	JOIN_DT 	DATETIME
);

INSERT INTO `ADMIN` VALUES ('hmsadmin' , 'Passw0rd' , NOW());


CREATE TABLE MEMBER(
    MEMBER_ID 			VARCHAR(20) PRIMARY KEY,
	MEMBER_NM 			VARCHAR(50),
    PASSWD 				VARCHAR(1000),
	GENDER 				VARCHAR(10),
	DATE_BIRTH 			VARCHAR(20),
	HP 					VARCHAR(20),
	SMSSTS_YN 			VARCHAR(20),
	EMAIL 				VARCHAR(20),
	EMAILSTS_YN 		VARCHAR(20),
	POSTAL_CODE 		VARCHAR(20),
	ROAD_ADDRESS 		VARCHAR(500),
	LAND_ADDRESS 		VARCHAR(500),
	REMAINING_ADDRESS 	VARCHAR(500),
	POINT				INT,
	JOIN_DT 			DATETIME
);

CREATE TABLE ROOMS(
	ROOMS_CD			INT PRIMARY KEY AUTO_INCREMENT,
	ROOMS_NM			VARCHAR(50),
	VIEW				VARCHAR(20),
	PRICE				INT,
	DISCOUNT_RATE		INT,
	POINT				INT,
	FLOOR				VARCHAR(20),
	BED_NM				VARCHAR(50),
	SIZE				INT,
	STOKE				INT,
	AMENITY_BATH		VARCHAR(1000),
	AMENITY_BED			VARCHAR(1000),
	FACILITIES			VARCHAR(1000),
	ROOMS_INTRO			VARCHAR(1000),
    ROOMS_INFO			VARCHAR(1000),
	ENROLL_DT			DATETIME,
    ROOMS_FILE_NAME1	VARCHAR(100),
    ROOMS_FILE_NAME2	VARCHAR(100),
    ROOMS_FILE_NAME3	VARCHAR(100),
    
);