SELECT producto, count(*) AS conteo
FROM {{ source("Supermarket","Compras") }}
GROUP BY producto
