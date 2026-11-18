# Hypsometric tint map
<!-- id: linea-de-comando-mapa-de-tintas-hipsometricas -->
<!-- origen: b0eaf7339f486416899345acece68739c0745593 -->

[Hypsometric tint map](/mdtopx/como/como-mapa-de-tintas-hipsometricas.md)

To run this tool from the command line, enter:

```bash
MDTopX [archivo de entrada] /HIP [archivo de salida]
```

The input file must be the digital model from which the hypsometric tint map will be generated.

The output file specifies where to save the hypsometric tint map. Its extension determines whether TIF, BMP or JPEG is used.

To configure hypsometric tint map generation, MDTopX.ini must also contain the mandatory **\[Hipsometricas]** line followed by:

* **Size**: output image pixel size in meters. Default: 1.
* **Limite**: boundary file name.
* **CheckLimite**: 0 (no boundary) or 1 (boundary). Default: 0.
* **CheckSombreado**: 0 (no shading) or 1 (shading). Default: 0.
* **Degradacion**: 0 (each interval is painted with a uniform color) or 1 (gradient between the interval colors). Default: 1.
* **GrabarLimites**: 0 (do not save) or 1 (save the interval boundaries as vector entities in the **NombreVector** file). Default: 0.
* **NombreVector**: name of the file where the interval boundaries are saved. MDTopX saves it in the format that its extension indicates: BIN (DIGI), DXF (AutoCad) or DGN (MicroStation). Default: Limites vectoriales.bin.
* **Gama\[n]**: name of a color range, where n is a consecutive number starting at 1. MDTopX stops reading the sequence at the first value of n missing from the file. MDTopX uses the last range in the sequence for the map.
* **Gama\[n]Intervalo\[m]**: sequence of intervals in range n, where m is a consecutive number starting at 1. MDTopX stops reading the sequence at the first value of m missing from the file. Each value contains the elevation in meters followed by the color's red, green and blue values, separated by commas.
* **DataRayo\_Angulo**: inclination angle of the shading light ray, in centesimal degrees (gon). Default: 50.
* **DataRayo\_Acimut**: azimuth of the shading light ray, in centesimal degrees (gon). Default: 350.
* **DataRayo\_Intensidad**: intensity of the shading light ray. Default: 1.
* **DataRayo\_Exageracion**: vertical exaggeration applied when calculating the shading. Default: 1.
* **DataRayo\_TipoRayo**: shading coloring mode: 0 (white-color) or 1 (white-color-black). Default: 0.

The fields with the **DataRayo\_** prefix are used only when **CheckSombreado** is 1.

If the file omits a field, MDTopX uses the value stored in its preferences. On an installation with no stored preferences, that value is the default shown for each field.

```ini
[Hipsometricas]
Size=1
CheckLimite=0
CheckSombreado = 0
Gama1=Example range
Gama1Intervalo1=900,0,255,0
Gama1Intervalo2=950,255,255,0
Gama1Intervalo3=1000,255,0,0
```

Field names are case-insensitive.

See also:

* [Introduction to the command line](./)
