SELECT Codigo, Precio 
FROM {{ source("Supermarket", "Olimpica_IMP") }}
WHERE Producto LIKE '%Vino Tinto%'