SELECT g2.maker, g2.type FROM (
SELECT COUNT(t.maker) countmarker, t.maker FROM(
SELECT maker, type, COUNT(model) cmod FROM Product GROUP BY maker, type)t GROUP BY t.maker) g1
JOIN (SELECT maker, type, COUNT(model) cmod FROM Product GROUP BY maker, type) g2 ON g1.maker=g2.maker
where g2.cmod>1 and g1.countmarker=1;