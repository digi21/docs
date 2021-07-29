---
description: Cuadro de diálogo Extraer límites LiDAR
---

# Extraer límites LiDAR

[Editar Archivo](../fichas-de-herramientas/ficha-de-herramientas-editar/editar-archivo.md)

Esta herramienta está destinada a calcular la zona que ocupan puntos con una determinada tipología LiDAR. El resultado será una o varias entidades lineales cerradas que representan la zona ocupada.

El cuadro de diálogo precisa los siguientes datos:

* **Código de los límites**: Se indicará el código en el que se registrarán las entidades lineales calculadas.
* **Distancia máxima entre puntos**: Se deberá indicar la distancia máxima que puede haber entre puntos que se consideren vecinos. Poner un valor amplio, reducirá las posibilidades de detectar concavidades exteriores. Poner un valor pequeño, podría generar muchos límites de pequeñas dimensiones en aquellas zonas donde los puntos tengan mayor separación.
* **Desnivel máximo entre puntos**: Se podrá indicar un valor de desnivel máximo entre puntos vecinos.
* **Área mínima de superficie**: Se podrá indicar un valor mínimo de superficie para no generar límites pequeños con pocas entidades dentro.
* **Cota de los límites**: Se podrá seleccionar cuál será la cota de los puntos que componen la entidad lineal que hará de límite. Se dan varias opciones: Cota original de los puntos, Máxima cota encontrada, Mínima cota encontrada, Cota media o Cota Cero.
* **Tipología origen**: Se podrá seleccionar una o varias tipologías de los puntos que se desean utilizar para calcular los límites.

