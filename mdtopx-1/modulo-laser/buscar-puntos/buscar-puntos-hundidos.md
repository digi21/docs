---
description: Cuadro de diálogo Buscar puntos hundidos
---

# Buscar puntos hundidos

[Ficha de herramientas Clasificar LiDAR](../../fichas-de-herramientas/ficha-de-herramientas-clasificar-lidar.md)

Esta herramienta está destinada a la búsqueda y clasificación de puntos LiDAR que tienen una cota mucho más baja que los puntos de su entorno, normalmente porque el valor de esta cota es erróneo.

Los parámetros que precisa son los siguientes:

* **Radio de búsqueda de puntos vecinos**: Distancia máxima para considerar que un punto está en el entorno del punto en cuestión. Este parámetro dependerá de la densidad de puntos. El conjunto de puntos que queden en este entorno influirán en el cálculo del valor de cota apropiado.
* **Diferencia con respecto desviación típica**: Este valor indica la diferencia que tiene que existir en la desviación típica base unidad respecto de la desviación típica del conjunto de puntos que se han encontrado en su entorno. Es decir, la diferencia que existe entre la cota y el valor medio deberá ser tantas veces mayor que la media de las diferencias del conjunto.
* **Tipología destino**: Se deberá elegir la tipología de clasificación destino de los puntos que cumplan con las condiciones del cálculo.
* **Iterar mientras se clasifiquen más de x puntos**: El proceso de clasificación puede mejorar si se realizan iteraciones. Por ello, se puede indicar una cantidad mínima de puntos por encima de la cual el programa automáticamente repite el proceso. Por tanto, estas iteraciones se detendrán cuando no se clasifiquen más puntos de los indicados en este campo.
* **Actuar sólo en la selección actual**: Se podrá activar esta opción para calcular sólo en los puntos que actualmente se tengan seleccionados.

El programa comenzará a procesar el archivo actual e irá mostrando los resultados parciales sobre la ventana de Resultados del programa. Si desea Cancelar el proceso el programa le preguntará si desea conservar los cálculos generados hasta ese momento.

Vea también:

* [Buscar puntos elevados](buscar-puntos-elevados.md)
* [Buscar puntos aislados](buscar-puntos-aislados.md)
* [Buscar puntos aéreos](buscar-puntos-aereos.md)
* [Buscar puntos por diferencia de intensidad](buscar-puntos-por-diferencia-de-intensidad.md)
* [Buscar puntos según línea de vuelo](buscar-puntos-segun-linea-de-vuelo.md)
* [Buscar puntos según Geometría más RGB](buscar-puntos-segun-geometria-mas-rgb.md)
* [Buscar puntos según Geometría más intensidad](buscar-puntos-segun-geometria-mas-intensidad.md)
* [Buscar puntos en Superficies Planas](buscar-puntos-en-superficies-planas.md)
* [Buscar puntos en Paredes](buscar-puntos-en-paredes.md)
* [Buscar puntos Solo Suelo](solo-suelo.md)
* [Superficie mágica](superficie-magica/)
* [Buscar puntos vecinos](buscar-vecinos.md)
* [Buscar puntos según infrarrojo](buscar-puntos-segun-infrarrojo.md)
* [Buscar huecos](buscar-huecos.md)
* [Buscar puntos según Área de superficie](buscar-puntos-segun-area.md)
* [Buscar puntos según planos de usuario](../formas-geometricas/buscar-puntos-sobre-planos.md) 

