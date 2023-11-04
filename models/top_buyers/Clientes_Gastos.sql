SELECT c.cliente AS ID_Cliente , COUNT(*) AS numero_de_compras,  SUM(b.Precio) AS total_compras
FROM {{ source("Supermarket","Compras") }} c
INNER JOIN {{ ref("Productos_tiendas") }} b ON c.producto = b.Codigo
GROUP BY c.cliente
ORDER BY total_compras DESC
LIMIT 10