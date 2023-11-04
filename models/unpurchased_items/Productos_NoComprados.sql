{{ config(materialized='table') }}

SELECT Codigo, p.Almacen, p.Producto, p.Precio 
FROM {{ ref("Productos") }} p LEFT JOIN {{ ref("Productos_Comprados") }} c USING (Codigo)
WHERE c.Codigo IS NULL