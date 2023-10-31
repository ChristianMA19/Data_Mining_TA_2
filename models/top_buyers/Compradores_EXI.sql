SELECT *
FROM {{ source("Supermarket","Compras") }}
WHERE producto LIKE '%EXI%'
ORDER BY cliente