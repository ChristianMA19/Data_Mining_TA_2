# Analisis de mercados locales usando DBT

*Cabe recalcar que, para la preparación del ambiente, se siguieron los pasos dados en el documento guía, por lo que solo se mostrará el proceso para la solución de las preguntas.*

### Navegación rapida:
* **[:bar_chart: Gasto promedio](#bar_chart-Gasto-promedio)**
* **[:dollar: Principales compradores](#dollar-Principales-compradores)**
* **[:hand: Compradores unicos de olimpica](#hand-Compradores-unicos-de-olimpica)**
* **[:chart_with_upwards_trend: Compras populares](#chat-with-upwards-trend-Compras-populares)**
* **[:chart_with_downwards_trend: Artículos sin compras](#chart-with-downwards-trend-Artículos-sin-compras)**

## :bar_chart: Gasto promedio:
Para la solución de esta pregunta, primero se ha tomado como base las tablas imputadas de Olímpica y Éxito, y se ha obtenido tanto el precio como el código de todo aquel elemento que contenga la cadena "Vino Tinto" dentro de la columna producto.<br>
Después de esto, se ha tomado la tabla de compras y se han filtrado solo aquellas filas que coincidan con productos obtenidos anteriormente, y se han agrupado las cantidades de compras por cada producto, esto sobre cada almacén.<br>
Luego se ha obtenido el costo total multiplicando el precio de estos productos por las cantidades vendidas de cada uno.<br>
Por último, se ha obtenido el promedio de compras de estos productos y se ha guardado en una tabla materializada, la cual también contiene los siguientes campos de información que pueden ser de interés final: Almacén, Producto, Total de compras y Total monetario de compras.

## :dollar: Principales compradores:
Inicialmente, se han obtenido todos los compradores de cada almacén, distinguiéndolos del producto comprado. Esto se ha logrado gracias a que cada producto tiene un identificador de su almacén en el nombre, lo cual se ha utilizado como apoyo para identificarlos, buscando la cadena "OLI" para las compras hechas en Olímpica y "EXI" para las compras hechas en Éxito.<br>
Luego de esto, se ha obtenido el mayor gasto de cada almacén. Para lograrlo, se han agrupado todas las compras para identificar la cantidad de productos distintos que ha comprado cada cliente. Luego, se ha multiplicado estas cantidades por el precio respectivo para cada producto y, finalmente, se han agrupado los resultados obtenidos por cada cliente, de modo que se ha obtenido el cliente que ha gastado más dinero en cada almacén.<br>
Por último, se han agrupado estos dos compradores (uno por cada almacén) en una sola tabla con información de posible interés: (Almacén, Código, Nombre, Apellido y su Total de Compras).

## :hand: Compradores unicos de olimpica:
La solución a esta pregunta consiste en obtener todos los datos de la tabla de compras y luego agruparlos por los clientes para así poder tener un cliente distinto en cada fila.<br>
Después de esta agrupación, se crea un filtro para las personas que tengan al menos una compra en Olímpica, pero que a su vez no tengan ninguna compra en Éxito.<br>
Luego, se genera una tabla materializada con estos clientes que contenga toda la información disponible relacionada con ellos en la tabla de clientes proporcionada previamente.

## :chart_with_upwards_trend: Compras populares: 
Para llegar al desarrollo de esta solución, se realizó el siguiente procedimiento:<br>
Se realizó un conteo de todas las veces que cada producto individual aparecía dentro de la tabla de compras.<br>
Luego de esto, se ordenó de forma descendente para obtener así los productos que más veces han sido comprados.<br>
Por último, se hizo un cruce de los productos más comprados con la información de estos mismos productos, de modo que se pudiera obtener el código del producto, las veces que fue comprado y la descripción del mismo.

## :chart_with_downwards_trend: Artículos sin compras:
Lograr la solución a este problema conlleva el siguiente procedimiento:<br>
En primer lugar, se obtienen los datos de dos tablas, primero todos los productos disponibles y luego todos aquellos productos presentes en las compras.<br>
Luego de esto, se realiza un filtro para obtener todos aquellos productos que **no** están dentro de las compras realizadas.<br>
Por último, se toman todos estos productos resultantes y se guardan en una nueva tabla materializada con toda la información disponible de cada producto.

<details>
    <summary>Información...</summary>

:shipit: **Integrantes**
* Christian Manga Arrazola
* Nefer Medina Ricaurte
* Natalia Mendoza Acosta

:computer: **Asignatura** <br>
*Minería de datos 202330*

:school_satchel: **Programa académico** <br>
*Ingeniería de sistemas y computación*

:mortar_board: **Institución** <br>
*Universidad del Norte*
</details>

