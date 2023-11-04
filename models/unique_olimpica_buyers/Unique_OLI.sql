{{ config(materialized='table') }}

SELECT C.*
FROM {{ source("Supermarket", "Clientes") }}  C
WHERE C.C__digo IN (SELECT cliente FROM {{ ref("CompradoresNOEXI") }} )