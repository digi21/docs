# Perspective parameters
<!-- id: parametros-de-perspectiva -->
<!-- origen: 84be1d0783317abf5bb2fc83d940fbf9ab1e288e -->

[Home tab](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-inicio/)

![Perspective parameters dialog](../../images/image-76.png)

This dialog selects a different view of a file. Specify the following parameters:

* **Current view position**: enters the current view position numerically. You can also change it graphically with the Zoom tools on the [Home tab](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-inicio/). There are two ways to specify it:
  * **Angles and movement**: defines the view through the object's position relative to the Cartesian axes:
    * _Angle X_: view rotation about the X axis.
    * _Angle Y_: view rotation about the Y axis.
    * _Angle Z_: view rotation about the Z axis.
    * _Trans. X_: view displacement along the X axis.
    * _Trans. Y_: view displacement along the Y axis.
    * _Trans. Z_: view displacement along the Z axis.
    * _Zoom_: zoom level.
  * **Camera position and point of view**: defines the view as a camera pointing at a particular point:
    * _Camera X_: camera X coordinate.
    * _Camera Y_: camera Y coordinate.
    * _Camera Z_: camera Z coordinate.
    * _View X_: X coordinate of the point the camera faces.
    * _View Y_: Y coordinate of the point the camera faces.
    * _View Z_: Z coordinate of the point the camera faces.
    * _Vertical X_: X component of the vector defining the camera's vertical direction.
    * _Vertical Y_: Y component of the vector defining the camera's vertical direction.
    * _Vertical Z_: Z component of the vector defining the camera's vertical direction.
* **OpenGL parameters**:
  * _View type_: selects _Orthogonal_ or _Perspective_. You can also use Orthogonal view and Perspective view on the [Home tab](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-inicio/).
  * _Near plane_: distance from the viewer to the first visible plane.
  * _Far plane_: distance from the viewer to the last visible plane.
  * _Angle view_: viewing angle perpendicular to the screen, in degrees.
  * _Scale_: scale factor for exaggerating size.
* **Other parameters**:
  * _Factor movement speed_: factor for changing movement on screen.
  * _Vertical exaggeration_: vertical scale for exaggerating relief.
  * _Smoothing interpolated points_: number of points to display when a grid digital model is smoothed.

Load or save all these parameters in ASCII files with the **Load...** and **Save...** buttons, respectively.
