SELECT distinct p.maker, pr.price FROM Product p join Printer pr on p.model=pr.model
WHERE pr.price = (SELECT MIN(price) price FROM Printer GROUP BY color HAVING color = 'y') and pr.color = 'y';