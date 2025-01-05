-- cach 1 tao database truc tiep tu TablePluS
-- CACH 2
-- CREATE DATABASE TESTNODE48
-- USE TESTNODE48
CREATE TABLE PRODUCT(
 productName varchar (100) NOT NULL,
 imageProduct VARCHAR (255),
 danhGia int ,
 price DOUBLE 
)
INSERT INTO PRODUCT (productName, imageProduct, danhGia, price) VALUES
('Product 1', 'image_1.jpg', 2, 958.07),
('Product 2', 'image_2.jpg', 4, 433.25),
('Product 3', 'image_3.jpg', 4, 238.04),
('Product 4', 'image_4.jpg', 5, 747.77),
('Product 5', 'image_5.jpg', 4, 840.14),
('Product 6', 'image_6.jpg', 3, 183.69),
('Product 7', 'image_7.jpg', 5, 523.81),
('Product 8', 'image_8.jpg', 1, 45.67),
('Product 9', 'image_9.jpg', 3, 689.34),
('Product 10', 'image_10.jpg', 4, 357.20),
('Product 11', 'image_11.jpg', 2, 102.43),
('Product 12', 'image_12.jpg', 3, 907.59),
('Product 13', 'image_13.jpg', 5, 431.67),
('Product 14', 'image_14.jpg', 1, 76.25),
('Product 15', 'image_15.jpg', 4, 512.89),
('Product 16', 'image_16.jpg', 2, 287.65),
('Product 17', 'image_17.jpg', 5, 962.10),
('Product 18', 'image_18.jpg', 3, 111.32),
('Product 19', 'image_19.jpg', 4, 350.50),
('Product 20', 'image_20.jpg', 1, 920.78);
-- select * from PRODUCT
-- SELECT productName, imageProduct from PRODUCT
-- SELECT productName as 'Alo' from PRODUCT
create TABLE User(
 fullName VARCHAR(100) NOT NULL,
 email varchar (100) not null,
 phone varchar(10) ,
 address varchar(100),
 age int
)
INSERT INTO User (fullName, email, phone, address, age) VALUES
('User 1 Le', 'user1@example.com', '0991237064', '135 Main St, City 1', 63),
('User 2 Pham', 'user2@example.com', '0980756382', '772 Main St, City 2', 59),
('User 3 Nguyen', 'user3@example.com', '0955095802', '189 Main St, City 3', 33),
('User 4 Tran', 'user4@example.com', '0961950222', '112 Main St, City 4', 60),
('User 5 Le', 'user5@example.com', '0967918750', '728 Main St, City 5', 35),
('User 6 Nguyen', 'user6@example.com', '0971104335', '375 Main St, City 6', 19),
('User 7 Pham', 'user7@example.com', '0958043527', '259 Main St, City 7', 40),
('User 8 Tran', 'user8@example.com', '0946114701', '468 Main St, City 8', 56),
('User 9 Le', 'user9@example.com', '0912459073', '389 Main St, City 9', 27),
('User 10 Nguyen', 'user10@example.com', '0978886244', '954 Main St, City 10', 22),
('User 11 Pham', 'user11@example.com', '0909713825', '853 Main St, City 11', 45),
('User 12 Tran', 'user12@example.com', '0934561289', '641 Main St, City 12', 36),
('User 13 Le', 'user13@example.com', '0954443311', '712 Main St, City 13', 63),
('User 14 Nguyen', 'user14@example.com', '0941234557', '357 Main St, City 14', 52),
('User 15 Pham', 'user15@example.com', '0928706443', '826 Main St, City 15', 21),
('User 16 Tran', 'user16@example.com', '0985601932', '923 Main St, City 16', 31),
('User 17 Le', 'user17@example.com', '0910049357', '488 Main St, City 17', 58),
('User 18 Nguyen', 'user18@example.com', '0971326458', '612 Main St, City 18', 29),
('User 19 Pham', 'user19@example.com', '0930475811', '419 Main St, City 19', 46),
('User 20 Tran', 'user20@example.com', '0903347612', '156 Main St, City 20', 18);
SELECT * from User WHERE age BETWEEN 25 and 30
SELECT * from User where age >25 and age <30
ORDER BY age DESC 
-- asc tang dan 
-- desc giam dan 
SELECT * from User WHERE fullName LIKE '%Nguyen%'
SELECT *
FROM User 
WHERE age = (
SELECT age 
from User 
ORDER by age DESC 
limit 1
)
select * from User 
WHERE age = ( 
select Max(age) from User )
SELECT COUNT(*) as 'tong so user' from User
update User set age = 20 
where fullName = 'User 20 Tran'
update User set age = 20 
where fullName  in ('User 20 Tran','User 19 Pham')
SELECT * from User
delete from User 
where fullName = 'User 20 Tran'
-- update table 
alter table User 
ADD COLUMN gender int DEFAULT 1 
-- case2
alter TABLE User 
MODIFY COLUMN fullName VARCHAR (101) NOT Null 
