# Find road lines
<!-- id: buscar-lineas-de-vial -->
<!-- origen: 75a9693a8acefc1375a98d4213a8a94fd868f9ef -->

[MMS Alignment tab](../)

Calculates boundaries from points classified as asphalt and/or road markings, potentially classified earlier with [Asphalt](../clasificar-lineas-de-vial.md).

Results:

* Classifies original document asphalt points as type 35 and road marking points accordingly.
* Generates a vector document with asphalt platform and road marking boundaries.

![Road marking generation dialog](../../../../images/image-19.png)

Required data:

* **Track file (optional)**:
* Milestone start:
* **Other output documents**:
* LiDAR codes
* Work only on the current selection
* [Elements](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-editar/editar-elementos.md)
* Max distance among points
* Max distance to join lanes

[Detect road lanes from MMS data (watch video on YouTube)](https://youtu.be/J4uEcv8OIGU)
