SELECT *
FROM {{ source("Supermarket", "Compras") }}
WHERE producto LIKE '%OLI%'
ORDER BY cliente
