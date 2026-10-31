# Orthophoto computation
<!-- id: calculo-de-ortofoto -->
<!-- origen: 236ce039c763a210d6405b87adc1516481b25855 -->

[Orthophoto module](/mdtopx/modulo-ortofoto/)

This tool orthorectifies a perspective image using digital terrain model data. It requires an active triangulated digital model or TIN document.

The following parameters and fields are displayed:

* **File name**: list of image files used to calculate orthophotos. Images can use supported formats such as BMP, TIF or JPEG. Add or remove files with Load... and Download, respectively.
* **Pixel Size**: resulting image pixel size in ground units, based on source image pixel size and digital terrain model resolution.
* **Interpolation**: Nearest neighbor, Bilinear or Bicubic.
* **Trans. Frame**: percentage to crop across the flight line, avoiding orthophoto calculation at image edges.
* **Long. Frame**: percentage to crop along the flight line, avoiding orthophoto calculation at image edges.
* **Project type**: aerial or terrestrial capture.
* **True Ortho**: calculates a true orthophoto, considering occlusions caused by objects above the DTM, such as buildings or vegetation. Pixels in hidden or "shadow" areas receive **Color in shadow**. After calculating an image's orthophoto, the program searches neighboring images for coverage of those shadow areas and can replace the pixels with their true colors. This increases calculations and processing time.
* **An ortho for each image**: generates an orthophoto for each listed image rather than a single orthophoto combining all images. The combined option may produce an excessively large image. With one orthophoto per image, a file is generated in the original image's folder, named "Ortofoto de" followed by its original name. With a single orthophoto, a new document opens after calculation and is not saved directly to disk.
* **Color in shadow**: color for pixels in shadow areas when calculating a true orthophoto. Defaults to black.
* **Color outside**: color for pixels outside the DTM. Defaults to white.

See also:

* [Edit image orientation](../herramientas-para-imagenes/editar-orientacion-de-imagen.md)
* [Seam line calculation](lineas-de-union.md)
* [Mosaic calculation](mosaico-ortos.md)
