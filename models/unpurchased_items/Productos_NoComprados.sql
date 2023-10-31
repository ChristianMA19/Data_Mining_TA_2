{{ config(materialized='table') }}

WITH ProductosNoComprados AS (
    SELECT Codigo, producto
    FROM {{ ref("Productos") }}
    WHERE Codigo NOT IN (SELECT * FROM {{ ref("Productos_Comprados") }} )
)

SELECT * FROM ProductosNoComprados