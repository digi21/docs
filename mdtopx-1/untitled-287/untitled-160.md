---
description: Cuadro de diálogo Mosaico Ortos
---

# Mosaico Ortos

[Módulo Ortofoto](./)

Esta herramienta está destinada a la generación de un mosaico de ortofotos. Para ello es preciso indicarle los límites del mosaico, las ortofotos originales y las líneas de corte para unir estas ortofotos. Estas líneas de unión pueden ser generadas por la herramienta [Líneas de unión](untitled-148.md).

Los campos que se precisan son los siguientes:

* **Ficheros con imágenes**: Se deberá indicar la carpeta donde se encuentran las ortofotos originales. El programa utilizará los archivos según los textos incluidos en el archivo vectorial con las líneas de corte.
* **Ficheros con las hojas del mosaico**: Se indicará el nombre del archivo vectorial donde se incluyen los límites de las hojas de mosaico que se generarán. Estos límites deberán ser entidades cerradas con un texto dentro que actuará de centroide. La hoja de mosaico generada tendrá como nombre este texto.
* **Ficheros con las líneas de unión**: Se indicará el nombre del archivo vectorial donde se incluyen los límites de las zonas que se utilizarán de cada ortofoto original. Estos límites deberán ser entidades cerradas con un texto dentro que actuará de centroide. Este texto deberá contener el nombre de la ortofoto que aportará la información al mosaico.
* **Salida**: La salida de esta herramienta será un conjunto de ficheros de imágenes con el mosaico. Se podrá indicar el formato de estos archivos. El nombre de los archivos será el indicado el archivo con las hojas del mosaico. Igualmente, se podrá indicar la carpeta de almacenamiento de estos ficheros.
* **Ajuste radiométrico**: Se podrá activar esta opción para que el programa calcule un ajuste radiométrico de los píxeles cercanos a las líneas de unión, realizando una transición de una ortofoto a otra. Para ello, se deberá indicar el ancho de píxeles alrededor de la línea de unión donde se desea realizar esta transición.

Vea también:

* [Cálculo de Ortofoto](untitled-55.md)
* [Cálculo de Líneas de unión](untitled-148.md)

