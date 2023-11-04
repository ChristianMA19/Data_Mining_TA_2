SELECT 'Olimpica' AS Almacen, * FROM {{ source("Supermarket","Olimpica_IMP") }} 
UNION ALL
SELECT 'EXITO' AS Almacen, * FROM {{ source("Supermarket","Exito") }}