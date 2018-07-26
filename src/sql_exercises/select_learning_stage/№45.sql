SELECT * FROM (SELECT name FROM Ships
UNION
SELECT ship FROM Outcomes) t WHERE t.name LIKE '% % %';