# Example 4: Obtain a hypsometric tint map
<!-- id: ejemplo4 -->
<!-- origen: 51e054279492c7304cdbfd2cacd6add516d28c6d -->

[Examples](/mdtopx/ejemplos/)

## Objective

Generate a hypsometric tint map from mapping data.

## Input files

* HOJA1.DXF: AutoCad DXF mapping file.
* LIMITE.DXF: AutoCad DXF boundary of the area to map.

## Procedure

* Load HOJA1.DXF using [Open](../operaciones-con-archivos/abrir-archivo.md) from the [MDTopX button](../introduccion/boton-de-mdtopx.md), selecting DXF files.
* Run [Triangulate](../como/como-triangulacion.md) on the [DTM tools](/mdtopx/herramientas-mdt/) tab to generate a digital terrain model from the mapping. Select which lines are breaklines and which lines to use to calculate the model.

![Triangulation dialog](../../images/pantalla1-ejemplo4.jpg)

* Run [Hypsometric](../como/como-mapa-de-tintas-hipsometricas.md) on the [DTM tools](../fichas-de-herramientas/ficha-de-herramientas-mdt/) tab and configure the map's appearance: color ranges, shading, boundary file, etc.

![Hypsometric tint dialog](../../images/pantalla2-ejemplo4.jpg)

* A raster image file is generated.

## Output files

* TRIANGULACION DE HOJA1.MDT: digital terrain model in MDTop's native format. Not included to save space.

![Triangulation file](../../images/pantalla4-ejemplo4.jpg)

* TINTAS HIPSOMETRICAS DE TRIANGULACION DE HOJA1: hypsometric tint map image. Save it as TIFF, BMP or JPEG.

![Hypsometric tint file](../../images/pantalla3-ejemplo4.jpg)

* TINTAS HIPSOMETRICAS DE TRIANGULACION DE HOJA1.ORT: MDTop native file providing raster georeferencing.

```ini
[ort]
Pixel=5.00
X=319694.57
Y=4814338.39
Z=0.00
EscalaZ=1.000000
```
