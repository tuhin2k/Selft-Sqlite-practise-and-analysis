CREATE TABLE customers
( customer_id int NOT NULL,
  last_name char(50) NOT NULL,
  first_name char(50) NOT NULL,
  favorite_website char(50),
  CONSTRAINT customers_pk PRIMARY KEY (customer_id)
);

CREATE TABLE orders
( order_id int NOT NULL,
  customer_id int,
  order_date date,
  CONSTRAINT orders_pk PRIMARY KEY (order_id)
);


INSERT INTO customers
(customer_id, last_name, first_name, favorite_website)
VALUES
(4000, 'Jackson', 'Joe', 'techonthenet.com');

INSERT INTO customers
(customer_id, last_name, first_name, favorite_website)
VALUES
(5000, 'Smith', 'Jane', 'digminecraft.com');

INSERT INTO customers
(customer_id, last_name, first_name, favorite_website)
VALUES
(6000, 'Ferguson', 'Samantha', 'bigactivities.com');

INSERT INTO customers
(customer_id, last_name, first_name, favorite_website)
VALUES
(7000, 'Reynolds', 'Allen', 'checkyourmath.com');

INSERT INTO customers
(customer_id, last_name, first_name, favorite_website)
VALUES
(8000, 'Anderson', 'Paige', NULL);

INSERT INTO customers
(customer_id, last_name, first_name, favorite_website)
VALUES
(9000, 'Johnson', 'Derek', 'techonthenet.com');

INSERT INTO orders
(order_id, customer_id, order_date)
VALUES
(1,7000,'2016/04/18');

INSERT INTO orders
(order_id, customer_id, order_date)
VALUES
(2,5000,'2016/04/18');

INSERT INTO orders
(order_id, customer_id, order_date)
VALUES
(3,8000,'2016/04/19');

INSERT INTO orders
(order_id, customer_id, order_date)
VALUES
(4,4000,'2016/04/20');

INSERT INTO orders
(order_id, customer_id, order_date)
VALUES
(5,null,'2016/05/01');


select * from customers;
SELECT * FROM orders;


SELECT *
FROM customers,orders;

SELECT *
FROM customers,orders
WHERE customers.customer_id=orders.customer_id;

SELECT *
FROM customers natural join orders;

SELECT *
FROM orders natural join customers;

SELECT *
FROM customers join orders; -- join / inner join / left join e on use na korle cartesian product

SELECT *
FROM customers inner join orders;

SELECT *
FROM customers join orders on orders.customer_id=customers.customer_id;

SELECT *
FROM customers inner join orders on orders.customer_id=customers.customer_id;


select * from customers;
SELECT * FROM orders;





SELECT * 
FROM customers LEFT JOIN orders ON orders.customer_id = customers.customer_id;

SELECT *
FROM orders LEFT JOIN customers ON orders.customer_id = customers.customer_id;


DROP TABLE orders_with_foreign_key





-- select customers.customer_id,order_id,first_name
-- from customers LEFT JOIN orders
-- ON customers.customer_id = orders.customer_id

-- UNION

-- select orders.customer_id,order_id,first_name
-- from orders LEFT JOIN customers
-- ON customers.customer_id = orders.customer_id;

-- select *
-- from customers LEFT JOIN orders
-- ON customers.customer_id = orders.customer_id

-- UNION

-- select *
-- from orders LEFT JOIN customers
-- ON customers.customer_id = orders.customer_id;





-- SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
-- FROM ((Orders
-- INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
-- INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID); ---- 3ta table er join






-- CREATE TABLE orders_with_foreign_key as SELECT * FROM orders;

-- SELECT * FROM orders_with_foreign_key;

-- ALTER TABLE orders_with_foreign_key
-- ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id);



-- DROP TABLE orders2
-- CREATE TABLE orders2
-- ( order_id int NOT NULL,
--   customer_id int NOT NULL,
--   order_date date,
--   PRIMARY KEY (order_id)
--   FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
-- );



-- INSERT INTO orders2
-- SELECT * FROM orders;

-- INSERT INTO orders2
-- (order_id, customer_id, order_date)
-- VALUES
-- (12,8,'2020/04/24');

-- INSERT INTO customers
-- (customer_id, last_name, first_name, favorite_website)
-- VALUES
-- (1008, 'Smit22h', 'Jtuhinn', 'digminecraft.com');

-- SELECT * FROM orders2;
-- select * from customers;
-- SELECT * FROM orders;
-- INSERT INTO orders2
-- (order_id, customer_id, order_date)
-- VALUES
-- (1,7000,'2016/04/18');

-- INSERT INTO orders2
-- (order_id, customer_id, order_date)
-- VALUES
-- (2,5000,'2016/04/18');

-- INSERT INTO orders2
-- (order_id, customer_id, order_date)
-- VALUES
-- (3,8000,'2016/04/19');

-- INSERT INTO orders2
-- (order_id, customer_id, order_date)
-- VALUES
-- (4,4000,'2016/04/20');






-- INSERT INTO orders2
-- (order_id, customer_id, order_date)
-- VALUES
-- (12,8,'2020/04/24');




-- ALTER TABLE orders2
-- DROP FOREIGN KEY FK_customid;
