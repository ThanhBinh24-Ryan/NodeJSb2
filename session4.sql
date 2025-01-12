-- Tạo cơ sở dữ liệu và sử dụng
CREATE DATABASE Food_App;
USE Food_App;

-- Tạo bảng user
CREATE TABLE user (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255)
);

-- Tạo bảng restaurant
CREATE TABLE restaurant (
    res_id INT AUTO_INCREMENT PRIMARY KEY,
    res_name VARCHAR(255),
    image VARCHAR(255),
    `desc` VARCHAR(255)
);

-- Tạo bảng food_type
CREATE TABLE food_type (
    type_id INT AUTO_INCREMENT PRIMARY KEY,
    type_name VARCHAR(255)
);

-- Tạo bảng food
CREATE TABLE food (
    food_id INT AUTO_INCREMENT PRIMARY KEY,
    food_name VARCHAR(255),
    image VARCHAR(255),
    price FLOAT,
    `desc` VARCHAR(255),
    type_id INT,
    FOREIGN KEY (type_id) REFERENCES food_type(type_id)
);

-- Tạo bảng sub_food
CREATE TABLE sub_food (
    sub_id INT AUTO_INCREMENT PRIMARY KEY,
    sub_name VARCHAR(255),
    sub_price FLOAT,
    food_id INT,
    FOREIGN KEY (food_id) REFERENCES food(food_id)
);

-- Tạo bảng order
CREATE TABLE `order` (
    user_id INT,
    food_id INT,
    amount INT,
    code VARCHAR(50),
    arr_sub_id VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (food_id) REFERENCES food(food_id)
);

-- Tạo bảng rate_res
CREATE TABLE rate_res (
    user_id INT,
    res_id INT,
    amount INT,
    date_rate DATETIME,
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (res_id) REFERENCES restaurant(res_id)
);

-- Tạo bảng like_res
CREATE TABLE like_res (
    user_id INT,
    res_id INT,
    date_like DATETIME,
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (res_id) REFERENCES restaurant(res_id)
);

-- Thêm dữ liệu mẫu
-- Bảng user
INSERT INTO user (full_name, email, password)
VALUES
('User 1', 'user1@example.com', 'password1'),
('User 2', 'user2@example.com', 'password2'),
('User 3', 'user3@example.com', 'password3'),
('User 4', 'user4@example.com', 'password4'),
('User 5', 'user5@example.com', 'password5'),
('User 6', 'user6@example.com', 'password6'),
('User 7', 'user7@example.com', 'password7'),
('User 8', 'user8@example.com', 'password8'),
('User 9', 'user9@example.com', 'password9'),
('User 10', 'user10@example.com', 'password10'),
('User 11', 'user11@example.com', 'password11'),
('User 12', 'user12@example.com', 'password12'),
('User 13', 'user13@example.com', 'password13'),
('User 14', 'user14@example.com', 'password14'),
('User 15', 'user15@example.com', 'password15'),
('User 16', 'user16@example.com', 'password16'),
('User 17', 'user17@example.com', 'password17'),
('User 18', 'user18@example.com', 'password18'),
('User 19', 'user19@example.com', 'password19'),
('User 20', 'user20@example.com', 'password20');

-- Bảng restaurant
INSERT INTO restaurant (res_name, image, `desc`)
VALUES
('Restaurant 1', 'image1.jpg', 'Description 1'),
('Restaurant 2', 'image2.jpg', 'Description 2'),
('Restaurant 3', 'image3.jpg', 'Description 3'),
('Restaurant 4', 'image4.jpg', 'Description 4'),
('Restaurant 5', 'image5.jpg', 'Description 5'),
('Restaurant 6', 'image6.jpg', 'Description 6'),
('Restaurant 7', 'image7.jpg', 'Description 7'),
('Restaurant 8', 'image8.jpg', 'Description 8'),
('Restaurant 9', 'image9.jpg', 'Description 9'),
('Restaurant 10', 'image10.jpg', 'Description 10'),
('Restaurant 11', 'image11.jpg', 'Description 11'),
('Restaurant 12', 'image12.jpg', 'Description 12'),
('Restaurant 13', 'image13.jpg', 'Description 13'),
('Restaurant 14', 'image14.jpg', 'Description 14'),
('Restaurant 15', 'image15.jpg', 'Description 15'),
('Restaurant 16', 'image16.jpg', 'Description 16'),
('Restaurant 17', 'image17.jpg', 'Description 17'),
('Restaurant 18', 'image18.jpg', 'Description 18'),
('Restaurant 19', 'image19.jpg', 'Description 19'),
('Restaurant 20', 'image20.jpg', 'Description 20');

-- Bảng food_type
INSERT INTO food_type (type_name)
VALUES
('Type 1'), ('Type 2'), ('Type 3'), ('Type 4'), ('Type 5'),
('Type 6'), ('Type 7'), ('Type 8'), ('Type 9'), ('Type 10'),
('Type 11'), ('Type 12'), ('Type 13'), ('Type 14'), ('Type 15'),
('Type 16'), ('Type 17'), ('Type 18'), ('Type 19'), ('Type 20');

