SELECT Precio, COUNT(*) OVER() AS cantidad
FROM {{ source("Supermarket","Olimpica") }}
WHERE Precio IS NOT NULL
ORDER BY Precio