# Hypsometric tint map
<!-- id: mapa-de-tintas-hipsometricas -->
<!-- origen: 877f6dc61408812e0665803c1763bc44e2a0b4cf -->

[Hypsometric tint map](/mdtopx/desde-linea-de-comando/linea-de-comando-mapa-de-tintas-hipsometricas.md)

![Hypsometric tint map dialog](../../../images/image-63.png)

Complete these fields:

* **Pixel size**: pixel size in meters for the raster hypsometric tint map. Larger pixels reduce image quality, but excessively small pixels increase memory and disk requirements.
* **Min height and Max height**: digital model elevation limits, shown to help construct the height interval table.
* **List of colour sequences**: name of the color range to use. Add, delete or duplicate tables under another name for use in different files.
* **Height interval table**: relates colors to different heights. Add, delete or edit intervals to match the document's elevation range. Surfaces above or below this table's limits are not colored.
* **Fit to range...**: adjusts an interval table to user-specified elevation limits through this [dialog](ajustar-a-rango-de-altitudes.md).
* [**Hypso curve...**](../../otras-herramientas/curva-hipsometrica.md): displays file surface area distribution by elevation to help design the color range.
* **Use shading**: combines the hypsometric tint map with black oblique shading of the digital model to show relief more realistically. See [Shading](/mdtopx/desde-linea-de-comando/linea-de-comando-sombreado.md).
* **Ray configuration...**: with Use shading enabled, configure shading in this [dialog](../sombreado/configurar-rayo.md).
* **Use degradation between tints**: averages colors for each calculated elevation, producing transitions between color intervals. Results are visually acceptable, but colors no longer identify a point's elevation range because they are mixtures rather than pure colors.
* **Save limits in vector format**: records selected interval boundaries as closed vector surfaces that can be colored in another program. Use the button to the right to specify the file location. Available formats:
  * DIGI: BIN extension.
  * AutoCad: DXF extension.
  * MicroStation: DGN extension.
* **Limit file**: optional file defining the hypsometric map area. Formats: DIGI BIN, AutoCad DXF, MicroStation DGN or ASCII coordinates defining the boundary. The boundary can contain one or more closed lines; ASCII supports only one line.

Requires an active triangulated digital model document.

## Example

A suitable range for a file between 0 and 950 meters, combined with shading, is:

| Elevation | Red | Green | Blue |
| ----- | ----- | ------ | ----- |
|  0    |  2    |  78    |  253  |
|  10   |  1    |  44    |  26   |
|  40   |  2    |  44    |  1    |
|  80   |  89   |  111   |  2    |
|  160  |  143  |  126   |  3    |
|  280  |  145  |  77    |  2    |
|  650  |  57   |  27    |  9    |
|  850  |  56   |  12    |  10   |
|  950  |  245  |  224   |  224  |

Elevation 0 receives color 2-78-253, expressed as red, green and blue amounts; elevation 10 receives 1-44-26. Intermediate elevations receive a progressive color between these limits.

Values below 0 or above 950 meters receive no value.
