{{ config(materialized='table') }}

WITH info_cliente AS  (
  SELECT a.Nombre, a.Apellido, a.Edad, a.Celular, a.Email, b.total_compras AS TotalGastadoEnCompras
  FROM {{ source("Supermarket","Clientes") }}  a INNER JOIN {{ ref("Clientes_Gastos") }} b ON a.C__digo = b.ID_Cliente
)

SELECT *
FROM info_cliente
ORDER BY TotalGastadoEnCompras DESC