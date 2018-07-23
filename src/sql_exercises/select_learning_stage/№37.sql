SELECT t.class FROM (SELECT sh.name, sh.class FROM Ships sh LEFT JOIN Classes c ON sh.class=c.class
UNION
SELECT o.ship, c.class FROM Outcomes o JOIN Classes c ON o.ship=c.class) t GROUP BY (t.class) HAVING COUNT(t.class) = 1;
