SELECT t.country, CAST(AVG(POWER(t.bore,3)/2) AS decimal(6,2)) FROM (
SELECT z.ship, c2.country, z.bore FROM
(SELECT o.ship, c.country, c.class, c.bore FROM Outcomes o LEFT JOIN Classes c on o.ship=c.class WHERE c.class is not NULL)z LEFT JOIN Classes c2 on z.ship=c2.class
UNION
SELECT sh.name, c.country, c.bore FROM Classes c RIGHT JOIN Ships sh on c.class=sh.class)t GROUP BY t.country;