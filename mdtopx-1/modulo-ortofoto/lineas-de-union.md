---
description: Cuadro de diálogo Líneas de unión
---

# Líneas de unión

[Módulo Ortofoto](./)

Esta herramienta está destinada a la generación de las líneas de unión entre dos ortofotos con solape. El programa busca automáticamente las zonas de menor diferencia entre ambas imágenes para dibujar la línea de corte y que la fusión entre ellas no resalte. La herramienta permite introducir varios archivos de imágenes, que organizará para buscar las zonas de solape entre ellas. El resultado es un archivo vectorial con los límites que cada ortofoto aportaría para realizar un mosaico. Este archivo podrá ser utilizado en la herramienta [Mosaico Ortos](mosaico-ortos.md) para generar una única imagen con todos los trozos.

Los parámetros y campos que se muestran son los siguientes:

* **Ficheros con imágenes**: En este listado se podrán añadir todos los archivos con las ortofotos con las que se quieren calcular las líneas de unión para generar posteriormente un mosaico. Se podrán añadir o eliminar elementos utilizando los botones Añadir o Borrar respectivamente.
* **Filtro**: Para la búsqueda de la mejor zona de la línea de corte, el programa busca donde las imágenes son más parecidas y dónde están los cambios de tonalidad, es decir, los bordes. Para esta búsqueda de bordes se pueden utilizar varios algoritmos: Prewitt , Sobel de 2 direcciones o Sobel de 8 direcciones.
* **Nivel de detalle**: Se podrá seleccionar el nivel de detalle que se desea utilizar en la búsqueda de detalles en las zonas comunes de las ortofotos para registrar las líneas de unión. A mayor detalle, mayor tiempo de cálculo. A menor detalle, menos sensibilidad a las posibles diferencias encontradas entre las ortofotos. Existen cinco niveles de detalle: Fino, Medio-Fino, Medio, Medio-Rápido y Rápido
* **Datos de salida**: Debido a que el resultado es un archivo vectorial con los límites y los nombres de archivo de cada ortofoto, se podrán seleccionar los códigos que se utilizarán para registrar las entidades así como el tamaño de los centroides.

Vea también:

* [Cálculo de Ortofoto](calculo-de-ortofoto.md)
* [Cálculo de Mosaico](mosaico-ortos.md)

