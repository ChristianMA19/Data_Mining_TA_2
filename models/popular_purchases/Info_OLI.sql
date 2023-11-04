SELECT 'Olimpica' AS Almacen, n.producto AS ID_producto, n.conteo AS NumeroDeCompras, o.producto as Descripcion, o.precio AS Precio
FROM {{ ref("Num_Compras")}} n INNER JOIN {{ source("Supermarket","Olimpica_IMP") }} o ON n.producto=o.codigo
