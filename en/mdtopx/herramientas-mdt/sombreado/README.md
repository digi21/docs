# Shading
<!-- id: sombreado -->
<!-- origen: 1f7e137af541f2b9b5593ea6bd50c3c764f3e03d -->

[Shading](/mdtopx/desde-linea-de-comando/linea-de-comando-sombreado.md)

![Shading dialog](../../../images/image-66.png)

Complete these fields:

* **Pixel size**: pixel size in meters for the raster shading map. Larger pixels reduce image quality, but excessively small pixels increase memory and disk requirements.
* **Configuration**: shading type: Zenithal, Oblique or Combined.
* **Ray configuration...**: opens a [dialog](configurar-rayo.md) configuring the ray for oblique or combined shading.
* **Slope shading colour**: color for zenithal lighting.
* **Oblique shading colour**: color for oblique lighting.
* **Limit file**: optional file defining the shading area. Formats: DIGI BIN, AutoCad DXF, MicroStation DGN or ASCII coordinates defining the boundary. The boundary can contain one or more closed lines; ASCII supports only one line.

For Combined shading, warm colors such as pink or yellow are recommended for zenithal shading and cool colors such as blue or purple for oblique shading.

Requires an active triangulated digital model document.
