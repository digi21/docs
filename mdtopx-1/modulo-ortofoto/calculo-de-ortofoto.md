---
description: Cuadro de diálogo Cálculo de ortofoto
---

# Cálculo de ortofoto

[Módulo Ortofoto](./)

Esta herramienta está destinada al cálculo de la ortorrectificación a realizar sobre una imagen con perspectiva cónica, a partir de los datos de un modelo digital del terreno. Por tanto, para poder ser ejecutada la herramienta se debe tener activo un documento con un modelo digital de triángulos o TIN.

Los parámetros y campos que se muestran son los siguientes:

* **Nombre del fichero**: Se muestra un listado con los archivos de imagen que serán utilizados para calcular las ortofotos. Estos archivos podrán tener los formatos que el programa permite cargar como son BMP, TIF o JPEG. Para añadir o eliminar ficheros de la lista, se pueden emplear los botones Cargar y Descargar, respectivamente.
* **Tamaño píxel**: Se deberá especificar el tamaño del píxel de la imagen calculada en unidades terreno. Este tamaño deberá depender del tamaño de píxel de las imágenes origen y de la resolución del modelo digital del terreno.
* **Interpolación**: Se podrán seleccionar tres niveles diferentes de interpolación: Vecino próximo, Bilineal o Bicúbica.
* **Margen transver.**: Se podrá indicar en porcentaje un valor de recorte de la imagen, con el objetivo de no calcular la ortofoto en los bordes de la imagen. En este caso, el recorte se realizará transversalmente a la línea de la pasada.
* **Margen longit.**: Se podrá indicar en porcentaje un valor de recorte de la imagen, con el objetivo de no calcular la ortofoto en los bordes de la imagen. En este caso, el recorte se realizará longitudinalmente a la línea de la pasada.
* **Tipo de proyecto**: Se deberá indicar si el proyecto corresponde a un registro aéreo o terrestre.
* **Ortofoto verdadera**: Se activará este campo si se desea calcular una ortofoto verdadera o "true ortho", en inglés. En este caso, el programa tiene en cuenta las posibles ocultaciones que producen elementos con volumen sobre el MDT, como edificios o vegetación. Los píxeles que están en una zona oculta o "de sombra" se pondrá del color que se indique en el campo "Color en sombra". Después de calcular la ortofoto de la imagen, el programa buscará en imágenes vecinas si dichos zonas de sombra hubiesen sido fotografiadas. Si fuera el caso, el programa podrá sustituir estos píxeles por el color verdadero. Activar esta opción aumenta la cantidad de cálculos y, por tanto, el tiempo empleado.
* **Una orto por cada imagen**: Se activará este campo si se desea una ortofoto por la cada imagen del listado o, por el contrario, generar una única ortofoto con todas las imágenes. Se deberá tener cuidado si se elige la segunda opción porque puede resultar una imagen demasiado grande. Si se indica calcular una ortofoto por cada imagen calculada, el programa generará un archivo por cada imagen en la misma carpeta donde estuviera esta y con nombre "Ortofoto de" más el nombre original de la imagen. Si no se indica calcular una ortofoto por cada imagen, es decir, que sólo se genere una ortofoto, el programa generará un documento nuevo que abrirá después de finalizar el cálculo. En este caso, no se salvará a disco directamente.
* **Color en sombra**: Se podrá indicar el color que tomarán aquellos píxeles que queden en zonas en sombra, en caso de que se le indique al programa calcular una ortofoto verdadera. Por defecto, será el negro.
* **Color fuera**: Se podrá indicar el color que tomarán aquellos píxeles que queden en zonas fuera del MDT. Por defecto, será el blanco.

Vea también:

* [Editar Orientación](../herramientas-para-imagenes/editar-orientacion-de-imagen.md)

