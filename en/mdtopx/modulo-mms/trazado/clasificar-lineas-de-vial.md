# Classify road lines
<!-- id: clasificar-lineas-de-vial -->
<!-- origen: a5b311998fe3050b63f55931c56e357699381b8f -->

[MMS Alignment tab](./)

Classifies asphalt and road marking points. Run [Alignment](/mdtopx/modulo-mms/trazado/) first.

Results:

* Classifies asphalt, road marking and curb points in the original document.
* Generates a new vector document containing asphalt platform boundaries and road marking boundaries.

![Classify asphalt and road markings dialog](../../../images/image-18.png)

Required data:

* **Axis file**: optional but recommended, reducing calculations and improving accuracy. If absent, the program estimates the vehicle trajectory from the cloud. Formats: BIN, DXF, DGN, Shape or an ASCII orientation file for MMS images.
* **General parameters**:
  * Road type: Unknown, Urban, Motorway, Road with shoulder or Road without shoulder. Processing adapts to the type.
  * Maximum distance among points: maximum spatial neighbor distance.
  * Central white line
  * Lateral white line
  * Maximum width
* **Asphalt**:
  * Type
  * Find asphalt
  * Tolerance
* **Road markings**:
  * Type:
  * Intensity:
    * Minimum intensity: minimum point intensity to identify a marking on asphalt.
  * Find road markings
  * Classify points
  * Adjust sensors
  * Adjust white line
  * Use color information:
* **Curbs**:
  * Type
  * Find curbs

[Detect road asphalt from MMS data (watch video on YouTube)](https://youtu.be/vWYrTWfFrps)

See also:

* [Calculate asphalt lines](../editar-objetos/calcular-limite-de-asfalto.md)
* [Calculate road lines](/mdtopx/modulo-mms/editar-objetos/calcular-lineas-de-vial.md)
