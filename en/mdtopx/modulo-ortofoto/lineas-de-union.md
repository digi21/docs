# Seam lines
<!-- id: lineas-de-union -->
<!-- origen: 9d5b1a20e70f90982ed68b89248f85bf8f6451f5 -->

[Orthophoto module](/mdtopx/modulo-ortofoto/)

This tool generates seam lines between overlapping orthophotos. It automatically finds areas with the smallest differences between images so their join is inconspicuous. Add multiple image files; the program organizes them and finds overlaps. The result is a vector file defining the portion each orthophoto contributes to a mosaic. Use it with [Image Mosaic](/mdtopx/modulo-ortofoto/mosaico-ortos.md) to generate a single image from all portions.

The following parameters and fields are displayed:

* **Image files**: orthophoto files used to calculate seam lines for a subsequent mosaic. Add or remove items with **Add** or **Delete**, respectively.
* **Filter**: finds suitable seam locations by searching for image similarities and tonal changes, or edges. Edge detection algorithms: Prewitt, 2-direction Sobel or 8-direction Sobel.
* **Detail level**: detail used to search common orthophoto areas and record seam lines. Higher detail increases processing time; lower detail reduces sensitivity to differences. Five levels: Fine, Medium-Fine, Medium, Medium-Fast and Fast.
* **Output data**: codes for recording boundary entities and text size for centroids in the resulting vector file, which contains boundaries and each orthophoto's file name.

See also:

* [Orthophoto computation](calculo-de-ortofoto.md)
* [Mosaic calculation](mosaico-ortos.md)
