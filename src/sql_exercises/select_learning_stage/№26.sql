SELECT AVG(t.price) FROM (SELECT p.maker, pc.price FROM Product p JOIN PC pc on p.model=pc.model
UNION ALL
SELECT p.maker, l.price FROM Product p JOIN Laptop l on p.model=l.model) t WHERE t.maker = 'A';