{{ config(materialized='table') }}

SELECT * FROM {{ source("Supermarket","Olimpica") }} 
WHERE Cantidad IS NULL OR Precio IS NULL 