SELECT producto AS Codigo
FROM {{ source("Supermarket","Compras") }}
GROUP BY Codigo