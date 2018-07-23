SELECT p.maker FROM PC pc JOIN Product p on pc.model=p.model WHERE pc.speed >=750
INTERSECT
SELECT p.maker FROM Laptop l JOIN Product p on l.model=p.model WHERE l.speed >=750;