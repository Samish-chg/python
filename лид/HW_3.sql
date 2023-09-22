--
-- File generated with SQLiteStudio v3.4.4 on �� ��� 12 12:36:47 2023
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: employees
DROP TABLE IF EXISTS employees;
CREATE TABLE IF NOT EXISTS employees (id INTEGER PRIMARY KEY AUTOINCREMENT, full_name VARCHAR (200) NOT NULL, salary FLOAT NOT NULL DEFAULT 0.0, hobby TEXT DEFAULT NULL, birth_date DATE NOT NULL, is_married BOOLEAN DEFAULT FALSE);
INSERT INTO employees (id, full_name, salary, hobby, birth_date, is_married) VALUES (1, 'Mark Daniels', 1500.0, 'Football', '1999-01-02', 0);
INSERT INTO employees (id, full_name, salary, hobby, birth_date, is_married) VALUES (3, 'Diana Julls', 1800.0, 'Programming', '2005-01-22', 1);
INSERT INTO employees (id, full_name, salary, hobby, birth_date, is_married) VALUES (4, 'Michael Corse', 1800.0, 'Football', '2001-09-17', 1);
INSERT INTO employees (id, full_name, salary, hobby, birth_date, is_married) VALUES (5, 'Jack Moris', 2100.2, 'Programming', '2001-07-12', 1);
INSERT INTO employees (id, full_name, salary, hobby, birth_date, is_married) VALUES (6, 'Viola Manilson', 1750.82, NULL, '1991-03-01', 0);
INSERT INTO employees (id, full_name, salary, hobby, birth_date, is_married) VALUES (7, 'Joanna Moris', 1000.0, 'Football', '2004-04-13', 0);
INSERT INTO employees (id, full_name, salary, hobby, birth_date, is_married) VALUES (8, 'Peter Parker', 2000.0, 'Programming', '2002-11-28', 0);
INSERT INTO employees (id, full_name, salary, hobby, birth_date, is_married) VALUES (9, 'Paula Parkerson', 800.09, NULL, '2001-11-28', 1);
INSERT INTO employees (id, full_name, salary, hobby, birth_date, is_married) VALUES (10, 'George Newel', 1320.0, 'Programming', '1981-01-24', 1);
INSERT INTO employees (id, full_name, salary, hobby, birth_date, is_married) VALUES (11, 'Miranda Alistoun', 2500.55, 'Football', '1997-12-22', 0);
INSERT INTO employees (id, full_name, salary, hobby, birth_date, is_married) VALUES (12, 'Valeria Hillton', 2000.0, 'Football', '1977-10-28', 1);
INSERT INTO employees (id, full_name, salary, hobby, birth_date, is_married) VALUES (13, 'Jannet Miler', 2100.9, 'Programming', '1997-02-02', 1);
INSERT INTO employees (id, full_name, salary, hobby, birth_date, is_married) VALUES (14, 'William Tokenson', 1500.0, NULL, '1999-12-12', 0);
INSERT INTO employees (id, full_name, salary, hobby, birth_date, is_married) VALUES (15, 'Shanty Morani', 1200.6, NULL, '1989-08-13', 0);
INSERT INTO employees (id, full_name, salary, hobby, birth_date, is_married) VALUES (16, 'Fiona Giordano', 900.12, 'Football', '1977-01-15', 1);

