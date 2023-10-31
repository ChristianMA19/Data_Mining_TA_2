SELECT producto
FROM {{ source("Supermarket","Compras") }}
GROUP BY producto