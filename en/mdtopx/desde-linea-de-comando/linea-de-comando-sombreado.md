# Shading
<!-- id: linea-de-comando-sombreado -->
<!-- origen: cbd5e40e3efb7bc83278a791880b8d2fc60624b2 -->

[Shading](/mdtopx/como/como-sombreado.md)

To run this tool from the command line, enter:

```bash
MDTopX [archivo de entrada] /SOM [archivo de salida]
```

The input file must be the digital model from which the shading will be generated.

The output file specifies where to save the shading. Its extension determines whether TIF, BMP or JPEG is used.

To configure shading generation, MDTopX.ini must also contain the mandatory **\[Sombreado]** line followed by:

* **Size**: output image pixel size in meters. Default: 1.
* **Tipo**: 0 (overhead illumination), 1 (oblique illumination) or 2 (combined illumination). Default: 0.
* **Limite**: boundary file name.
* **CheckLimite**: 0 (no boundary) or 1 (boundary). Default: 0.
* **ColorCenital**: overhead illumination color, as comma-separated red, green and blue values. Default: 0,255,255.
* **ColorOblicuo**: oblique illumination color, as comma-separated red, green and blue values. Default: 255,0,255.
* **DataRayo\_Angulo**: inclination angle of the light ray, in centesimal degrees (gon). Default: 50.
* **DataRayo\_Acimut**: azimuth of the light ray, in centesimal degrees (gon). Default: 350.
* **DataRayo\_Intensidad**: intensity of the light ray. Default: 1.
* **DataRayo\_Exageracion**: vertical exaggeration applied when calculating the shading. Default: 1.
* **DataRayo\_TipoRayo**: coloring mode: 0 (white-color) or 1 (white-color-black). Default: 0.

If the file omits a field, MDTopX uses the value stored in its preferences. On an installation with no stored preferences, that value is the default shown for each field.

```ini
[Sombreado]
Size=1
Tipo=2
CheckLimite=0
ColorCenital=255,0,0
ColorOblicuo=0,0,255
DataRayo_Angulo=50
DataRayo_Acimut=350
DataRayo_Intensidad=1
DataRayo_Exageracion=1
DataRayo_TipoRayo=0
```

Field names are case-insensitive.

See also:

* [Introduction to the command line](./)
