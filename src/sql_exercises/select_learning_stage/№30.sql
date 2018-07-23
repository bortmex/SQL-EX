SELECT t.point, t.date, SUM(t.out), SUM(t.inc) FROM
(SELECT point, date, inc, NULL out FROM Income
UNION ALL
SELECT point, date, NULL inc, out FROM Outcome) t
GROUP BY t.point, t.date;