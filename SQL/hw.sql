/* Создание новой таблицы - товаров*/
CREATE TABLE products (
    id       INTEGER       PRIMARY KEY AUTOINCREMENT,
    title    VARCHAR (250) NOT NULL,
    category VARCHAR (2)   DEFAULT NULL,
    price    FLOAT         NOT NULL
                           DEFAULT 0.0,
    quantity INTEGER       NOT NULL
                           DEFAULT 0
);


/* Добавление 1 записи в таблицу -  товаров */
INSERT INTO products ( title, category, price, quantity)
VALUES ('Milk', FD, '120', '356',);

/* Добавление нескольких записей в таблицу - товаров  */
INSERT INTO products ( title, category, price, quantity)
VALUES 
('Chocolate	 FD,	10.5,	129')
('Jeans	  CL,	120,	55')
('T-Shirt	CL,   0,  15')
('Bread 	FD,  2.3, 	50')
('Jacket	CL,	67.8,	5')
('Keyboard	EL, 35	31')
('Candy	    FD,	  1,  1890')
('Iphone	EL,	859.9	90')
('Monitor	EL,	156	2')
('Sweater	CL,	45.75	34')
('Limonade in Bottle,	FD	2	2467')
('Washing Machine,	EL	580.65	8')
('Cookies in Packet	FD,	0	430')
('Microwave Oven	EL	110	15')
('Shorts	CL	7.68	142')
('Yogurt	FD	4	560')
('TV	EL	379.9	71')
('Cardigan	CL	145	3')
('Ice Cream	FD	5	1370')
('Coffee Machine	EL	345.5	12')
('Suit	CL	600	29')
('Cake	FD	7.6	13')
('Blouse	CL	58	19')
('Earphones	EL	45.3	272')

/* Удаление товаров с ценой 0 долларов.*/
DELETE FROM products
WHERE price = 0;

/*Снизить цену на 10% всех товаров в категории EL (электроника), у которых цена выше 100 долларов:*/
UPDATE products
SET price = price * 0.9
WHERE category = 'EL'
AND price > 100;

/*Добавить 3 товара в каждую из категорий:*/
-- Добавление товаров в категорию FD (еда)
INSERT INTO Таблица_товаров (title, category, price, quantity) VALUES
  ('Apple', 'FD', 5, 10),
  ('Liver', 'FD', 7, 15),
  ('beans', 'FD', 6, 8);

-- Добавление товаров в категорию EL (электроника)
INSERT INTO Таблица_товаров (title, category, price, quantity) VALUES
  ('coffee-machine', 'EL', 120, 5),
  ('Air-conditioner', 'EL', 150, 7),
  ('Balance', 'EL', 80, 12);

-- Добавление товаров в категорию CL (одежда)
INSERT INTO Таблица_товаров (title, category, price, quantity) VALUES
  ('Skirt', 'CL', 40, 20),
  ('Cap', 'CL', 30, 25),
  ('Heels', 'CL', 35, 18);

/*Показать все колонки из таблицы товаров, которых на складе осталось больше 10-ти штук, отсортированные по категории и цене:*/
SELECT *
FROM products
WHERE quantity > 10
ORDER BY category, price DESC;

/*Показать все колонки из таблицы товаров из категорий FD - еда и CL - одежда, цена которых в диапазоне от 10 до 50 долларов. Также вычислить выручку в отдельной колонке:*/
SELECT
  title,
  category,
  price,
  quantity,
  price * quantity AS revenue
FROM products
WHERE category IN ('FD', 'CL')
AND price BETWEEN 10 AND 50;
