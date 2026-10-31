# Differences
<!-- id: diferencias -->
<!-- origen: cc797452a1103070be41a10f69a512c0a9463b0b -->

[Compute](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-imagen/imagen-calcular.md)

This tool calculates pixel differences between two images covering the same geographical area. Both must be georeferenced.

The result is another georeferenced image, with black pixels where no differences were found and RGB 0,0,255 pixels where differences exist. Use [Raster to Vector](/mdtopx/herramientas-para-imagenes/vectorizar.md) to calculate vector boundaries of these areas afterward.

The dialog requires the following fields:

* **File to compare**: location of the image to compare with the current document.
* **Calculation mode**: three ways to compare images:
* **Only use H (hue)**: transforms all RGB pixels to HSV but compares only the first component, Hue.
* **Use RGB differences**: directly compares pixels stored as RGB.
* **Use HSV differences**: transforms RGB pixels to HSV and compares all three components.
* **Use threshold**: threshold above which a difference between images is considered to exist. Several criteria are available:
  * All values higher than threshold: all three components must exceed the threshold.
  * Two values higher than threshold: at least two of the three components must exceed the threshold.
  * At least one higher than threshold: at least one component must exceed the threshold.
  * Sum of value higher than threshold: the sum of the three components must exceed the threshold.
