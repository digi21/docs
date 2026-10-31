# Aspect map
<!-- id: mapa-de-orientaciones -->
<!-- origen: c38e42d382945e3f79e970538b1bd7b0513f4ee4 -->

[Aspect map](/mdtopx/como/como-mapa-de-orientaciones.md)

![Aspect map dialog](../../images/image-68.png)

Complete these fields:

* **Pixel size**: pixel size in meters for the raster aspect map. Larger pixels reduce image quality, but excessively small pixels increase memory and disk requirements.
* **Range name**: color range name. Add, delete or duplicate tables under another name for use in different files.
* **Azimuth interval table**: relationship between colors and azimuth ranges. Add, delete or edit intervals. Azimuths are in grads.
* **Use shading**: combines the aspect map with black oblique shading of the digital model to show relief more realistically. See [Shading](/mdtopx/desde-linea-de-comando/linea-de-comando-sombreado.md).
* **Ray configuration**: with Use shading enabled, configure shading in this [dialog](sombreado/configurar-rayo.md).
* **Use color gradients**: averages colors for each calculated aspect, producing transitions between color intervals. Results are visually acceptable, but colors no longer identify a point's aspect range because they are mixtures rather than pure colors.
* **Save interval boundaries as vectors**: records selected interval boundaries as closed vector surfaces that can be colored in another program. Use the button to the right to specify the file location. Available formats:
  * DIGI: BIN extension.
  * AutoCad: DXF extension.
  * MicroStation: DGN extension.
* **Boundary file**: optional file defining the area for the aspect map. Formats: DIGI BIN, AutoCad DXF, MicroStation DGN or ASCII coordinates defining the boundary. The boundary can comprise one or more closed lines; ASCII files support only one line.

Requires an active triangulated digital model document.
