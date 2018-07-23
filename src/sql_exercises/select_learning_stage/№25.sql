WITH min_ram AS(SELECT MIN(ram) min FROM PC),
max_speed AS(SELECT MAX(speed) max FROM PC WHERE ram IN 
(SELECT min FROM min_ram))
SELECT p.maker FROM Product p JOIN PC pc ON p.model=pc.model WHERE pc.ram IN (SELECT min FROM min_ram) AND pc.speed IN (SELECT max FROM max_speed)
INTERSECT
SELECT maker FROM Product WHERE type='printer';