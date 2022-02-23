-- create table students(
--     regi int PRIMARY KEY,
--     marks float default 0.0

-- );


-- insert into students(regi, marks)
-- values (2017331101, 80);
-- insert into students(regi, marks)
-- values (2017331029,76);


-- select * from students;


-- CREATE TABLE suppliers
-- ( supplier_id int PRIMARY KEY,
--   supplier_name char(50) NOT NULL,
--   city char(50),
--   state char(50)
-- );

-- INSERT INTO suppliers
-- (supplier_id, supplier_name, city, state)
-- VALUES
-- (100, 'Microsoft', 'Redmond', 'Washington');

-- INSERT INTO suppliers
-- (supplier_id, supplier_name, city, state)
-- VALUES
-- (200, 'Google', 'Mountain View', 'California');

-- INSERT INTO suppliers
-- (supplier_id, supplier_name, city, state)
-- VALUES
-- (300, 'Oracle', 'Redwood City', 'California');

-- INSERT INTO suppliers
-- (supplier_id, supplier_name, city, state)
-- VALUES
-- (400, 'Kimberly-Clark', 'Irving', 'Texas');

-- INSERT INTO suppliers
-- (supplier_id, supplier_name, city, state)
-- VALUES
-- (500, 'Tyson Foods', 'Springdale', 'Arkansas');

-- INSERT INTO suppliers
-- (supplier_id, supplier_name, city, state)
-- VALUES
-- (600, 'SC Johnson', 'Racine', 'Wisconsin');

-- INSERT INTO suppliers
-- (supplier_id, supplier_name, city, state)
-- VALUES
-- (700, 'Dole Food Company', 'Westlake Village', 'California');

-- INSERT INTO suppliers
-- (supplier_id, supplier_name, city, state)
-- VALUES
-- (800, 'Flowers Foods', 'Thomasville', 'Georgia');

-- INSERT INTO suppliers
-- (supplier_id, supplier_name, city, state)
-- VALUES
-- (900, 'Electronic Arts', 'Redwood City', 'California');







select * from suppliers


-- SELECT *
-- FROM suppliers
-- WHERE supplier_name LIKE 'oracle' -- WHERE supplier_name = 'Oracle' 



-- SELECT *
-- FROM suppliers
-- WHERE supplier_id in (500,600,700);


-- SELECT *
-- FROM suppliers
-- WHERE supplier_name NOT IN ('Oracle','Google','Flowers Foods')

-- SELECT *
-- FROM suppliers
-- WHERE not state='Texas' and not state='California';

-- SELECT *
-- FROM suppliers
-- WHERE state='California' AND (supplier_name='Google' or supplier_name like 'elec%');


-- SELECT *
-- FROM suppliers
-- order by state,city DESC








-- CREATE TABLE backup_suppliers
-- (

--     supplier_id int PRIMARY KEY,
--     city char(50),
--     state char(50)

-- );


-- INSERT INTO backup_suppliers
-- select supplier_id,city,state
-- FROM suppliers;



-- CREATE TABLE new_backup_suppliers as SELECT * FROM backup_suppliers -- column copy korlam new table create er maddhome

-- CREATE TABLE empty_supplier as SELECT * FROM backup_suppliers WHERE 1=0; --just backup_supplier er schema same rekhe new empty table create

-- SELECT * FROM new_backup_suppliers;

-- SELECT * FROM empty_supplier





-- SELECT count(distinct city) FROM backup_suppliers



SELECT city,supplier_name,supplier_id FROM suppliers

-- DROP TABLE suppliers;

-- DROP TABLE backup_suppliers


CREATE TABLE emnei
(
id_no INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT
);


INSERT INTO emnei(name)
VALUES('tuhin');


INSERT INTO emnei(name)
VALUES('asif');


INSERT INTO emnei
VALUES(5,'asif tuhin');


ALTER TABLE emnei
ADD emnai varchar(60);



INSERT INTO emnei(emnai)
VALUES('tuhin123000@gmail.com');

INSERT INTO emnei(id_no,emnai)
VALUES('tuhin123000@gmail.com');

ALTER TABLE emnei
RENAME COLUMN emnai TO email;

SELECT *
FROM emnei
WHERE email IS NOT NULL;




UPDATE emnei
SET email='atuhin8@gmail.com'
WHERE id_no=2


UPDATE emnei
SET email= (SELECT city FROM suppliers WHERE supplier_id=100)
WHERE id_no=1;


SELECT * FROM emnei

DELETE FROM emnei
WHERE email ISNULL;
-- DELETE FROM emnei -- all records delete without table



DROP TABLE COMPANY



SELECT * 
FROM suppliers
ORDER BY supplier_name;

SELECT *
FROM (SELECT * FROM suppliers ORDER BY supplier_name)
WHERE state = 'California'
LIMIT 2 ;

SELECT *
FROM suppliers


SELECT MAX(supplier_id)
from suppliers;

SELECT MIN(supplier_id) AS smallest_id
FROM suppliers
WHERE state='California';

SELECT MAX(city)
from suppliers;


SELECT * FROM emnei;

SELECT count(name)
FROM emnei
WHERE name is not NULL;

SELECT avg(id_no) as average
FROM emnei;

SELECT sum(id_no) as sum
FROM emnei;


SELECT *
FROM emnei
WHERE email IN (SELECT city FROM suppliers); -- in er por er bracket e multiple value er moddhe kono value true hole sheta dekhabe and NOT IN use korle bracket er vitorer gula bad e bakigula


SELECT *
FROM suppliers
WHERE supplier_id BETWEEN 400 and 600


SELECT *
FROM suppliers
WHERE supplier_id not BETWEEN 400 and 600


SELECT *
FROM suppliers
WHERE supplier_id BETWEEN 400 and 600

SELECT * FROM suppliers order by state;

SELECT *
FROM suppliers
WHERE state not BETWEEN 'California' AND 'Georgia'
order by state;

SELECT * from suppliers


-- SELECT supplier_id,
-- CASE WHEN supplier_id BETWEEN 100 AND 300 THEN 'supplier_id is greater than 100 and less than 300'
-- WHEN supplier_id BETWEEN 301 AND 500 THEN 'supplier_id is greater than 300 and less than 500'
-- WHEN supplier_id =500 THEN 'supplier_id is greater than 500'
-- ELSE 'supplier_id is greater than 500'
-- END AS text
-- FROM suppliers;

-- SELECT supplier_id, city,
-- CASE WHEN supplier_id > 500 THEN 'The quantity is greater than 500'
-- WHEN supplier_id = 500 THEN 'The quantity is 500'
-- ELSE 'The quantity is under 500'
-- END AS QuantityText
-- FROM suppliers;

CREATE INDEX idx_city_state
ON suppliers (city,state);


DROP INDEX idx_city_state;