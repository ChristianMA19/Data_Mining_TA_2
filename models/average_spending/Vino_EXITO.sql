SELECT Codigo, Precio
FROM {{ source("Supermarket", "Exito") }}
WHERE Producto LIKE '%Vino Tinto%'