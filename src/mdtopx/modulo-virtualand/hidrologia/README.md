# Hidrología
<!-- id: hidrologia -->

[VirtuaLand Hidrología](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-virtualand/virtualand-hidrologia.md)

Las herramientas del panel **Hidrología** de la [ficha VirtuaLand](../../fichas-de-herramientas/ficha-de-herramientas-virtualand/) estudian cómo corre y dónde se queda el agua en un modelo digital del terreno en rejilla (DEM):

* [**Cuencas**](cuencas.md): la cuenca vertiente de cada desagüe, con sus parámetros, el tiempo de concentración y el caudal del método racional de la Instrucción 5.2-IC de drenaje superficial.
* [**Rejillas hidrológicas**](rejillas-hidrologicas.md): la acumulación, la pendiente, los índices TWI y SPI, el factor LS y la altura y la distancia al cauce de cada nodo, cada una en un DEM nuevo.
* [**Zonas inundables**](zonas-inundables.md): lo que se inunda con una lámina de agua en los cauces, fija o calculada desde un caudal.
* [**Encharcamiento**](encharcamiento.md): dónde se queda el agua de una lluvia en las depresiones del terreno.

Las cuatro trabajan sobre las cotas de los nodos del DEM, que no hace falta que esté suavizado, y no se pueden usar con un DEM variable. Los nodos sin dato y el borde del DEM hacen de desagüe: el agua que llega a ellos sale del modelo.

## Cómo corre el agua

Salvo en el encharcamiento, el agua corre sobre el DEM con las depresiones rellenas hasta su cota de rebose (algoritmo Priority-Flood): así cada nodo drena hasta el borde. Cada nodo desagua en el vecino, de sus ocho, hacia el que el terreno baja más (D8). La **acumulación** de un nodo es la superficie, en metros cuadrados, que drena por él.

Los **cauces** son los nodos cuya acumulación llega a un área mínima. Si se deja a 0, MDTopX usa el 0,2 % de la superficie con datos del DEM.

Los resultados van a documentos nuevos: un dibujo, con su tabla de atributos, y, según la herramienta, uno o varios DEM.
