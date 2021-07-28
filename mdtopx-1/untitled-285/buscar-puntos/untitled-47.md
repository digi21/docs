---
description: Cuadro de diálogo Buscar puntos según geometría más RGB
---

# Buscar puntos según geometría más RGB

[Ficha de herramientas Clasificar LiDAR](../../fichas-de-herramientas/untitled-245.md)

Esta herramienta está destinada a la búsqueda y clasificación de puntos LiDAR en función de las propiedades geométricas que un punto tiene con su entorno más el valor del color que tenga asignado. De esta forma, se puede particularizar sobre ciertos objetos que han tenido una determinada respuesta radiométrica. No todos los archivos LiDAR tienen color registrado en sus puntos. Si no fuera así, se podría asignar en un proceso posterior. Consulte la herramienta [Asignar color RGB a puntos](Cuadro%20de%20dialogo%20Asignar%20color%20RGB%20a%20puntos.htm) para más información de cómo añadir RGB al archivo.

Los parámetros que precisa son los siguientes:

* **Lista de condiciones**: Se deberán añadir las condiciones que deben cumplir los puntos para ser clasificados. Estas condiciones serán composición de un color \(según sus componentes RGB\) y un valor mínimo de altura respecto a su entorno. Cada condición añadida podrá tener una tipología destino diferente. Utilice para ello los botones Añadir, Editar o Borrar.
* **Distancia máxima entre puntos**: Distancia máxima para considerar dos puntos como adyacentes o vecinos en el terreno. Este parámetro dependerá de la densidad de puntos. No es adecuado poner un valor demasiado elevado porque ello provocará que se consideren puntos muy alejados del punto en consideración. Si se indica un valor demasiado escaso, no se podrá relacionar el punto en consideración con ningún otro punto.
* **Iterar mientras se clasifiquen más de x puntos**: El proceso de clasificación puede mejorar si se realizan iteraciones. Por ello, se puede indicar una cantidad mínima de puntos por encima de la cual el programa automáticamente repite el proceso. Por tanto, estas iteraciones se detendrán cuando no se clasifiquen más puntos de los indicados en este campo.
* **Actuar sólo en la selección actual**: Se podrá activar esta opción para calcular sólo en los puntos que actualmente se tengan seleccionados.

El programa comenzará a procesar el archivo actual e irá mostrando los resultados parciales sobre la ventana de Resultados del programa. Si desea Cancelar el proceso el programa le preguntará si desea conservar los cálculos generados hasta ese momento.

Vea también:

* [Buscar puntos elevados](untitled-41.md)
* [Buscar puntos aislados](untitled-39.md)
* [Buscar puntos aéreos](untitled-38.md)
* [Buscar puntos hundidos](untitled-44.md)
* [Buscar puntos por diferencia de intensidad](untitled-40.md)
* [Buscar puntos según línea de vuelo](untitled-49.md)
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

