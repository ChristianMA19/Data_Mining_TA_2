SELECT * FROM {{ source("Supermarket","Olimpica_IMP") }} 
UNION ALL
SELECT * FROM {{ source("Supermarket","Exito") }}