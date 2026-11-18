# Orient a point cloud against another point cloud
<!-- id: linea-de-comando-orientar-nube-contra-nube -->
<!-- origen: b79eb7bfda502857b34fef8b3cec6a4f8ad4e8d1 -->

The `/ORIENTARNUBE` tool calculates how much a misoriented point cloud (for example, a SLAM scan, *Simultaneous Localization and Mapping*) must be rotated and moved to match the point cloud of a theoretical model of the same building, and applies that rotation and movement to the cloud.

To run this tool from the command line, enter:

```bash
MDTopX [input file] /ORIENTARNUBE
```

This tool accepts no output file argument on the command line. Enter the full path of the input file, which can come before or after the command. MDTopX looks for MDTopX.ini in the folder of the input file.

## Files

* **Input file**: the point cloud you want to orient. MDTopX applies the transformation to this cloud and saves it in this same file, so it overwrites the original. Work on a copy if you need to keep the unoriented cloud. If the calculation fails, MDTopX does not modify the file.
* **Target point cloud**: the cloud of the theoretical model of the building, with the ground and the walls and without roofs. You specify it in the **NombreDibujoDestino** key of MDTopX.ini. MDTopX does not modify this file.
* **Transformations file**: text file with the calculated transformation. MDTopX creates it if the **GenerarSalidaConTransformacion** key is 1, with the name given as the value of the **NombreSalidaConTransformacion** key. If you enter a name without a folder, MDTopX creates it in the working directory of the process.

MDTopX records the progress of the calculation in the MDTopX.LOG file, which it creates in the folder of the MDTopX.ini file.

## License

This tool does not require the MDTopX license: before running it, MDTopX does not check for a MDTopX license (hardware dongle or software license). /ACOPIOS, /FILTRADO, /ORIENTARNUBE and /ORIENTARNUBEARCHIVO do not check for the MDTopX license at startup or before saving the result, and they show no license warnings.

## What MDTopX calculates

1. It calculates the ground elevation of each cloud from its lowest points.
2. It selects from each cloud the points of three horizontal slices located 1, 2 and 3 meters above the ground, each 0.4 meters thick, and calculates the outline of the points in each slice.
3. It obtains the dominant direction of the outlines of each cloud and calculates, for each one, the rotation that aligns that direction with the X and Y axes.
4. It converts the outlines, already aligned with the axes, into images with pixels of side **SizeCelda** and searches for the horizontal shift that makes the two images coincide the most. It repeats the search with the input cloud rotated an additional 0, 90, 180 and 270 degrees and keeps the rotation that produces the most coincidence.
5. MDTopX repeats the horizontal shift search with pixels whose side length is SizeCelda / 2.
6. It adjusts the Z elevation: it projects the ground points of the target cloud onto the triangulated surface of the ground points of the input cloud, and moves the input cloud in Z to cancel the mode of the elevation differences.
7. It applies three operations to the input cloud, in this order: the rotation that aligns it with the axes plus the additional rotation chosen in step 4 (**Giro1**), the shifts from steps 4, 5 and 6 (**Traslacion**) and a final rotation that takes the cloud from the axes to the actual direction of the target cloud (**Giro2**).

## Configuration in MDTopX.ini

To configure the calculation, MDTopX.ini must have a line with the text **\[UnirNubesDesorientadas]** followed by these keys. Section and key names are case-insensitive. If you omit a key or give it an empty value, MDTopX uses the value saved in the MDTopX user configuration and, if there is none, the default value. Each value accepts at most 255 characters.

* **NombreDibujoDestino**: path of the file with the target point cloud. It is required. If the file does not exist or contains no points, MDTopX does not orient the input cloud. If you enter a path without a folder, MDTopX looks for it in the working directory of the process. Default: empty.
* **DistanciaMin**: minimum length, in meters, that an outline segment must have, once fitted to a straight line, for MDTopX to keep it. Default: 0.1.
* **DistanciaMax**: maximum distance, in meters, between two outline segments for MDTopX to join them. MDTopX also uses this value as the grid step with which it reduces the ground points of the target cloud. Default: 0.5.
* **SizeCelda**: side, in meters, of the pixels of the outline images. Default: 0.1.
* **GenerarSalidaConTransformacion**: 0 (do not create the transformations file) or 1 (create it). Default: 1.
* **NombreSalidaConTransformacion**: name of the transformations file. Default: `Transformaciones.txt`.
* **DibujoDestinoEsTeorico**: MDTopX reads this key but ignores it: with this tool it always treats the target cloud as a theoretical model with ground and walls.
* **DibujoDestinoEstaClasificado**: MDTopX reads this key but does not use it.


```ini
[UnirNubesDesorientadas]
NombreDibujoDestino = C:\Nave\Teorico.las
DistanciaMin = 0.1
DistanciaMax = 0.5
SizeCelda = 0.1
GenerarSalidaConTransformacion = 1
NombreSalidaConTransformacion = C:\Nave\Transformaciones.txt
```

## Transformations file

The transformations file is a text file with three sections. **Giro1** and **Giro2** are angles in degrees, around the vertical axis, with 4 decimals. **Traslacion** contains the shifts in X, Y and Z that MDTopX applies to the cloud, in meters and with 3 decimals, separated by a space.

```ini
[Giro1]
19.0043
[Traslacion]
-16.600 -11.200 0.830
[Giro2]
-0.4032
```

## Orient with an orientation file

The `/ORIENTARNUBEARCHIVO` command applies to a point cloud the transformation that a transformations file stores, without calculating it. To run it, enter:

```bash
MDTopX [input file] /ORIENTARNUBEARCHIVO [orientation file]
```

* **Input file**: point cloud that you want to orient. MDTopX rotates the cloud with **Giro1**, moves it with **Traslacion** and rotates it with **Giro2**, in that order, and saves it in the same file, so it overwrites the original. Work on a copy if you need to keep the cloud without orientation. The input file can come before the command or after the orientation file.
* **Orientation file**: text file with the format of the transformations file that `/ORIENTARNUBE` writes. MDTopX takes only the first argument that follows the command as the orientation file. Always specify the orientation file path: MDTopX does not check whether this argument is missing.

No MDTopX.ini key configures this command. Like `/ORIENTARNUBE`, the command does not check the MDTopX license at startup or before saving the result.

See also:

* [Introduction to the command line](./)
* [Stockpile volume calculation](/mdtopx/desde-linea-de-comando/linea-de-comando-acopios.md)
