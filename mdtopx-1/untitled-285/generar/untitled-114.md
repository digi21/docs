---
description: Cuadro de diálogo Generar imagen
---

# Generar imagen

[Generar a partir de LIDAR](../../fichas-de-herramientas/untitled-252/untitled-259.md)

Herramienta destinada a la generación de un documento ráster georreferenciado donde los píxeles representen alguno de los parámetros de cada punto LiDAR.

Se muestra un cuadro de diálogo que tiene los siguientes campos:

* **Seleccione las tipologías origen**: Se deberán seleccionar las tipologías origen que se desean utilizar para generar la imagen.
* **Distancia máxima entre puntos**: Distancia máxima para considerar dos puntos como adyacentes o vecinos en el terreno. Este parámetro dependerá de la densidad de puntos.
* **Tamaño del píxel**: Tamaño en metros de los píxeles que formarán el mapa ráster de pendientes. Cuanto más grande sea el tamaño del píxel peor calidad tendrá la imagen de salida. Este valor también tendrá que estar en concordancia con la distancia entre los puntos. Si el tamaño del píxel es inferior a la distancia entre los puntos, los píxeles será interpolados a partir de los puntos de alrededor. Si el tamaño del píxel es superior a la distancia entre los puntos, se producirá un suavizado de la imagen de salida.
* **Tipo cálculo**: Mediante este campo, el usuario podrá elegir qué propiedad de los puntos se representará en la imagen de salida. Se plantean varias opciones:
* **Altitud**: Si se elige esta opción, la propiedad a representar será la cota. Para representar la cota el programa mostrará un [cuadro de diálogo ](../../otras-herramientas/untitled-192.md)donde el usuario podrá elegir qué gama de tintas hipsométricas se utilizará en el cálculo.
* **Color RGB**: Si se elige esta opción, la propiedad a representar será el color almacenado en cada punto. De esta forma, como la imagen resultante está georreferenciada, dará lugar a una pseudo-ortofoto.
* **Intensidad**: Si se elige esta opción, la propiedad a representar será la intensidad registrada en cada punto. De esta forma, como la imagen resultante está georreferenciada, dará lugar a una pseudo-imagen pancromática de la realidad.
* **Clasificación**: Si se elige esta opción, la propiedad a representar será la clasificación LiDAR dada a cada punto. Los colores elegidos serán los mismos que los utilizados en la ventana de representación del documento.
* **Punto origen**: Si se elige esta opción, la propiedad a representar será el punto de registro desde donde se midió a cada punto. Los colores elegidos serán los mismos que los utilizados en la ventana de representación del documento.
* **Eco**: Si se elige esta opción, la propiedad a representar será el eco de retorno del rayo cuando se midió cada punto. Los colores elegidos serán los mismos que los utilizados en la ventana de representación del documento.

