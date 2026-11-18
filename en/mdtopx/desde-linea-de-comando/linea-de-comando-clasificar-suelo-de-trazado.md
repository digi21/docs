# Classify alignment ground
<!-- id: linea-de-comando-clasificar-suelo-de-trazado -->
<!-- origen: 88c9515953c0296f5717d88edd4d8e7b9a38e9e8 -->

[Classify alignment ground](/mdtopx/modulo-mms/trazado/clasificar-suelo-de-trazado.md)

The **/SUELOVIAL** command classifies the points of a road point cloud recorded with an MMS (Mobile Mapping System, vehicle-based recording) as ground or non-ground. It performs the same operation as the **Bare ground** button in the **Car path** panel of the MMS tab, but it does not show the dialog box: it reads the options from the **\[TrazaMMS]** section of the MDTopX.ini file and processes every point source (recording identifier) in the file.

To run this tool from the command line, enter:

```bash
MDTopX [archivo de entrada] /SUELOVIAL
```

Enter the input file before the command.

## Files

* **Input file**: a point cloud (for example, LAS or LAZ) or an MDTopX project that contains point clouds.
* **Output file**: this command has no output file, and MDTopX ignores any argument entered after **/SUELOVIAL**. MDTopX saves the classification in the input file itself. If the input file is a project, MDTopX saves each point cloud in the project after classifying it.

MDTopX assigns class 2 (ground) to ground points and class 6 (object) to the points it classifies as non-ground.

## License

MDTopX ends without running the command if it does not find the MDTopX license. With that license, MDTopX calculates the classification, but it saves it only if the computer has the license for the [MMS module](/mdtopx/modulo-mms/). Without the MMS module license, MDTopX closes the documents without saving and the command does not modify any file.

## Configuration in MDTopX.ini

To configure the classification, MDTopX.ini must contain the **\[TrazaMMS]** line followed by the keys below. If a key is not in MDTopX.ini or its value is empty, MDTopX uses the value saved in the user configuration and, if none has been saved, the default value given here. MDTopX reads at most 255 characters of each value.

* **EsAereo**: recording type. 0 (terrestrial laser, typical of an MMS system) or 1 (aerial photogrammetry, typical of a UAV system). Default: 0. With 1, the dialog box requires **SzFileEje** to be set.
* **SzFileEje**: full path of the file that contains the axis the vehicle followed. It can be a drawing file (BIN, DXF, DGN or Shape) or a road file. With a drawing file, MDTopX uses the first line that has points. Default: empty; in that case, MDTopX calculates a possible trajectory from the point cloud.
* **VariosSensores**: 0 or 1. Enter 1 if the MMS system has side scanners in addition to the main one. Default: 0. The dialog box disables this option when **EsAereo** is 1.
* **DistanciaMaxima**: maximum distance, in meters, between two consecutive recording profiles. It depends on the vehicle speed during recording. Default: 0.2.
* **Tolerancia**: maximum height difference, in meters, between nearby points for them to be considered part of the same surface. Increase this value if the road is an irregular track. Default: 0.05.
* **ConservarObjetos**: 0 or 1. With 1, MDTopX keeps the previous classification of points that are already classified as objects. Default: 1.
* **UtilizarGPS**: 0 or 1. With 1, MDTopX uses the GPS time of the points to improve the classification. Enter 0 if the recording was made with several scanning passes. Default: 1.
* **EsFFCC**: MDTopX reads this key, but **/SUELOVIAL** replaces it with 0 before calculating. The key has no effect on this command.

```ini
[TrazaMMS]
EsAereo = 0
SzFileEje = C:\Trabajo\eje.bin
VariosSensores = 0
DistanciaMaxima = 0.2
Tolerancia = 0.05
ConservarObjetos = 1
UtilizarGPS = 1
```

Section and key names are case-insensitive.

See also:

* [Introduction to the command line](./)
* [Classify railway ground](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-suelo-de-ffcc.md)
* [Classify road lines](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-lineas-de-vial.md)
