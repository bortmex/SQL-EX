SELECT p.maker, MAX(pc.price) max_price FROM Product p JOIN pc PC ON p.model=pc.model GROUP BY p.maker;