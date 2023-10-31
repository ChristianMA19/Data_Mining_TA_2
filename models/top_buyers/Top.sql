{{ config(materialized='table') }}
WITH Compradores AS (
  SELECT 'Olimpica' AS Almacen, * FROM {{ ref("Comprador_TOPOLI") }}
  UNION ALL
  SELECT 'Exito' AS Almacen, * FROM {{ ref("Comprador_TOPEXITO") }}
)

SELECT c.Almacen, cli.C__digo AS Codigo, cli.Nombre, cli.Apellido, c.TotalCompras
FROM Compradores c INNER JOIN {{ source("Supermarket", "Clientes") }} cli ON c.cliente = cli.C__digo