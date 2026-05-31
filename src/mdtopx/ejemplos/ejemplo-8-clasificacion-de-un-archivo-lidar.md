# Ejemplo 8: Clasificación de un archivo LiDAR

[Ejemplos](/mdtopx/ejemplos/)

## Objetivo

Clasificar los puntos obtenidos mediante LiDAR.

## Fichero inicial

* instituto.las: Fichero en formato LAS con los puntos medidos

## Proceso

* Cargar el fichero instituto.las en pantalla. Para ello utilice la orden [Abrir](../operaciones-con-archivos/abrir-archivo.md) del menú del [Botón MDTopX](../introduccion/boton-de-mdtopx.md), seleccionando el tipo de archivos LAS.
* Llamar a la orden PUNTOS ALTOS de la cinta LIDAR. En el cuadro de diálogo introducir distancia máxima entre puntos 3 metros y altura mínima 3 metros. Seleccionar como tipo de clasificación VEGETACIÓN. No clasificar mediante superficies
* El programa clasificará como vegetación todos los puntos elevados encontrados
* A continuación, llamar a la orden SUPERFICIES PLANAS. Elegir del listado la VEGETACIÓN. Indicar como superficie mínima 100 m2 y como pendiente máxima 30º
* El programa reclasificará aquellos puntos encontrados como superficies planas como edificios

## Ficheros resultantes

* Archivo LiDAR clasificado
