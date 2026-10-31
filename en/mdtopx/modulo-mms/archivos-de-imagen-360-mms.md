# MMS 360-degree image files
<!-- id: archivos-de-imagen-360-mms -->
<!-- origen: 2f9854d02b26afc53b030177c3f036727288e6a4 -->

[MMS module](/mdtopx/modulo-mms/)

360-degree images cover almost the entire sphere from a viewpoint. Unrecorded areas depend on camera locations because their supports and vehicle appear in the image. Joining two or more images produces the final image, potentially with seam defects.

Each image is georeferenced through additional files rather than internally. Georeferencing consists of XYZ position and three camera attitude angles at capture time.

![360-degree image before loading georeferencing, displayed as a rectangle](../../images/image-23.png)

![360-degree image after loading georeferencing, displayed as a sphere](../../images/image-24.png)

Edit georeferencing with [Edit](/mdtopx/modulo-laser/editar/).

These files help visualize and analyze data but initially contain no object 3D information. Near the sensor, their resolving power greatly exceeds LiDAR, potentially defining objects such as road markings better.
