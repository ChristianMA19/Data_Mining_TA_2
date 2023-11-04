{{ config(materialized='table') }}

SELECT * EXCEPT(Precio, median), IFNULL(Precio, median) AS Precio
FROM  {{ source("Supermarket","Olimpica") }}, {{ ref("Median_Calc") }}
