{{ config(materialized='table') }}

WITH CompradoresNOEXI AS (
    SELECT cliente
    FROM {{ source("Supermarket", "Compras") }} 
    GROUP BY cliente
    HAVING COUNT(DISTINCT CASE WHEN producto LIKE 'OLI%' THEN producto END) > 0
       AND COUNT(DISTINCT CASE WHEN producto LIKE 'EXI%' THEN producto END) = 0
)

SELECT C.*
FROM {{ source("Supermarket", "Clientes") }}  C
WHERE C.C__digo IN (SELECT cliente FROM CompradoresNOEXI)