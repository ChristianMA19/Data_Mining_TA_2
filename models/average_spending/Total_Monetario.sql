SELECT *, a.TotalCompras * v.Precio AS TotalMonetarioCompras
FROM {{ ref('Total_Almacen') }} a INNER JOIN {{ ref('Vino_Almacenes') }} v ON v.Codigo = a.producto
