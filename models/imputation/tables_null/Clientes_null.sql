{{ config(materialized='table') }}

SELECT * FROM {{ source("Supermarket","Clientes") }} 
WHERE Celular IS NULL OR Edad IS NULL OR Latitud IS NULL OR Longitud IS NULL