-- Table: products
DROP TABLE IF EXISTS products;
CREATE TABLE IF NOT EXISTS products (id INTEGER PRIMARY KEY AUTOINCREMENT, title VARCHAR (250) NOT NULL, category VARCHAR (2) DEFAULT NULL, price FLOAT NOT NULL DEFAULT 0.0, quantity INTEGER NOT NULL DEFAULT 0);
INSERT INTO products (id, title, category, price, quantity) VALUES (1, 'Chocolate', 'FD', 10.5, 129);
INSERT INTO products (id, title, category, price, quantity) VALUES (2, 'Jeans', 'CL', 120.0, 55);
INSERT INTO products (id, title, category, price, quantity) VALUES (3, 'T-Shirt', 'CL', 4.3, 15);
INSERT INTO products (id, title, category, price, quantity) VALUES (4, 'Bread', 'FD', 2.3, 50);
INSERT INTO products (id, title, category, price, quantity) VALUES (5, 'Jacket', 'CL', 67.8, 5);
INSERT INTO products (id, title, category, price, quantity) VALUES (6, 'Keyboard', 'EL', 35.0, 31);
INSERT INTO products (id, title, category, price, quantity) VALUES (7, 'Candy', 'FD', 1.0, 1890);
INSERT INTO products (id, title, category, price, quantity) VALUES (8, 'Iphone', 'EL', 859.9, 90);
INSERT INTO products (id, title, category, price, quantity) VALUES (9, 'Monitor', 'EL', 156.0, 2);
INSERT INTO products (id, title, category, price, quantity) VALUES (10, 'Sweater', 'CL', 45.75, 34);
INSERT INTO products (id, title, category, price, quantity) VALUES (11, 'Limonade in Bottle', 'FD', 2.0, 2467);
INSERT INTO products (id, title, category, price, quantity) VALUES (12, 'Washing Machine', 'EL', 580.65, 8);
INSERT INTO products (id, title, category, price, quantity) VALUES (13, 'Chips in Packet', 'FD', 1.5, 1450);
INSERT INTO products (id, title, category, price, quantity) VALUES (14, 'Cookies in Packet', 'FD', 0.65, 430);
INSERT INTO products (id, title, category, price, quantity) VALUES (15, 'Microwave Oven', 'EL', 110.0, 15);
INSERT INTO products (id, title, category, price, quantity) VALUES (16, 'Shorts', 'CL', 7.68, 142);
INSERT INTO products (id, title, category, price, quantity) VALUES (17, 'Yogurt', 'FD', 4.0, 560);
INSERT INTO products (id, title, category, price, quantity) VALUES (18, 'TV', 'EL', 379.9, 71);
INSERT INTO products (id, title, category, price, quantity) VALUES (19, 'Cardigan', 'CL', 145.0, 3);
INSERT INTO products (id, title, category, price, quantity) VALUES (20, 'Ice Cream', 'FD', 5.0, 1370);
INSERT INTO products (id, title, category, price, quantity) VALUES (21, 'Coffee Machine', 'EL', 345.5, 12);
INSERT INTO products (id, title, category, price, quantity) VALUES (22, 'Suit', 'CL', 600.0, 29);
INSERT INTO products (id, title, category, price, quantity) VALUES (23, 'Cake', 'FD', 7.6, 13);
INSERT INTO products (id, title, category, price, quantity) VALUES (24, 'Blouse', 'CL', 58.0, 19);
INSERT INTO products (id, title, category, price, quantity) VALUES (25, 'Earphones', 'EL', 45.3, 272);



