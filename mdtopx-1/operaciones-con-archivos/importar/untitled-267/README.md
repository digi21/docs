# Importar datos al documento de viales

[Módulo Viales](../../../untitled-288/)

El programa permite importar datos almacenados en otros formatos al documento actual de viales. Para importar se deberá crear primero un documento vacío o abrir un documento de viales existente. A continuación se debería seleccionar la herramienta Importar del menú [Archivo](../../../fichas-de-herramientas/untitled-248/untitled-229.md).

Los formatos contemplados son los siguientes:

* Archivos BIN: Archivos con cartografía del programa DIGI.
* Archivo DXF: Archivos de dibujo de intercambio de AutoCad.
* Archivos de MicroStation: Archivos de dibujo de MicroStation.
* Archivos de puntos ASCII: Archivos de formato ASCII con un listado de coordenadas X, Y, Z.
* Archivos Shape de ARC-GIS: Archivos de formato Shape de la aplicación Arc-GIS.
* Archivos con ejes de TCP MDT: Archivos con la planta de los viales del programa TCP MDT. Se podrán seleccionar varios archivos a la vez.
* Archivos con rasantes de TCP MDT: Archivos con las rasantes de los viales del programa TCP MDT. Se podrán seleccionar varios archivos a la vez, tras lo cual el programa mostrará un [cuadro de diálogo](untitled-126.md) para que se relacionen los alzados leídos con los trazados existentes en el documento.

Cuando se importan archivos de dibujo o ASCII, es decir, todos los formatos excepto los dos últimos, el programa permite especificar qué tipo de datos contiene el archivo y dónde se quieren insertar.

Por ejemplo, si el archivo contiene datos de trazados en planta, se deberá especificar la primera opción y el programa permitirá indicar si además se desean añadir los datos leídos en altimetría como alzados \(importación como una rasante\).

Sin embargo, si en el archivo se han almacenado datos en alzado se podrá incorporar como rasantes. Para ello, el programa precisa que se le indique a qué altura se encuentra el plano de comparación \(para sumar este valor en metros a la coordenada Y leída\) y el trazado donde se desea asignar el alzado.

