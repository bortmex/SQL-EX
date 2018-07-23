SELECT p.maker, AVG(l.screen) FROM Product p JOIN Laptop l on p.model=l.model
WHERE p.maker = ANY (SELECT distinct p.maker FROM Product p JOIN Laptop l on p.model=l.model) GROUP BY p.maker;