{{ config(materialized='table') }}

SELECT * FROM {{ source("Supermarket","Exito") }} 
WHERE Cantidad IS NULL OR Precio IS NULL 