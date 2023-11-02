WITH precios AS (
SELECT Precio, COUNT(*) OVER() AS cantidad
FROM {{ source("Supermarket","Olimpica") }}
WHERE Precio IS NOT NULL
ORDER BY Precio
),

row_id_added AS (
  SELECT *, ROW_NUMBER() OVER () AS row_id
  FROM precios
),

median_ AS (
SELECT
CASE
WHEN MOD(cantidad, 2)=0 THEN (SELECT AVG(Precio) FROM row_id_added WHERE row_id BETWEEN cantidad/2 AND cantidad/2+1)
ELSE (SELECT Precio FROM row_id_added WHERE row_id=ROUND(cantidad/2))
END median
FROM row_id_added
LIMIT 1
)

SELECT * EXCEPT(Precio, median), IFNULL(Precio, median) AS Precio
FROM  {{ source("Supermarket","Olimpica") }}, median_
