# Ejemplo 4: Obtener un mapa de tintas hipsométricas

[Ejemplos](/mdtopx/ejemplos/)

## Objetivo

Obtener el mapa de tintas hipsométricas de una cartografía.

## Ficheros iniciales

* HOJA1.DXF: Fichero con formato DXF de AutoCad, con la cartografía.
* LIMITE.DXF: Fichero con formato DXF de AutoCad, con el límite de la zona de la cual se quiere obtener el mapa.

## Proceso

* Cargar el fichero HOJA1.DXF en pantalla. Para ello utilice la orden [Abrir](../operaciones-con-archivos/abrir-archivo.md) del menú del [Botón MDTopX](../introduccion/boton-de-mdtopx.md), seleccionando el tipo de archivos DXF.
* Llamar a la orden [Triangulación](../como/como-triangulacion.md) de la ficha de herramientas [Herramientas MDT](/mdtopx/herramientas-mdt/), que generará un modelo digital del terreno de la cartografía. En el cuadro de diálogo se podrán elegir qué líneas son líneas de ruptura y con qué líneas se desea calcular el modelo digital.

![cuadro de diálogo Triangulación](../../images/pantalla1-ejemplo4.jpg)

* Llamar a la orden [Tintas hipsométricas](../como/como-mapa-de-tintas-hipsometricas.md) de la ficha de herramientas [Herramientas MDT](../fichas-de-herramientas/ficha-de-herramientas-mdt/)y configurar el aspecto del mapa de tintas hipsométricas: gamas de color, sombreado, archivo con límite...

![cuadro de diálogo Tintas hipsométricas](../../images/pantalla2-ejemplo4.jpg)

* Se genera un archivo ráster con la imagen.

## Ficheros resultantes

* TRIANGULACION DE HOJA1.MDT: Fichero con formato propio de MDTop con el modelo digital del terreno. No incluido para ahorrar espacio.

![archivo con triangulación](../../images/pantalla4-ejemplo4.jpg)

* TINTAS HIPSOMETRICAS DE TRIANGULACION DE HOJA1: Fichero con formato de imagen con el mapa de tintas hipsométricas. Este archivo podrá ser salvado en formato TIFF, BMP o JPEG.

![archivo con tintas hipsométricas](../../images/pantalla3-ejemplo4.jpg)

* TINTAS HIPSOMETRICAS DE TRIANGULACION DE HOJA1.ORT: Fichero propio de MDTop, para facilitar la georreferenciación del archivo ráster.

```ini
[ort]
Pixel=5.00
X=319694.57
Y=4814338.39
Z=0.00
EscalaZ=1.000000
```
