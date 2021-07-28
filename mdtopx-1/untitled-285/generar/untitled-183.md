---
description: Cuadro de diálogo Rejilla a partir de LIDAR
---

# Rejilla a partir de LIDAR

[Generar a partir de LIDAR](../../fichas-de-herramientas/untitled-252/untitled-259.md)

Herramienta destinada a la generación de una rejilla regular de puntos, obtenida a partir de la interpolación con los puntos LiDAR. Además, se podrán buscar puntos que difieran mucho con su entorno y clasificarlos, excluyéndolos de la interpolación.

Los parámetros que precisa son los siguientes:

* **Limites**: Se indicarán los límites correspondientes con las coordenadas X e Y máximas y mínimas.
* **Tamaño de celda**: Se indicará el tamaño de la celda de la rejilla.
* **Control de calidad**: Se indicará si se desea realizar un control de calidad, es decir, comprobar si existen puntos que tienen una cota anormal con respecto al resto de puntos que están en la misma celda.
* **Clasificar puntos**: Se indicará si se desean clasificar aquellos puntos que no superen el control de calidad, pudiéndolos asignar una clasificación en el campo Tipo
* **Salida**: Existen dos posibilidades para el archivo de salida:
* **Un único fichero**: Se generará en un único archivo en formato DEM, propio de las rejillas de MDTopX.
* **División en hojas**: Se podrán generar varios archivos según el tamaño de hoja indicado por el usuario. Se generarán hojas con el nombre indicado en el campo Prefijo Este nombre podrá tener caracteres almohadilla que serán sustituidos por el número de hoja. Es decir, indicando "salida\_\#\#", se generarán archivos con los nombres "salida\_01", "salida\_02", etc.

