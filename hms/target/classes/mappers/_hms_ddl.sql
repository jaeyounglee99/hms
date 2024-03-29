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
	EMAIL 				VARCHAR(50),
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
	SORT				VARCHAR(20),
	ROOMS_NM			VARCHAR(50),
	VIEW				VARCHAR(20),
	PRICE				INT,
	DISCOUNT_RATE		INT,
	POINT				INT,
	FLOOR				VARCHAR(20),
	BED_NM				VARCHAR(50),
	SIZE				INT,
	STOCK				INT,
	AMENITY_BATH		VARCHAR(1000),
	AMENITY_BED			VARCHAR(1000),
	FACILITIES			VARCHAR(1000),
	ROOMS_INTRO			VARCHAR(1000),
    ROOMS_INFO			VARCHAR(1000),
    ENROLL_DT			DATETIME,
    ROOMS_FILE_NAME1	VARCHAR(100),
    ROOMS_FILE_NAME2	VARCHAR(100),
    ROOMS_FILE_NAME3	VARCHAR(100)
);

CREATE TABLE `ORDER`(
	ORDER_CD			INT PRIMARY KEY NOT NULL AUTO_INCREMENT,		
	MEMBER_ID			VARCHAR(20),
	ROOMS_CD			INT,
	CHECK_IN			VARCHAR(20),
	CHECK_OUT			VARCHAR(20),
	STAY_PERIOD			INT,
	PERSONNEL			INT,
	BREAKFAST			INT,
	SWIMMING_POOL		INT,
	PAYMENT_AMT			INT,
	TOTAL_POINT			INT,
	ORDERER_NM			VARCHAR(50),
	ORDERER_BIRTH		VARCHAR(20),
	ORDERER_HP			VARCHAR(50),
	ORDERER_EMAIL		VARCHAR(50),
	REQUEST				VARCHAR(500),
	CARD_COMPANY_NM		VARCHAR(50),
	CARD_NO1			VARCHAR(10),
	CARD_NO2			VARCHAR(10),
	CARD_NO3			VARCHAR(10),
	CARD_NO4			VARCHAR(10),
	CARD_VALIDITY_MONTH	VARCHAR(10),
	CARD_VALIDITY_YEAR	VARCHAR(10),
	PAY_ORDER_TIME		DATETIME
);

CREATE TABLE CONTACT (
	CONTACT_CD  INT AUTO_INCREMENT PRIMARY KEY,
	NAME		VARCHAR(50),
	EMAIL		VARCHAR(50),
	SUBJECT		VARCHAR(300),
	CONTENT		VARCHAR(2000),
	REG_DT  	DATETIME
);
