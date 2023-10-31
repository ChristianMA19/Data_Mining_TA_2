WITH Comprador_OLI AS (
  SELECT cliente, producto, COUNT (*) AS cantidad
  FROM {{ ref("Compradores_OLI") }} Compradores_OLI
  GROUP BY cliente, producto
  ORDER BY cliente, producto ASC
),
Comprador_Total_OLI AS (
  SELECT c.cliente, o.codigo, c.cantidad, o.precio, c.cantidad * o.precio AS TotalProductos
  FROM Comprador_OLI c INNER JOIN {{ source("Supermarket", "Olimpica_IMP") }} o ON c.producto = o.codigo
  ORDER BY c.cliente, c.producto
),
Comprador_TOPOLI AS (
  SELECT cliente, SUM(TotalProductos) AS TotalCompras
  FROM Comprador_Total_OLI
  GROUP BY cliente
  ORDER BY TotalCompras DESC
  LIMIT 1
)

SELECT * 
FROM Comprador_TOPOLI