---
description: Cuadro de diálogo Buscar puntos por diferencia de intensidad
---

# Buscar puntos por diferencia de intensidad

[Ficha de herramientas Clasificar LiDAR](../../fichas-de-herramientas/untitled-245.md)

Esta herramienta está destinada a la búsqueda y clasificación de puntos LiDAR en función de las diferencias entre los valores de intensidad que un punto tiene con su entorno.

Los parámetros que precisa son los siguientes:

* **Distancia máxima entre puntos**: Distancia máxima para considerar dos puntos como adyacentes o vecinos en el terreno. Este parámetro dependerá de la densidad de puntos. No es adecuado poner un valor demasiado elevado porque ello provocará que se consideren puntos muy alejados del punto en consideración. Si se indica un valor demasiado escaso, no se podrá relacionar el punto en consideración con ningún otro punto.
* **Diferencia de intensidad**: Diferencia que debe existir entre un punto y su entorno para clasificar el punto. Este valor considera el signo.
* **Iterar mientras se clasifiquen más de x puntos**: El proceso de clasificación puede mejorar si se realizan iteraciones. Por ello, se puede indicar una cantidad mínima de puntos por encima de la cual el programa automáticamente repite el proceso. Por tanto, estas iteraciones se detendrán cuando no se clasifiquen más puntos de los indicados en este campo.
* **Actuar sólo en la selección actual**: Se podrá activar esta opción para calcular sólo en los puntos que actualmente se tengan seleccionados.
* **Tipología destino**: Se deberá elegir la tipología de clasificación destino de los puntos que cumplan con las condiciones del cálculo.
* **Si la superficie generada es superior a x m2**: Una vez que se ha clasificado un conjunto de puntos, el programa busca la formación de superficies para considerar aquellos puntos que se encuentren en el interior. Si la superficie es superior al valor indicado en este campo se puede cambiar la clasificación e indicar otra clasificación destino.
* **Tipología destino**: Tipología destino si los puntos forman una superficie de área superior a la indicada en el campo anterior.

El programa comenzará a procesar el archivo actual e irá mostrando los resultados parciales sobre la ventana de Resultados del programa. Si desea Cancelar el proceso el programa le preguntará si desea conservar los cálculos generados hasta ese momento.

Vea también:

* [Buscar puntos elevados](untitled-41.md)
* [Buscar puntos aislados](untitled-39.md)
* [Buscar puntos aéreos](untitled-38.md)
* [Buscar puntos hundidos](untitled-44.md)
* [Buscar puntos según línea de vuelo](untitled-49.md)
* [Buscar puntos según Geometría más RGB](untitled-47.md)
* [Buscar puntos según Geometría más intensidad](untitled-46.md)
* [Buscar puntos en Superficies Planas](untitled-43.md)
* [Buscar puntos en Paredes](untitled-42.md)
* [Buscar puntos Solo Suelo](untitled-198.md)
* [Superficie mágica](untitled-201/)
* [Buscar puntos vecinos](untitled-51.md)
* [Buscar puntos según infrarrojo](untitled-48.md)
* [Buscar huecos](untitled-34.md)
* [Buscar puntos según Área de superficie](untitled-45.md)
* [Buscar puntos según planos de usuario](untitled-50.md) 

