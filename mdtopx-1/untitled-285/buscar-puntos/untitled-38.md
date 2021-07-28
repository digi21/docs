---
description: Cuadro de diálogo Buscar puntos aéreos
---

# Buscar puntos aéreos

[Ficha de herramientas Clasificar LiDAR](../../fichas-de-herramientas/untitled-245.md)

Esta herramienta está destinada a la búsqueda y clasificación de puntos LiDAR que tienen una cota mucho más elevada que los puntos de su entorno, normalmente porque el valor de esta cota es erróneo.

Los parámetros que precisa son los siguientes:

* **Radio de búsqueda de puntos vecinos**: Distancia máxima para considerar que un punto está en el entorno del punto en cuestión. Este parámetro dependerá de la densidad de puntos. El conjunto de puntos que queden en este entorno influirán en el cálculo del valor de cota apropiado.
* **Diferencia con respecto desviación típica**: Este valor indica la diferencia que tiene que existir en la desviación típica base unidad respecto de la desviación típica del conjunto de puntos que se han encontrado en su entorno. Es decir, la diferencia que existe entre la cota y el valor medio deberá ser tantas veces mayor que la media de las diferencias del conjunto.
* **Tipología destino**: Se deberá elegir la tipología de clasificación destino de los puntos que cumplan con las condiciones del cálculo.
* **Iterar mientras se clasifiquen más de x puntos**: El proceso de clasificación puede mejorar si se realizan iteraciones. Por ello, se puede indicar una cantidad mínima de puntos por encima de la cual el programa automáticamente repite el proceso. Por tanto, estas iteraciones se detendrán cuando no se clasifiquen más puntos de los indicados en este campo.
* **Actuar sólo en la selección actual**: Se podrá activar esta opción para calcular sólo en los puntos que actualmente se tengan seleccionados.

El programa comenzará a procesar el archivo actual e irá mostrando los resultados parciales sobre la ventana de Resultados del programa. Si desea Cancelar el proceso el programa le preguntará si desea conservar los cálculos generados hasta ese momento.

Vea también:

* [Buscar puntos elevados](untitled-41.md)
* [Buscar puntos aislados](untitled-39.md)
* [Buscar puntos hundidos](untitled-44.md)
* [Buscar puntos por diferencia de intensidad](untitled-40.md)
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

