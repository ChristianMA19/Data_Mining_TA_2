{{ config(materialized='table') }}

WITH average_vino AS (
    SELECT Almacen, producto, TotalCompras, TotalMonetarioCompras, (SUM(TotalMonetarioCompras) OVER (PARTITION BY Almacen))/(SUM(TotalCompras) OVER (PARTITION BY Almacen)) AS promedioCompra
    FROM {{ ref('Total_Monetario') }}
)

SELECT Almacen, promedioCompra AS PromedioVinoTinto
FROM average_vino
GROUP BY Almacen, PromedioVinoTinto