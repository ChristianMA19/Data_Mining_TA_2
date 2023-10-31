{{ config(materialized='table') }}

WITH Info AS (
  SELECT * FROM {{ ref("Info_EXI") }}
  UNION ALL
  SELECT * FROM {{ ref("Info_OLI") }}
)
SELECT * FROM Info
ORDER BY conteo DESC