# Manage 360-degree images
<!-- id: gestion-de-imagenes-360 -->
<!-- origen: edc58cccb94c78525f7f2a357f269f54f3d95ac5 -->

[MMS module](/mdtopx/modulo-mms/)

## Georeferencing

[Panoramic images](archivos-de-imagen-360-mms.md) require exterior orientation: georeferenced XYZ position and three angles, usually rotations about the vehicle coordinate axes, roll, pitch and azimuth. This information is normally supplied in one file after vehicle trajectory adjustment.

Images may be taken every 10 m, nearly 100 per kilometer. Rather than georeference each manually, load them into a project and read the orientation values from their file.

First create an image project, preferably separate from the LiDAR project. Select images in File Explorer and drag them onto the [Project window](../introduccion/paneles-de-la-aplicacion/panel-proyecto.md), or use its toolbar's "+" button.

Without exterior orientation, rectangular boundaries initially overlap in relative coordinates with a pixel size of 1.

Load orientations from a file using [Edit](/mdtopx/modulo-laser/editar/).

For panoramic images, select the third option, optionally specifying a camera file. It can define the panoramic image's horizontal or vertical range because some systems do not capture the entire sphere.

Then specify the image exterior orientation file and its format.

Example:

```text
file_name,file_type,sequence_id,timestamp,GPS_time(s),east,north,altitude,attitude(x)=roll,attitude(y)=pitch,attitude(z)=pan,frame_id
E:/2021-03-15_11-47-26/ladybug_panoramic_001929.jpg,JPG,1929,162259326648,1299841796.17742848,596126.402298610075,3121341.12428526115,51.4542347844690084,177.971166137430686,2.05551927384272703,-93.0967238715002026,3791
E:/2021-03-15_11-47-26/ladybug_panoramic_001930.jpg,JPG,1930,162356296464,1299841797.14712691,596131.650464848964,3121341.97523138579,51.2559816902503371,177.033894729433285,0.378351863176165426,-113.457547588796572,3792
E:/2021-03-15_11-47-26/ladybug_panoramic_001931.jpg,JPG,1931,162455886013,1299841798.14302278,596136.238556805649,3121344.82461331319,51.1919172378256917,176.771113624685285,-0.33364872741620677,-137.619259427909441,3793
```

Successful reading updates image boundaries, showing their arrangement in the project. An additional file with each image's name and the ORI extension stores its exterior orientation.

![Project view with loaded 360-degree images](../../images/image-14.png)

Export boundaries to an additional drawing file using **Export limits** on the [Project ribbon](../fichas-de-herramientas/ficha-de-herramientas-proyecto/limites-proyecto.md).

Generate a polyline of the MMS vehicle route from image positions with **Path from images** on the [Project ribbon](../fichas-de-herramientas/ficha-de-herramientas-proyecto/limites-proyecto.md).

## Using images

Once orientations are generated, display vector and raster data together in several ways:

* Open an image and load the area's point cloud as a reference. Data cannot be edited or vector elements added because the image is the current document.
* Open the point cloud and load the image in either equivalent way:
  * As a [**reference**](../operaciones-con-archivos/abrir-archivos-de-referencia.md), from [File](../fichas-de-herramientas/ficha-de-herramientas-editar/editar-archivo.md) in [Edit](/mdtopx/modulo-laser/editar/).
  * As a **Background image**, from [Edit](../fichas-de-herramientas/ficha-de-herramientas-archivos-lidar/editar-puntos-en-archivos-lidar.md) on [LiDAR Files](../fichas-de-herramientas/ficha-de-herramientas-archivos-lidar/).
  The cloud can then be edited, but you must know which image covers the area. Each covers a relatively small region, requiring frequent image changes to inspect the whole file.
* Open the point cloud and load the project containing all panoramic images as its background. Initially loads the image nearest the cloud center and enables tools for changing images quickly. The [MMS](../fichas-de-herramientas/ficha-de-herramientas-mms.md) [Background image](/mdtopx/modulo-mms/imagen-de-fondo.md) group identifies the current image and moves to the next, previous or a user-specified image.
