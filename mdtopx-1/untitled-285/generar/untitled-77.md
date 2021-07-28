---
description: Cuadro de diálogo Comparar nubes
---

# Comparar nubes

[Generar a partir de LIDAR](../../fichas-de-herramientas/untitled-252/untitled-259.md)

Esta herramienta tiene como objetivo la comparación de dos nubes de puntos LiDAR, fijándose en la cota de los puntos y el valor de clasificación

Al llamar a la herramienta, se muestra un cuadro de diálogo con los siguientes campos:

* **Fichero de entrada**: Se deberá indicar un fichero con una nube de puntos LiDAR a comparar con documento actual.
* **Distancia máxima entre puntos**: Distancia máxima para considerar dos puntos como adyacentes o vecinos en el terreno. Este parámetro dependerá de la densidad de puntos.
* **Tipo de cálculo**: Se deberá indicar cómo se va a realizar la comparación, existiendo dos opciones:
  * Interpolación sobre TIN: Los cálculos se realizarán sobre un TIN generado con todos los puntos de la tipología indicada.
  * Interpolación en rejilla: Los cálculos se realizarán sobre una rejilla previamente calculada con paso la distancia máxima entre puntos.
* **Altitud de los puntos calculados**: Se podrá indicar qué cota tendrán los puntos en los que se encuentren diferencias. Esta cota podrá ser la cota original o la diferencia encontrada entre ambas nubes.
* **Fichero con informe**: Se podrá indicar el nombre de un fichero ASCII donde se almacenarán los datos resultantes de la comparación.
* **Documentos de salida**: Se podrá indicar qué documentos se van a generar después del cálculo. Se tienes dos opciones:
  * Nube de puntos: Documento con los puntos comparados donde se ha encontrado diferencias superiores a las tolerancias indicadas.
  * Límites vectoriales: Límites vectoriales formados con los puntos donde se han encontrado errores y cuya área sea superior a la indicada.
* **Tipologías**: Se podrán seleccionar las tipologías que se tendrán en cuenta en la comparación, pudiendo ser tres: suelo, edificaciones y vegetación. Por cada uno de ellos, se podrán indicar los siguientes campos:
  * Tolerancia: En este campo se deberá indicar un valor en metros a partir del cual el programa detectará como error cualquier diferencia encontrada, positiva o negativa, entre las cotas en ambas nubes de puntos.
  * Código: Si se selecciona como documento de salida los límites vectoriales, se deberá indicar el código con el que se registrarán los límites correspondientes a esta tipología.
  * Min. área: Si se selecciona como documento de salida los límites vectoriales, se deberá indicar el valor mínimo del área que tendrá que tener un límite para ser registrado.

