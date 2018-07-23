WITH t AS (SELECT model, MAX(price) max_price FROM PC GROUP BY model
UNION
SELECT model, MAX(price) max_price FROM Laptop GROUP BY model
UNION
SELECT model, MAX(price) max_price FROM Printer GROUP BY model)
SELECT model FROM t WHERE max_price= (SELECT MAX(max_price) FROM t);