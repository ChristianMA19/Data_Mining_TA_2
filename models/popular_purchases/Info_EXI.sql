SELECT n.producto, n.conteo, o.producto as descripcion
FROM {{ ref("Num_Compras")}} n INNER JOIN {{ source("Supermarket","Exito") }} o ON n.producto=o.codigo