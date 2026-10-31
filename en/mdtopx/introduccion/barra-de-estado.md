# Status bar
<!-- id: barra-de-estado-2 -->
<!-- origen: b248115efade2bccc1b26a2d612fa9fd586e8660 -->

[User interface](interfaz-de-usuario.md)

![Status bar](../../images/barra-de-estado.jpg)

The status bar appears at the bottom of the screen and is divided into sections displaying different information.

From left to right, this information is:

* The ground X coordinate at the current mouse position. For an active image document without georeferencing, the pixel position along the horizontal axis is shown, measured from the image's lower left corner.
* The ground Y coordinate at the current mouse position. For an active image document without georeferencing, the pixel position along the vertical axis is shown, measured from the image's lower left corner.
* The ground Z coordinate at the current mouse position, when the active document contains a digital terrain model or has one loaded as a [reference](../operaciones-con-archivos/abrir-archivos-de-referencia.md). This coordinate is interpolated within the triangle beneath the pointer. If no triangle is found, 0.0 is shown. For an active image document, the pixel's RGB value at the mouse position is shown.
* Additional tool information: messages explaining what to do and what the application expects from you.

If the window is too narrow, some fields may disappear, starting with those on the right.

Right-click the bar to select which fields to display.

To show this bar, enable Status bar on the [Home tab](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-inicio/).