-- Table: sales
DROP TABLE IF EXISTS sales;
CREATE TABLE IF NOT EXISTS sales (
    id         INTEGER PRIMARY KEY AUTOINCREMENT,
    product_id INTEGER DEFAULT NULL
                       REFERENCES products (id) ON DELETE NO ACTION,
    seller_id  INTEGER DEFAULT NULL
                       REFERENCES employees (id) ON DELETE NO ACTION,
    sale_date  DATE    NOT NULL
);
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (1, 1, 1, '2023-01-02');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (2, 1, 1, '2023-01-02');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (3, 1, 1, '2023-01-02');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (4, 1, 1, '2023-01-02');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (5, 2, 1, '2023-01-02');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (6, 2, 1, '2023-01-02');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (7, 8, 1, '2023-01-02');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (8, 2, 3, '2023-01-02');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (9, 2, 3, '2023-01-02');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (10, 2, 3, '2023-01-02');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (11, 3, 3, '2023-01-02');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (12, 8, 3, '2023-01-02');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (13, 5, 3, '2023-01-02');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (14, 5, 3, '2023-01-02');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (15, 10, 1, '2023-01-10');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (16, 10, 1, '2023-01-10');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (17, 20, 1, '2023-01-10');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (18, 20, 1, '2023-01-10');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (19, 20, 1, '2023-01-10');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (20, 20, 1, '2023-01-10');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (21, 25, 1, '2023-01-10');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (22, 25, 3, '2023-01-10');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (23, 2, 3, '2023-01-10');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (24, 2, 3, '2023-01-10');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (25, 10, 3, '2023-01-10');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (26, 10, 4, '2023-01-10');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (27, 25, 4, '2023-01-10');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (28, 25, 4, '2023-01-10');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (29, 22, 1, '2023-02-15');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (30, 22, 1, '2023-02-15');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (31, 22, 1, '2023-02-15');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (32, 24, 1, '2023-02-15');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (33, 2, 1, '2023-02-15');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (34, 24, 1, '2023-02-15');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (35, 8, 1, '2023-02-15');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (36, 2, 3, '2023-02-15');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (37, 7, 3, '2023-02-15');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (38, 18, 3, '2023-02-15');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (39, 3, 3, '2023-02-15');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (40, 24, 3, '2023-02-15');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (41, 5, 3, '2023-02-20');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (42, 18, 3, '2023-02-20');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (43, 24, 1, '2023-02-20');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (44, 10, 1, '2023-02-20');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (45, 20, 1, '2023-02-20');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (46, 20, 1, '2023-02-20');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (47, 7, 1, '2023-02-20');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (48, 24, 1, '2023-02-20');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (49, 25, 1, '2023-02-20');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (50, 25, 3, '2023-02-20');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (51, 7, 3, '2023-02-20');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (52, 18, 3, '2023-02-20');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (53, 10, 3, '2023-02-20');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (54, 10, 4, '2023-02-20');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (55, 25, 4, '2023-02-20');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (56, 25, 4, '2023-02-20');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (57, 1, 1, '2023-03-30');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (58, 2, 1, '2023-03-30');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (59, 3, 1, '2023-03-30');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (60, 4, 1, '2023-03-30');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (61, 5, 1, '2023-03-30');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (62, 6, 1, '2023-03-30');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (63, 7, 1, '2023-03-30');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (64, 8, 3, '2023-03-30');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (65, 9, 3, '2023-03-30');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (66, 10, 3, '2023-03-30');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (67, 11, 3, '2023-03-30');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (68, 12, 3, '2023-03-30');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (69, 13, 3, '2023-03-30');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (70, 14, 3, '2023-03-30');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (71, 15, 1, '2023-03-30');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (72, 16, 1, '2023-03-30');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (73, 17, 1, '2023-03-30');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (74, 18, 1, '2023-03-30');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (75, 19, 1, '2023-03-30');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (76, 20, 1, '2023-03-30');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (77, 21, 1, '2023-03-30');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (78, 22, 3, '2023-03-30');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (79, 23, 3, '2023-03-30');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (80, 24, 3, '2023-03-12');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (81, 10, 3, '2023-03-12');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (82, 10, 4, '2023-03-12');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (83, 25, 4, '2023-03-12');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (84, 21, 4, '2023-03-12');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (85, 16, 1, '2023-03-12');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (86, 22, 1, '2023-03-12');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (87, 13, 1, '2023-03-12');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (88, 9, 1, '2023-03-12');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (89, 7, 1, '2023-03-12');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (90, 24, 1, '2023-03-12');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (91, 20, 1, '2023-03-12');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (92, 17, 3, '2023-03-12');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (93, 7, 3, '2023-03-12');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (94, 8, 3, '2023-03-12');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (95, 3, 3, '2023-03-12');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (96, 24, 3, '2023-03-12');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (97, 5, 3, '2023-03-12');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (98, 18, 3, '2023-03-12');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (99, 2, 1, '2023-03-12');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (100, 1, 1, '2023-03-12');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (101, 20, 1, '2023-03-12');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (102, 22, 1, '2023-03-12');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (103, 7, 1, '2023-03-12');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (104, 24, 1, '2023-03-12');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (105, 25, 1, '2023-03-12');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (106, 25, 3, '2023-03-12');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (107, 7, 3, '2023-03-12');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (108, 18, 3, '2023-03-12');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (109, 3, 3, '2023-03-12');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (110, 16, 4, '2023-03-12');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (111, 11, 4, '2023-03-12');
INSERT INTO sales (id, product_id, seller_id, sale_date) VALUES (112, 14, 4, '2023-03-12');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;

/*1. Написать SQL запрос, который бы сформировал отчет по продажам каждой категории товара в отдельных месяцах, в отчете должны быть следующие колонки:*/
SELECT
  strftime('%Y-%m', sale_date) AS year_month,
  category,
  COUNT(*) AS quantity,
  AVG(price) AS average_price,
  SUM(price) AS sales_amount
FROM sales
JOIN products ON sales.product_id = products.id
GROUP BY year_month, category
ORDER BY year_month, category


/*2Создать представление (VIEW) total_employee_sales*/
CREATE VIEW total_employee_sales AS
SELECT
  e.full_name AS employee,
  e.salary,
  COUNT(*) AS quantity,
  ROUND(SUM(p.price), 2) AS sales_amount
FROM sales s
JOIN employees e ON s.seller_id = e.id
JOIN products p ON s.product_id = p.id
GROUP BY employee
HAVING quantity >= 10
ORDER BY sales_amount DESC;

/*3 Сделать выборку всех колонок и записей из представления total_employee_sales.*/
SELECT * FROM total_employee_sales;
