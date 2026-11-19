# Cloud color
<!-- id: color-de-nube -->
<!-- origen: 7251f45c74e169278edb07fba3a45750e185f0bc -->

[Laser point view](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-archivos-lidar/vista-de-puntos-laser.md)

This list chooses how to display the point cloud. Available options depend on its properties.

![Point cloud display options](../../../images/image-11.png)

Options:

* **One color**: all points use the same color, set with **Point color** in this list.
* **By registered color**: shows each point with its stored RGB color, recorded by the scanner or assigned with [Set RGB color to points](../editar/asignar-color-rgb-a-puntos.md).
* **By intensity**: colors points by intensity recorded by the laser device.
* **By echo**: colors points by recorded LiDAR return. Set each return's color in the [Echo list](lista-de-ecos.md). Useful only with multiple echoes or returns, common in airborne LiDAR.
* **By classification**: colors points by assigned LiDAR classification. Set colors in the [Classification list](lista-de-clasificaciones.md).
* **By height**: colors points by elevation or Z coordinate. A [dialog](../../otras-herramientas/seleccionar-gama-de-color.md) specifies the color range.
* **By source point**: colors points by measurement origin, identifying flight lines in airborne LiDAR or scanner stations in terrestrial LiDAR.
* **Near infrared**: shows each point's near infrared (NIR) in grayscale: the lighter the point, the more it reflects in the infrared, as healthy vegetation does. See [Infrared](#infrared).
* **False color**: shows each point's near infrared, red and green as red, green and blue, the classic false color composite: healthy vegetation appears red. See [Infrared](#infrared).
* **Spectral index**: colors points by a spectral index (NDVI, GNDVI, NDWI, SAVI or EVI) on a fixed color scale from −1 to 1. When this option is chosen, a dialog selects the index and shows its formula and color legend. To change the index, choose the option again. See [Spectral indices](#spectral-indices).
* **Point color**: color used when **One color** is selected.

## Infrared

**Near infrared**, **False color** and **Spectral index** use the points' near infrared, which can come from two sources:

* **The NIR field of the LAS** (point formats 8 and 10, such as PNOA 2024): infrared comes from that field and red, green and blue from each point's color. Points without NIR, such as the synthetic cable points added by [Magic Surface](/mdtopx/modulo-laser/buscar-puntos/superficie-magica/), are shown in gray.
* **The color, as false color**: if the cloud has no NIR field, each point's color is read as false color: the red channel is near infrared, green is red and blue is green. This is what you get by assigning the color of a false color infrared image to the cloud with [Set RGB color to points](../editar/asignar-color-rgb-a-puntos.md). Points without color are shown in gray. With a true color cloud without NIR, these options are meaningless.

The choice is made for the whole cloud, as in the **Use infrared** option of [Magic Surface](/mdtopx/modulo-laser/buscar-puntos/superficie-magica/).

### Spectral indices

| Index | Formula | What it shows |
|---|---|---|
| NDVI | (NIR − R) / (NIR + R) | Healthy vegetation above 0.3; bare soil and built-up areas near 0; water and shadows below 0. |
| GNDVI | (NIR − G) / (NIR + G) | Like the NDVI with green instead of red: more sensitive to chlorophyll. |
| NDWI | (G − NIR) / (G + NIR) | McFeeters' water index: water above 0; vegetation below 0. |
| SAVI | 1.5 · (NIR − R) / (NIR + R + 0.5) | Like the NDVI, corrected for soil brightness where vegetation is sparse. |
| EVI | 2.5 · (NIR − R) / (NIR + 6 R − 7.5 B + 1) | Uses blue to correct for the atmosphere. Only with the NIR field of the LAS, which comes with true blue; false color has no blue and points are shown in gray. |

Bands are taken from 0 to 1; the 16-bit LAS infrared is first converted to 8 bits, like the color. The index value is clipped between −1 and 1, and points where it cannot be computed are shown in gray.

The color scale is fixed, the same for every cloud, so flights can be compared:

* **NDVI, GNDVI, SAVI and EVI**: water and shadows in blue, soil and built-up areas in ochre, and vegetation in increasingly dark greens.

![NDVI, GNDVI, SAVI and EVI color scale](../../../images/escala-indices-vegetacion.png)

* **NDWI**: vegetation in green and water in increasingly dark blues.

![NDWI color scale](../../../images/escala-ndwi.png)

> In winter flights, deciduous vegetation has no leaves and its NDVI gets close to that of the soil.
