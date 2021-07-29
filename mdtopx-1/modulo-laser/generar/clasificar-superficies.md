---
description: Cuadro de diálogo Clasificar superficies
---

# Clasificar superficies

[Generar a partir de LIDAR](../../fichas-de-herramientas/ficha-de-herramientas-archivos-lidar/calcular-a-partir-de-lidar.md)

Esta herramienta tiene como objetivo la clasificación de entidades cerradas que actúan de superficies, según su proyección sobre la nube de puntos. De esta forma, en función de los puntos que están dentro de cada superficie, así serán tratadas. La utilidad de la herramienta reside en la gestión de superficies procedentes de una segmentación de imágenes ráster. Estas superficies se obtienen al dividir la imagen según color. Sin embargo, suelen estar sobre-segmentadas y es necesario unirlas y darles cota, ya que no se puede obtener este parámetro de una imagen. Por medio de la proyección sobre una nube de puntos LiDAR clasificada es posible realizar estas operaciones.

Al llamar a la herramienta, se muestra un cuadro de diálogo con los siguientes campos:

* **Fichero de entrada**: Se deberá indicar un fichero con cartografía vectorial donde están almacenadas las entidades cerradas que actúan de límites.
* **Seleccione las tipologías origen**: Se deberán seleccionar las tipologías origen que se desean utilizar para clasificar las superficies.
* **Distancia máxima entre puntos**: Distancia máxima para considerar dos puntos como adyacentes o vecinos en el terreno. Este parámetro dependerá de la densidad de puntos.
* **Seleccionar tipología origen**: Se deberá elegir la tipología de clasificación de los puntos que se utilizarán para el cálculo del curvado.
* **Modificar cota del límite**: Se podrá modificar la cota de las entidades originales según cuadro opciones: Cota media, Cota moda, Cota máxima o Cota mínima.
* **Unir áreas con cota similar**: Se podrán unir aquellas superficies con un lado en común cuya cota sea similar. Para ello, también se podrá indicar un valor de tolerancia para la diferencia de dicha cota.
* **Cambiar código según puntos**: Se podrá cambiar el código de cada entidad en función de la clasificación de los puntos que están en su interior, por ejemplo, edificación, vegetación, suelo, etc.
* **Añadir atributo con la pendiente**: Se podrá añadir un atributo con la pendiente en grados sexagesimales. Para ello, habrá que proporcionar un valor de la tabla utilizada.

