# Platforms
<!-- id: plataformas -->
<!-- origen: 5f3ca3fe82abe1c05b0bd074f34b35004c77267e -->

[Platforms](/mdtopx/como/como-plataformas.md)

![Platforms dialog](../../images/image-58.png)

Complete these fields:

* **Platform file**: drawing file containing entities defining potential platforms. Entities must be closed, with coincident first and last points. They must overlap the current document geographically. Their vertices must have elevations defining platform slope and elevation. Use the \[...] button to the right to find the file in Windows Explorer.
* **Type of file**: the tool accepts two data types:
  * File with the platform boundary line at its design elevation.
  * File with the terrain intersection line, from which the program calculates the platform's location at a specified elevation.
* **Shoulders**: slopes can be cut, with the platform below natural terrain, or fill, with the platform above it. Define slopes as a vector with X representing horizontal movement and Y representing vertical movement. Both can include a berm at specified height intervals. Specify the interval and berm width. A slope with a berm is shown below.

![File with slopes](../../images/ejemplo-plataforma-con-berma.jpg)

* **Compute volume**: directly calculates volume between the natural terrain DTM and the new DTM with projected platforms, generating an additional volume calculation document. If disabled, calculate volumes later with [Volumes](/mdtopx/desde-linea-de-comando/linea-de-comando-cubicacion.md).

Requires an active triangulated digital model document.
