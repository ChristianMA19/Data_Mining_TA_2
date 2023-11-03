# Analisis de mercados locales usando DBT

*Cabe recalcar que para la preparación del ambiente se siguió los pasos dados en el documento guía por lo que solo se mostrará el proceso para la solución de las preguntas.*

### Navegación rapida:
* **[:bar_chart: Gasto promedio](#bar_chart-Gasto-promedio)**
* **[:dollar: Principales compradores](#dollar-Principales-compradores)**
* **[:hand: Compradores unicos de olimpica](#hand-Compradores-unicos-de-olimpica)**
* **[:chart_with_upwards_trend: Compras populares](#chat-with-upwards-trend-Compras-populares)**
* **[:chart_with_downwards_trend: Artículos sin compras](#chart-with-downwards-trend-Artículos-sin-compras)**

## :bar_chart: Gasto promedio:
Para la solución de esta pregunta primero se ha tomado como base las tablas imputadas de olimpica y exito y se ha obtenido tanto el precio como el codigo de todo aquel elemento que contenga la cadena "Vino Tinto" dentro de la columna producto. <br>
Despues de esto se ha tomado la tabla de compras y se han filtrado solo aquellas filas que coincidan con productos obtenidos anteriormente y se han agrupado las cantidades de compras por cada producto, esto sobre cada almacen. <br>
Luego se ha obtenido el costo total multiplicando el precio de estos productos por las cantidades vendidas de cada uno. <br>
Por ultimo se ha obtenido el promedio de compras de estos productos y se ha guardado en una tabla materializada la cual tambien contiene los siguientes campos de información que pueden ser de interes final: Almacen, Producto, Total de compras y Total monetario de compras.

## :dollar: Principales compradores:
Inicialmente se ha obtenido todos los compradores de cada almacen, esto distinguiendolos de el producto comprado ya que gracias a que cada producto tiene un identificador de su almacen en el nombre se ha utilizado como apoyo para identificarlos, buscando la cadena "OLI" para las compras hechas en olimpica y "EXI" para las compras hechas en Exito. <br>
Luego de esto se ha obtenido el mayor de cada almacen, para hacer esto se han agrupado todas las compras para identificar la cantidad de productos distintos que ha comprado cada cliente y luego  se ha multiplicado estas cantidades por el precio respectivo para cada producto para por ultimo agrupar los resultados obtenidos por cada cliente y asi obtener el cliente que ha gastado mas dinero en cada almacen. <br>
Por ultimo se han agrupado estos dos compradores (Uno por cada almacen) y se han agrupado en una sola tabla con información de posible interes: (Almacen, Codigo, Nombre, Apellido y su Total de Compras).

## :hand: Compradores unicos de olimpica:
La solución a esta pregunta consta de obtener todos los datos de la tabla de compras y luego agruparlos por los clientes para asi poder tener un cliente distinto por cada fila. <br>
Despues de esta agrupación se crea un filtro de personas las cuales tengan al menos una compra en Olimpica pero que a su vez este tenga exactamente cero compras en Exito. <br>
Luego se genera una tabla materializada de estos clientes con toda la información disponible relacionada con ellos en la tabla de clientes otorgada con anticipación.

## :chart_with_upwards_trend: Compras populares: 
Para llegar al desarrollo de esta solución se realizó el siguiente procedimiento:
Se realizo un conteo de todas las veces que cada producto individual aparecia dentro de la tablas de compras. <br>
Luego de esto se ordeno de forma descendente para de esta forma obtener los productos que mas veces han sido comprados. <br>
Por ultimo, se hizo un cruce de los productos mas comprados con la información de estos mismos productos para así poder otorgar el código del producto, las veces que fue comprado y la descripción del mismo.

## :chart_with_downwards_trend: Artículos sin compras:
Lograr la solución a este problema conlleva el siguiente procedimiento: <br>
Primero que todo se obtienen los datos de dos tablas, primero todos los productos disponibles y luego todos aquellos productos presentes en las compras. <br>
luego de esto se realiza un filtro para obtiener todos aquellos productos que **No** estan dentro de las compras realizadas. <br>
Por ultimo se toman todos estos productos resultantes y se guardan dentro de una nueva tabla materializada con toda la información disponible de cada producto. 

<details>
    <summary>Información...</summary>

:shipit: **Integrantes**
* Christian Manga Arrazola
* Nefer Medina Ricaurte
* Natalia Mendoza Acosta

:computer: **Asignatura** <br>
*Minería de datos 202330*

:school_satchel: **Programa academico** <br>
*Ingenieria de sistemas y computación*

:mortar_board: **Institución** <br>
*Universidad del Norte*
</details>
