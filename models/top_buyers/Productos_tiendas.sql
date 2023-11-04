SELECT * FROM {{ source("Supermarket","Olimpica_IMP") }}
UNION ALL
SELECT * FROM `Supermarket.Exito`
