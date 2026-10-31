# Transform to hue
<!-- id: transformar-a-tono -->
<!-- origen: 776c46a19f2956913caa6d7e4e25ea00c7d18fbc -->

[Filters](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-imagen/filtros.md)

This tool calculates Hue-Value-Saturation \(HSV) from an image whose pixels are stored as Red-Green-Blue \(RGB). The dialog offers several pixel replacement options:

* **Use HSV in each channel**: calculates the HSV color and substitutes it directly into the pixel.
* **Use just H (hue)**: calculates the HSV color and assigns the Hue \(H) value to all three bytes.
* **Use H (hue) with fixed values of:**: calculates the HSV color and lets you specify fixed Saturation \(S) and Value \(V) values, then assigns them to each pixel.

To improve color calculations, specify when an RGB color is gray. If the difference between RGB values is below the specified threshold, the color is considered gray.
