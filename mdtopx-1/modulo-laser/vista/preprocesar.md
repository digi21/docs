---
description: Cuadro de diálogo Preprocesar
---

# Preprocesar

[Vista de puntos láser](../../fichas-de-herramientas/ficha-de-herramientas-archivos-lidar/vista-de-puntos-laser.md)

Herramienta destinada a procesar un archivo LiDAR, sin necesidad de ser abierto o visualizado. Ofrece la posibilidad de cambiar coordenadas o subdividir el archivo en trozos. Esta última opción es muy útil para tratar archivos de grandes dimensiones.

Los parámetros que precisa son los siguientes:

* **Fichero de entrada**: Se especificará el nombre de entrada del fichero a tratar, pudiendo pulsar el botón a la derecha para poder abrir el explorar de Windows y seleccionarlo. Después de indicar el nombre, se puede pulsar el botón Información y mostrará el cuadro de diálogo [Propiedades Doc Láser ](propiedades-documento-laser.md)con el contenido del archivo.
* **Nombre de salida**: Nombre del archivo de salida. Se podrá indicar con el carácter almohadilla los índices de los archivos, en caso de tratarse de una división de archivos. Por ejemplo, "Salida\_\#\#.LAS" generará los archivos "Salida\_01.LAS", "Salida\_02.LAS", etc.
* **Tipo**: Se podrá especificar en qué formato se desean salvar los archivos de salida.
* **Carpeta**: Se podrá especificar la carpeta donde se almacenarán los archivos de salida.
* **Cantidad máxima de puntos**: Se podrá especificar el número de máximo de puntos que contendrán cada archivo de salida.
* **Transformación de los datos**: Se podrá especificar si se desea un cambio de coordenadas, dándose la opción "De coordenadas cartesianas a UTM" o "De coordenadas geográficas a UTM".

