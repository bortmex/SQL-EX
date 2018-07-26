SELECT DISTINCT t.class FROM (SELECT c.class, sh.name FROM Ships sh JOIN Classes c on c.class=sh.class
UNION
SELECT class, class FROM Classes) t JOIN Outcomes o on t.name=o.ship WHERE o.result= 'sunk';