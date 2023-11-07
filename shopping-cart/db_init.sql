-- CREATE DATABASE shopping_cart;

-- USE shopping_cart;

-- CREATE TABLE users (
-- 	id INT AUTO_INCREMENT,
--     name VARCHAR(40),
--     email VARCHAR(40),
--     password VARCHAR(40),
--     PRIMARY KEY (id)
--     );
    
-- CREATE TABLE products (
-- 	id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(300),
--     category VARCHAR(100),
--     price DECIMAL(10,2),
--     image VARCHAR(1000)
--     );

-- CREATE TABLE orders (
-- 	order_id int AUTO_INCREMENT PRIMARY KEY,
--     product_id int NOT NULL,
--     user_id int NOT NULL,
-- 	order_qty int,
--     order_date TIMESTAMP,
--     FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE,
--     FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
--     );