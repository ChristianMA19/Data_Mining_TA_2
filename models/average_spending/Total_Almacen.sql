SELECT 'OLIMPICA' AS Almacen, c.producto, COUNT(*) AS TotalCompras
FROM {{ source("Supermarket", "Compras") }} c INNER JOIN {{ ref('Vino_OLIMPICA') }} v ON v.Codigo = c.producto
GROUP BY c.producto
UNION ALL
SELECT 'EXITO' AS Almacen, c.producto, COUNT(*) AS TotalCompras
FROM {{ source("Supermarket", "Compras") }} c INNER JOIN {{ ref('Vino_EXITO') }} v ON v.Codigo = c.producto
GROUP BY c.producto
