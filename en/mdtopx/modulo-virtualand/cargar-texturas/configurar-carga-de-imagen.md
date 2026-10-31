# Configure image loading
<!-- id: configurar-carga-de-imagen -->
<!-- origen: 4923ee14b7a6212d8e394e77bf0e188e63389f73 -->

[Load textures dialog](./)

This dialog appears when loading a raster image onto the digital model as a texture. The image can be an orthophoto or another image, provided it is georeferenced in the same coordinates as the digital model. Georeferencing must use an ASCII file with the ORT extension and the same name as the image. The file contains these fields:

* **Pixel**: pixel size in meters.
* **X**: upper-left corner X coordinate, in meters.
* **Y**: upper-left corner Y coordinate, in meters.

```ini
[ort]
Pixel=0.50
X=563010.94
Y=4749825.67
```

The tool opens Windows Explorer to choose a TIF, BMP or JPEG image. After reading the georeferencing file, a dialog displays the following fields:

* **Original pixel size**: pixel size in meters read from the georeferencing file.
* **Target pixel size**: pixel size of the image projected onto the model. It can be larger or smaller than the original, reducing or increasing the image size respectively.
* **Use mipmaps**: generates intermediate images at lower resolutions. The program uses these when the model is viewed from farther away and full image resolution is unnecessary, accelerating model display.
* **Interpolation**: interpolation type used when reducing the original image resolution. Choose Nearest neighbor, Bilinear or Bicubic.

Any previously loaded image is automatically unloaded.
