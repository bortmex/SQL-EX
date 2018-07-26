SELECT t.name FROM (SELECT sh.name, c.bore FROM Ships sh JOIN Classes c ON c.class=sh.class
UNION
SELECT o.ship, c.bore FROM Classes c JOIN Outcomes o ON o.ship=c.class) t WHERE t.bore = 16;