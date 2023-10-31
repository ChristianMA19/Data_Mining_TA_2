{{ config(materialized='table') }}
SELECT Almacen, producto, TotalCompras, TotalMonetarioCompras, (SUM(TotalMonetarioCompras) OVER (PARTITION BY Almacen))/(SUM(TotalCompras) OVER (PARTITION BY Almacen)) AS promedioCompra
FROM {{ ref('Total_Monetario') }}
ORDER BY producto