SELECT sh.name FROM Ships sh LEFT JOIN Classes c on sh.class=c.class WHERE sh.name=c.class
UNION
SELECT o.ship FROM Outcomes o LEFT JOIN Classes c on o.ship=c.class WHERE c.class IS NOT NULL;