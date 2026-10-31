# Hypsometric tint map
<!-- id: linea-de-comando-mapa-de-tintas-hipsometricas -->
<!-- origen: 538aaf0f9e7aaf278cb812171be60e1bc599eac0 -->

[Hypsometric tint map](/mdtopx/como/como-mapa-de-tintas-hipsometricas.md)

To run this tool from the command line, enter:

```bash
MDTopX [archivo de entrada] /HIP [archivo de salida]
```

The input file must be the digital model onto which the grid will be projected.

The output file specifies where to save the hypsometric tint map. Its extension determines whether TIF, BMP or JPEG is used.

To configure shading generation, MDTop.INI must also contain the mandatory **\[Hipsometricas]** line followed by:

* **Size**: output image pixel size in meters.
* **Límite**: boundary file name.
* **CheckLimite**: 0 (no boundary) or 1 (boundary).
* **CheckSombreado**: overhead illumination color, as comma-separated red, green and blue values.
* **Intervalo\[n]**: sequence of intervals in the color range, where n is a consecutive number starting at 1. Each interval contains the elevation in meters followed by the color's red, green and blue values, separated by commas.

```ini
[Hipsometricas]
Size=1
CheckLimite=0
CheckSombreado = 0
Intervalo1=900,0,255,0
Intervalo2=950,255,255,0
Intervalo3=1000,255,0,0
```

Field names are case-insensitive.

See also:

* [Introduction to the command line](./)
