# Extraer límites

[Editar Archivo](../fichas-de-herramientas/ficha-de-herramientas-editar/editar-archivo.md)

Esta herramienta está destinada a calcular la zona que ocupan las entidades de un archivo de dibujo. El resultado será una o varias entidades lineales cerradas que representan la zona ocupada.

El cuadro de diálogo precisa los siguientes datos:

* **Código de los límites**: Se indicará el código en el que se registrarán las entidades lineales calculadas.
* **Distancia máxima entre puntos**: Se deberá indicar la distancia máxima que puede haber entre puntos que se consideren vecinos. Poner un valor amplio, reducirá las posibilidades de detectar concavidades exteriores. Poner un valor pequeño, podría generar muchos límites de pequeñas dimensiones en aquellas zonas donde las entidades tengan mayor separación.
* **Desnivel máximo entre puntos**: Se podrá indicar un valor de desnivel máximo entre puntos vecinos.
* **Área mínima de superficie**: Se podrá indicar un valor mínimo de superficie para no generar límites pequeños con pocas entidades dentro.
* **Cota de los límites**: Se podrá seleccionar cuál será la cota de los puntos que componen la entidad lineal que hará de límite. Se dan varias opciones: _Cota original de los puntos_, _Máxima cota encontrada_, _Mínima cota encontrada_, _Cota media o Cota Cero_.
