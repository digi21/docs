# Classify alignment ground
<!-- id: clasificar-suelo-de-trazado -->
<!-- origen: dc60ec95b9dc2b5aad886aa011a7db5a10bd7d56 -->

[MMS Alignment tab](./)

Classifies ground points acquired by MMS, producing two categories: ground, type 2, and nonground, type 6.

![Road ground classification dialog](../../../images/image-184.png)

Parameters:

* **Capture type**: _Terrestrial laser_ for MMS or _Aerial photogrammetry_ for UAV systems.
* **Axis file**: optional but recommended, reducing calculations and improving accuracy. If absent, the program estimates the vehicle trajectory from the cloud. Formats: BIN, DXF, DGN, Shape or an ASCII orientation file for MMS images.
* **MMS with side sensors**: enable if the MMS has lateral scanners in addition to the main scanner, usually near the vehicle center.
* **Maximum distance among points**: potential distance between consecutive scan profiles, depending on vehicle speed. Since this will not exceed 100 km/h, 20 cm is a typical value.
* **Point tolerance**: maximum elevation discrepancy between nearby points considered part of the same surface. Increase for uneven tracks. A typical value is 4 cm.
* **Keep object classification**: preserves existing point classifications.
* **Use GPS time for classification**: enable for continuous acquisitions where position relates to acquisition time. Disable if multiple scan passes were performed.

[![Detect road ground from MMS data](https://img.youtube.com/vi/2-7aQcy7pdU/0.jpg)](https://youtu.be/2-7aQcy7pdU)
Detect road ground from MMS data
