WITH Comprador_EXI AS (
  SELECT cliente, producto, COUNT (*) AS cantidad
  FROM {{ ref("Compradores_EXI") }}
  GROUP BY cliente, producto
  ORDER BY cliente, producto ASC
),
Comprador_Total_EXI AS (
  SELECT c.cliente, o.codigo, c.cantidad, o.precio, c.cantidad * o.precio AS TotalProductos
  FROM Comprador_EXI c INNER JOIN {{ source("Supermarket","Exito") }} o ON c.producto = o.codigo
  ORDER BY c.cliente, c.producto
),
Comprador_TOPEXI AS (
  SELECT cliente, SUM(TotalProductos) AS TotalCompras
  FROM Comprador_Total_EXI
  GROUP BY cliente
  ORDER BY TotalCompras DESC
  LIMIT 1
)

SELECT * 
FROM Comprador_TOPEXI