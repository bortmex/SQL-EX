WITH max_code AS (SELECT MAX(pc.code)maxcode FROM PC pc JOIN Product p ON pc.model=p.model GROUP BY p.type)

SELECT name, NULLIF(value,'x')
FROM
(SELECT model, Convert(Varchar(50), speed) speed, Convert(Varchar(50), ram) ram, Convert(Varchar(50), hd) hd, Convert(Varchar(50), cd) cd, COALESCE(Convert(Varchar(50), price), 'x') price FROM PC WHERE code IN (SELECT maxcode FROM max_code)) p
UNPIVOT
(value FOR name IN
(model, speed, ram, hd, cd, price)
)AS unpvtx;
/*
Здесь COALESCE(colx,777) заменяет NULL-значения в столбце colx на 777, а функция NULLIF(col,777) выполняет обратное преобразование.*/
