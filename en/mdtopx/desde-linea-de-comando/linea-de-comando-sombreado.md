# Shading
<!-- id: linea-de-comando-sombreado -->
<!-- origen: e6367bc2dff53e87bfe121e4ac89fcb2212f9421 -->

[Shading](/mdtopx/como/como-sombreado.md)

To run this tool from the command line, enter:

```bash
MDTopX [archivo de entrada] /SOM [archivo de salida]
```

The input file must be the digital model onto which the grid will be projected.

The output file specifies where to save the shading. Its extension determines whether TIF, BMP or JPEG is used.

To configure shading generation, MDTop.INI must also contain the mandatory **\[Sombreado]** line followed by:

* **Size**: output image pixel size in meters.
* **Tipo**: 0 (overhead illumination), 1 (oblique illumination) or 2 (combined illumination).
* **Límite**: boundary file name.
* **CheckLimite**: 0 (no boundary) or 1 (boundary).
* **ColorCenital**: overhead illumination color, as comma-separated red, green and blue values.
* **ColorOblicuo**: oblique illumination color, as comma-separated red, green and blue values.

```ini
[Sombreado]
Size=1
Tipo=2
CheckLimite=0
ColorCenital=255,0,0
ColorOblicuo=0,0,255
```

Field names are case-insensitive.

See also:

* [Introduction to the command line](./)
