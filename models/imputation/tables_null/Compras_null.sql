{{ config(materialized='table') }}

SELECT * FROM {{ source("Supermarket","Compras") }} 
WHERE cliente IS NULL OR producto IS NULL OR fecha IS NULL
