SELECT AVG(pc.speed) FROM PC pc JOIN Product p on pc.model=p.model WHERE p.maker = 'A';