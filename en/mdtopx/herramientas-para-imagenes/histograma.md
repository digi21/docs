# Histogram
<!-- id: histograma -->
<!-- origen: c5d9471e7d6db5295a0929d53c76a064460d2dbc -->

[Edit image](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-imagen/editar-imagen.md)

This tool evaluates image color distribution across the entire spectrum. It also corrects the histogram by stretching it to cover all available values. A histogram shows an image's tonal range and redistributes the balance of highlights, midtones and shadows. It can reveal whether a photograph is underexposed, overexposed or correctly exposed.

The dialog contains these fields:

* **Chanel**: selects the channel displayed in the chart: RGB, Red, Green or Blue.
* **Histogram**: bar chart showing the number of pixels with each value. X shows possible values and Y shows pixel counts. Moving the mouse displays both axis values at the bottom.
* **Select boundaries**: selects the limits to stretch to the ends of the range. The program automatically finds minimum and maximum values so they can be stretched to 0 and 255, but you can change them.
* **Select threshold**: with a selection threshold specified, **Compute** finds the minimum and maximum limits reaching that percentage of pixels.

This tool can also run with an active project. A different dialog appears without any individual image's histogram. Choose how to equalize the image set:

* **Chanel**: selects the channel displayed in the chart: RGB, Red, Green or Blue.
* **Calculation mode**: selects absolute boundaries or a selection threshold, as described above.

Another dialog then lets you choose which images' histograms to equalize.

See also:

* [Brightness and contrast](brillo-y-contraste.md)
