---
description: Cuadro de diálogo Buscar puntos en Superficies Planas
---

# Buscar puntos en Superficies Planas

[Ficha de herramientas Clasificar LiDAR](../../fichas-de-herramientas/untitled-245.md)

Esta herramienta está destinada a la búsqueda y clasificación de puntos LiDAR que están situados en superficies planas con una inclinación máxima y una superficie mínima. Es decir, es muy indicada para la búsqueda de puntos que se han medido sobre las cubiertas de los edificios. Antes de ejecutar esta herramienta es recomendable que se clasifiquen los puntos elevados utilizando alguna de las herramientas disponibles al efecto. Con esto se consigue aislar los puntos que tienen una determinada altura y que pueden pertenecer a edificaciones. En los parámetros que se solicitan en el cuadro de diálogo, se deberá seleccionar sólo aquellos puntos que previamente fueron clasificados por ser elevados. Con esto, se evita clasificar puntos que forman superficies planas pero están en el suelo.

Los parámetros que precisa son los siguientes:

* **Seleccione las tipologías origen**: Se deberán seleccionar las tipologías origen donde buscar los puntos que forman la superficie.
* **Actuar sólo en la selección actual**: Se podrá activar esta opción para calcular sólo en los puntos que actualmente se tengan seleccionados.
* **Tipología destino**: Se deberá elegir la tipología de clasificación destino de los puntos que cumplan con las condiciones del cálculo.
* **Distancia máxima entre puntos**: Distancia máxima para considerar dos puntos como adyacentes o vecinos en el terreno. Este parámetro dependerá de la densidad de puntos. No es adecuado poner un valor demasiado elevado porque ello provocará que se consideren puntos muy alejados del punto en consideración. Si se indica un valor demasiado escaso, no se podrá relacionar el punto en consideración con ningún otro punto.
* **Mínima área de cada superficie**: Valor que deberá superar el conjunto de puntos vecinos que cumplen con la condición de ser superficie plana.
* **Máxima pendiente de la superficie**: Valor máximo en grados sexagesimales que no deberá superar la superficie que forman los puntos.
* **Altura mínima de elevación**: Altura mínima que tiene que existir entre el punto en consideración con respecto a alguno de sus vecinos para que se cambie su clasificación.

Vea también:

* [Buscar puntos elevados](untitled-41.md)
* [Buscar puntos aislados](untitled-39.md)
* [Buscar puntos aéreos](untitled-38.md)
* [Buscar puntos hundidos](untitled-44.md)
* [Buscar puntos por diferencia de intensidad](untitled-40.md)
* [Buscar puntos según línea de vuelo](untitled-49.md)
* [Buscar puntos según Geometría más RGB](untitled-47.md)
* [Buscar puntos según Geometría más intensidad](untitled-46.md)
* [Buscar puntos en Paredes](untitled-42.md)
* [Buscar puntos Solo Suelo](untitled-198.md)
* [Superficie mágica](untitled-201/)
* [Buscar puntos vecinos](untitled-51.md)
* [Buscar puntos según infrarrojo](untitled-48.md)
* [Buscar huecos](untitled-34.md)
* [Buscar puntos según Área de superficie](untitled-45.md)
* [Buscar puntos según planos de usuario](untitled-50.md) 

