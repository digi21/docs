# Slope map
<!-- id: mapa-de-pendientes -->
<!-- origen: 512d73cfcf57d4172cc836a622eee18ba663d34b -->

[Slope map](/mdtopx/como/como-mapa-de-pendientes.md)

![Slope map dialog](../../images/image-67.png)

Complete these fields:

* **Pixel size**: pixel size in meters for the raster slope map. Larger pixels reduce image quality, but excessively small pixels increase memory and disk requirements.
* **Range name**: color range name. Add, delete or duplicate tables under another name for use in different files.
* **Slope interval table**: relationship between colors and slope ranges. Add, delete or edit intervals. Slopes are in degrees.
* **Use shading**: combines the slope map with black oblique shading of the digital model to show relief more realistically. See [Shading](../como/como-sombreado.md).
* **Ray configuration**: with Use shading enabled, configure shading in this [dialog](sombreado/configurar-rayo.md).
* **Use color gradients**: averages colors for each calculated slope, producing transitions between color intervals. Results are visually acceptable, but colors no longer identify a point's slope range because they are mixtures rather than pure colors.
* **Save interval boundaries as vectors**: records selected interval boundaries as closed vector surfaces that can be colored in another program. Use the button to the right to specify the file location. Available formats:
  * DIGI: BIN extension.
  * AutoCad: DXF extension.
  * MicroStation: DGN extension.
* **Boundary file**: optional file defining the area for the slope map. Formats: DIGI BIN, AutoCad DXF, MicroStation DGN or ASCII coordinates defining the boundary. The boundary can comprise one or more closed lines; ASCII files support only one line.

Requires an active triangulated digital model document.
