WITH pp AS (SELECT b1.date, o1.ship, o1.result FROM Outcomes o1 LEFT JOIN Battles b1 on o1.battle=b1.name)
SELECT distinct p.ship FROM pp p
WHERE result='damaged' AND EXISTS (SELECT ship FROM pp
WHERE p.date<date and p.ship=ship);