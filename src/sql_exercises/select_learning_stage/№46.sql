SELECT o.ship, displacement, numGuns FROM (SELECT sh.name, c.displacement, c.numGuns FROM Ships sh JOIN Classes c on c.class=sh.class
UNION
SELECT class, displacement, numGuns FROM Classes) t RIGHT JOIN Outcomes o on t.name=o.ship WHERE o.battle= 'Guadalcanal';