-- Bảng food
INSERT INTO food (food_name, image, price, `desc`, type_id)
VALUES
('Food 1', 'food1.jpg', 10.0, 'Delicious food 1', 1),
('Food 2', 'food2.jpg', 20.0, 'Delicious food 2', 2),
('Food 3', 'food3.jpg', 30.0, 'Delicious food 3', 3),
('Food 4', 'food4.jpg', 40.0, 'Delicious food 4', 4),
('Food 5', 'food5.jpg', 50.0, 'Delicious food 5', 5),
('Food 6', 'food6.jpg', 60.0, 'Delicious food 6', 6),
('Food 7', 'food7.jpg', 70.0, 'Delicious food 7', 7),
('Food 8', 'food8.jpg', 80.0, 'Delicious food 8', 8),
('Food 9', 'food9.jpg', 90.0, 'Delicious food 9', 9),
('Food 10', 'food10.jpg', 100.0, 'Delicious food 10', 10),
('Food 11', 'food11.jpg', 110.0, 'Delicious food 11', 11),
('Food 12', 'food12.jpg', 120.0, 'Delicious food 12', 12),
('Food 13', 'food13.jpg', 130.0, 'Delicious food 13', 13),
('Food 14', 'food14.jpg', 140.0, 'Delicious food 14', 14),
('Food 15', 'food15.jpg', 150.0, 'Delicious food 15', 15),
('Food 16', 'food16.jpg', 160.0, 'Delicious food 16', 16),
('Food 17', 'food17.jpg', 170.0, 'Delicious food 17', 17),
('Food 18', 'food18.jpg', 180.0, 'Delicious food 18', 18),
('Food 19', 'food19.jpg', 190.0, 'Delicious food 19', 19),
('Food 20', 'food20.jpg', 200.0, 'Delicious food 20', 20);

-- Bảng sub_food
INSERT INTO sub_food (sub_name, sub_price, food_id)
VALUES
('Sub Food 1', 2.0, 1),
('Sub Food 2', 2.5, 2),
('Sub Food 3', 3.0, 3),
('Sub Food 4', 3.5, 4),
('Sub Food 5', 4.0, 5),
('Sub Food 6', 4.5, 6),
('Sub Food 7', 5.0, 7),
('Sub Food 8', 5.5, 8),
('Sub Food 9', 6.0, 9),
('Sub Food 10', 6.5, 10),
('Sub Food 11', 7.0, 11),
('Sub Food 12', 7.5, 12),
('Sub Food 13', 8.0, 13),
('Sub Food 14', 8.5, 14),
('Sub Food 15', 9.0, 15),
('Sub Food 16', 9.5, 16),
('Sub Food 17', 10.0, 17),
('Sub Food 18', 10.5, 18),
('Sub Food 19', 11.0, 19),
('Sub Food 20', 11.5, 20);

-- Bảng order
INSERT INTO `order` (user_id, food_id, amount, code, arr_sub_id)
VALUES
(1, 1, 2, 'ORD001', '1,2'),
(2, 3, 1, 'ORD002', '3,4'),
(3, 5, 4, 'ORD003', '5,6'),
(4, 7, 3, 'ORD004', '7,8'),
(5, 9, 2, 'ORD005', '9,10'),
(6, 11, 1, 'ORD006', '11,12'),
(7, 13, 3, 'ORD007', '13,14'),
(8, 15, 4, 'ORD008', '15,16'),
(9, 17, 1, 'ORD009', '17,18'),
(10, 19, 2, 'ORD010', '19,20');

-- Bảng rate_res
INSERT INTO rate_res (user_id, res_id, amount, date_rate)
VALUES
(1, 1, 5, '2025-01-01 12:00:00'),
(2, 2, 4, '2025-01-02 13:00:00'),
(3, 3, 3, '2025-01-03 14:00:00'),
(4, 4, 5, '2025-01-04 15:00:00'),
(5, 5, 2, '2025-01-05 16:00:00'),
(6, 6, 4, '2025-01-06 17:00:00'),
(7, 7, 3, '2025-01-07 18:00:00'),
(8, 8, 5, '2025-01-08 19:00:00'),
(9, 9, 1, '2025-01-09 20:00:00'),
(10, 10, 4, '2025-01-10 21:00:00');

-- Bảng like_res
INSERT INTO like_res (user_id, res_id, date_like)
VALUES
(1, 1, '2025-01-01 12:00:00'),
(2, 2, '2025-01-02 13:00:00'),
(3, 3, '2025-01-03 14:00:00'),
(4, 4, '2025-01-04 15:00:00'),
(5, 5, '2025-01-05 16:00:00'),
(6, 6, '2025-01-06 17:00:00'),
(7, 7, '2025-01-07 18:00:00'),
(8, 8, '2025-01-08 19:00:00'),
(9, 9, '2025-01-09 20:00:00'),
(10, 10, '2025-01-10 21:00:00');
SELECT user_id, COUNT(*) AS like_count
FROM like_res
GROUP BY user_id
ORDER BY like_count DESC
LIMIT 5;
--2
SELECT res_id, COUNT(*) AS like_count
FROM like_res
GROUP BY res_id
ORDER BY like_count DESC
LIMIT 2;
--3
SELECT user_id, SUM(amount) AS total_orders
FROM `order`
GROUP BY user_id
ORDER BY total_orders DESC
LIMIT 1;
--4
SELECT u.user_id, u.full_name
FROM user u
LEFT JOIN `order` o ON u.user_id = o.user_id
LEFT JOIN like_res lr ON u.user_id = lr.user_id
LEFT JOIN rate_res rr ON u.user_id = rr.user_id
WHERE o.user_id IS NULL AND lr.user_id IS NULL AND rr.user_id IS NULL;
