# Find objects along the alignment
<!-- id: buscar-objetos-en-el-trazado -->
<!-- origen: 563e36d215db77a743dace65aa6d023bb4b09778 -->

[MMS Alignment tab](./)

Classifies points belonging to objects on or near a road, useful for inventorying assets or removing objects from later modeling, such as scanned vehicles. Run [Asphalt](clasificar-lineas-de-vial.md) first.

Results:

* Classifies indicated object points in the original document.
* Generates a new vector geometry document with detected object boundaries.

![Road asset classification dialog](../../../images/image-20.png)

Required data:

* **Source point**: measurement origins used in calculation.
* **Maximum distance among points**: maximum spatial neighbor distance.
* **Objects to identify**: information boards, bridges or tunnels, vehicles, streetlights, barriers or guardrails, and road signs. Specify a classification for each selected object type. For road signs, also specify minimum point intensity.

[Watch video: Detect road assets from MMS data](https://youtu.be/Xp4bjqNUKIQ)
