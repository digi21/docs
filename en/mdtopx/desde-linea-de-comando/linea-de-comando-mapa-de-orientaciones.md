# Aspect map
<!-- id: linea-de-comando-mapa-de-orientaciones -->
<!-- origen: 781ae668d5b17e766d90f30636add9a11d4ac1ff -->

[Aspect map](/mdtopx/como/como-mapa-de-orientaciones.md)

To run this tool from the command line, enter:

```bash
MDTopX [archivo de entrada] /ORI [archivo de salida]
```

The input file is a digital terrain model (DTM) file from which MDTopX calculates the aspect map. It can be a triangulation file (MDT extension) or a DEM file, which is a grid model (DEM extension).

The output file is the aspect map image. MDTopX saves the image in TIF, BMP or JPEG format, according to the extension of the output file. MDTopX also saves an ORT file with the same name, which contains the coordinates of the upper-left corner of the image and the pixel size in meters.

License: the tool requires the MDTopX license; without it, MDTopX exits without running the command. When the input file is a DEM, MDTopX also needs the VirtuaLand module to save the image. Without that module, MDTopX calculates the aspect map but does not create the output file.

To configure the map, add the **\[Orientaciones]** section to MDTopX.ini with the following keys. If a key is missing or empty, MDTopX uses the value stored in the user's configuration (the last value used in the dialog of the MDTopX interface) or, if none is stored, the default value shown:

* **Size**: pixel size of the output image in meters. Default: 1.
* **CheckLimite**: 0 (no boundary) or 1 (boundary). Default: 0.
* **Limite**: name of the file with the boundary of the area. MDTopX reads it only if CheckLimite is 1. It can be a BIN (DIGI), DXF (AutoCad) or DGN (MicroStation) file; MDTopX uses the first closed line in the file and ends with an error if there is none. Default: empty.
* **CheckSombreado**: 0 (no shading) or 1 (combines the map with oblique shading of the model, calculated in black). Default: 0.
* **Degradacion**: 0 (pure colors) or 1 (averages the colors of adjacent intervals so that the transition is gradual). Default: 1.
* **GrabarLimites**: 0 (does not save the interval boundaries) or 1 (saves the boundaries between intervals as vectors in the NombreVector file). It only has an effect when the input file is an MDT; with a DEM, MDTopX does not save the boundaries. Default: 0.
* **NombreVector**: name of the file where MDTopX saves the boundaries between intervals. The format depends on the extension: DXF (AutoCad), DGN (MicroStation) or BIN (DIGI) for any other extension. Default: Limites vectoriales.bin.
* **Gama\[n]**: name of the color range, where n is a consecutive number starting at 1. MDTopX reads names until the first missing number and uses the last range in the section. If there is no **Gama\[n]** key, MDTopX uses the range selected in the user's configuration. Define at least one range in MDTopX.ini if you have never used this tool in the interface. If the name already exists in the user's configuration, MDTopX adds the intervals from the file to that range.
* **Gama\[n]Intervalo\[m]**: interval of range n, where m is a consecutive number starting at 1. The value is four comma-separated numbers: the aspect azimuth in grads (centesimal degrees) and the red, green and blue components of the color (0 to 255).
* **DataRayo\_Angulo**: inclination angle of the shading ray, in grads. Default: 50.
* **DataRayo\_Acimut**: azimuth of the ray direction, in grads. Default: 350.
* **DataRayo\_Intensidad**: illumination intensity factor. Default: 1.
* **DataRayo\_Exageracion**: vertical exaggeration factor of the relief. Default: 1.
* **DataRayo\_TipoRayo**: 0 (white or color) or 1 (white, color or black). Default: 0.

The **DataRayo\_...** keys are used only if CheckSombreado is 1.

```ini
[Orientaciones]
Size = 2
CheckLimite = 0
CheckSombreado = 1
Degradacion = 1
GrabarLimites = 0
Gama1 = Orientaciones
Gama1Intervalo1 = 0,255,0,0
Gama1Intervalo2 = 100,255,255,0
Gama1Intervalo3 = 200,0,255,0
Gama1Intervalo4 = 300,0,0,255
DataRayo_Angulo = 50
DataRayo_Acimut = 350
DataRayo_Intensidad = 1
DataRayo_Exageracion = 1
DataRayo_TipoRayo = 0
```

MDTopX treats section and key names as case-insensitive.

See also:

* [Introduction to the command line](./)
* [Slope map](/mdtopx/desde-linea-de-comando/linea-de-comando-mapa-de-pendientes.md)
* [Shading](/mdtopx/desde-linea-de-comando/linea-de-comando-sombreado.md)
