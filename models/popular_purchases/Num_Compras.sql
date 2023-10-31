WITH Compras AS (
  SELECT cliente, producto
  FROM {{ source("Supermarket","Compras") }}
), 
NumCompras AS (
  SELECT producto, COUNT (*) AS conteo
  FROM Compras
  GROUP BY producto
  ORDER BY conteo DESC
  LIMIT 5
)

SELECT * 
FROM NumCompras