# Find rails
<!-- id: linea-de-comando-buscar-railes -->
<!-- origen: ba6764fedf3c478c5e3f47cde21f815a7820ecfb -->

[Find rails](/mdtopx/modulo-mms/ffcc/buscar-railes.md)

The **/RAILES** command classifies the points of an MMS (Mobile Mapping System, vehicle-based recording) point cloud that belong to the rails of a railway (FFCC) and generates a drawing file with the boundaries and axis of the rails. It performs the same operation as the **Rail** button in the **Train path** panel of the MMS tab, but it does not show the dialog box: it reads the options from the **\[Asfalto]** section of the MDTopX.ini file. This is the same section used by [/ASFALTO](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-lineas-de-vial.md); **/RAILES** does not read the **\[Railes]** section.

Run [/SUELOFFCC](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-suelo-de-ffcc.md) on the same point cloud first.

To run this tool from the command line, enter:

```bash
MDTopX [archivo de entrada] /RAILES [formato de salida]
```

Enter the input file before the command.

## Files

* **Input file**: a point cloud (for example, LAS or LAZ). With an MDTopX project as the input file, MDTopX classifies and saves each point cloud in the project, but it does not generate the drawing file.
* **Output format**: optional. It is one of the words **DXF** (AutoCAD), **DGN** (MicroStation) or **SHP** (Shape), case-insensitive. MDTopX does not interpret the argument as a file name. With any other value, or if you enter no argument, MDTopX saves the drawing file in BIN (DIGI) format. If you enter several arguments after the command, MDTopX uses the last one.

The command produces these results:

1. MDTopX saves the point classification in the input file.
2. MDTopX creates a drawing file with the boundaries and axis of the rails. The file name is the text "Raíles de " followed by the input file name without extension, with the extension of the output format (BIN, DXF, DGN or SHP). MDTopX creates the file in the folder of the input file. The text "Raíles de " depends on the MDTopX language: in English it is "Railways of ".

For example, with the cloud `via.las` and the **DXF** format, MDTopX creates `Railways of via.dxf` when MDTopX runs in English and `Raíles de via.dxf` when it runs in Spanish.

The [/LINEASRAIL](/mdtopx/desde-linea-de-comando/linea-de-comando-buscar-lineas-de-rail.md) command uses the same prefix, "Raíles de ", so it gives the same file name for the same input file and the same format. Move or rename the file that **/RAILES** creates before you run **/LINEASRAIL**.

## License

MDTopX ends without running the command if it does not find the MDTopX license. With that license, MDTopX calculates the classification and the boundaries, but it saves the input file and the drawing file only if the computer has the license for the [MMS module](/mdtopx/modulo-mms/). Without the MMS module license, MDTopX closes the documents without saving and the command neither modifies nor creates any file.

## Configuration in MDTopX.ini

To configure the search, MDTopX.ini must contain the **\[Asfalto]** line. If a key is not in MDTopX.ini or its value is empty, MDTopX uses the value saved in the user configuration and, if none has been saved, the default value given here. MDTopX reads at most 255 characters of each value.

**/RAILES** reads these keys of the **\[Asfalto]** section:

* **DistanciaMax**, **SzTraza** and **CodEjeTrazado**: described on the [/ASFALTO](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-lineas-de-vial.md) page.
* **EsAereo**: 0 or 1. Enter 1 if the recording is aerial photogrammetry (possibly UAV). Default: 0.
* **AnchoVia**: gauge of the track to search for, in millimeters. Default: 1668.
* **AltoMaxRailes**: maximum height, in meters, of the top of the rails above the ground. Default: 0.4.
* **AnchoRailes**: width of each rail, in meters. Default: 0.1.
* **IntensidadMax**: maximum intensity of the points of a rail. Default: 1500.
* **BuscarOtrosRailes**: 0 or 1. With 1, MDTopX searches for other rails the vehicle did not pass along. Default: 1.
* **TipoRailes**: LiDAR class number, from 0 to 255, of the rail points. Default: 92.
* **TipoOtrosRailes**: LiDAR class number of the points of the other rails. Default: 93.
* **TipoTraviesas**: LiDAR class number of the sleeper points. Default: 90.
* **CodRailes**: code of the rail boundaries in the drawing file. Default: RAIL.
* **CodEjeRailes**: code of the rail axis in the drawing file. Default: EJERailes.

```ini
[Asfalto]
DistanciaMax = 0.1
EsAereo = 0
AnchoVia = 1668
AltoMaxRailes = 0.4
AnchoRailes = 0.1
IntensidadMax = 1500
BuscarOtrosRailes = 1
TipoRailes = 92
CodRailes = RAIL
CodEjeRailes = EJERailes
```

Section and key names are case-insensitive.

See also:

* [Introduction to the command line](./)
* [Classify railway ground](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-suelo-de-ffcc.md)
* [Find rail lines](/mdtopx/desde-linea-de-comando/linea-de-comando-buscar-lineas-de-rail.md)
