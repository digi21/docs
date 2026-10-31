# Calculate road lines
<!-- id: calcular-lineas-de-vial -->
<!-- origen: 3868e6cbb42c235c489eec43056910ef86907ea3 -->

[MMS Edit objects tab](./)

After road line classification, points are classified as road markings. This tool checks results and corrects errors, displaying detected marking boundaries and potential ones based on intensity.

Draw a line on screen with the left mouse button to change surface types. Selecting incorrectly detected boundaries changes their points to asphalt; selecting undetected boundaries changes their points to road markings.

![Calculate road lines dialog](../../../images/image-28.png)

Parameters:

* Asphalt:
  * Type
  * Minimum intensity
  * Boundary code
* Road markings
  * Type
  * Boundary code
* Work only on the current selection
* Maximum distance among points
* Minimum surface area

See also:

* [Classify road lines](/mdtopx/modulo-mms/trazado/clasificar-lineas-de-vial.md)
* [Calculate asphalt lines](calcular-limite-de-asfalto.md)
