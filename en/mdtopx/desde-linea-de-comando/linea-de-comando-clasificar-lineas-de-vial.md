# Classify road lines
<!-- id: linea-de-comando-clasificar-lineas-de-vial -->
<!-- origen: 0acc2bed59d27f7e7818debbf0ab758d8837014b -->

[Classify road lines](/mdtopx/modulo-mms/trazado/clasificar-lineas-de-vial.md)

The **/ASFALTO** command classifies the points of an MMS (Mobile Mapping System, vehicle-based recording) point cloud that belong to the asphalt, road markings, curbs and sidewalks of a road, and generates a drawing file with the asphalt and road marking boundaries. It performs the same operation as the **Asphalt** button in the **Car path** panel of the MMS tab, but it does not show the dialog box: it reads the options from the **\[Asfalto]** section of the MDTopX.ini file and processes every point source (recording identifier) in the file.

Run [/SUELOVIAL](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-suelo-de-trazado.md) on the same point cloud first.

To run this tool from the command line, enter:

```bash
MDTopX [archivo de entrada] /ASFALTO [formato de salida]
```

Enter the input file before the command.

## Files

* **Input file**: a point cloud (for example, LAS or LAZ) or an MDTopX project that contains point clouds.
* **Output format**: optional. It is one of the words **DXF** (AutoCAD), **DGN** (MicroStation) or **SHP** (Shape), case-insensitive. MDTopX does not interpret the argument as a file name. With any other value, or if you enter no argument, MDTopX saves the drawing file in BIN (DIGI) format. If you enter several arguments after the command, MDTopX uses the last one.

The command produces these results:

1. MDTopX saves the point classification in the input file. If the input file is a project, MDTopX saves each point cloud in the project after classifying it.
2. MDTopX creates a drawing file with the asphalt boundaries (the platform) and the road markings it calculates. The file name is the text "Asfalto de " followed by the input file name without extension, with the extension of the output format (BIN, DXF, DGN or SHP). MDTopX creates the file in the folder of the input file; with a project, in the folder of the project file. The text "Asfalto de " depends on the MDTopX language: in English it is "Asphalt of ".

For example, with the cloud `carretera.las` and the **DXF** format, MDTopX creates `Asphalt of carretera.dxf` when MDTopX runs in English and `Asfalto de carretera.dxf` when it runs in Spanish.

## License

MDTopX ends without running the command if it does not find the MDTopX license. With that license, MDTopX calculates the classification and the boundaries, but it saves the input file and the drawing file only if the computer has the license for the [MMS module](/mdtopx/modulo-mms/). Without the MMS module license, MDTopX closes the documents without saving and the command neither modifies nor creates any file.

## Configuration in MDTopX.ini

To configure the classification, MDTopX.ini must contain the **\[Asfalto]** line followed by the keys below. If a key is not in MDTopX.ini or its value is empty, MDTopX uses the value saved in the user configuration and, if none has been saved, the default value given here. MDTopX reads at most 255 characters of each value.

The [/RAILES](/mdtopx/desde-linea-de-comando/linea-de-comando-buscar-railes.md) command reads the same **\[Asfalto]** section. The keys specific to rails are described on the **/RAILES** page and are not repeated here: **AltoMaxRailes**, **AnchoRailes**, **AnchoVia**, **BuscarOtrosRailes**, **CodEjeRailes**, **CodRailes**, **EsAereo**, **IntensidadMax**, **TipoOtrosRailes**, **TipoRailes** and **TipoTraviesas**.

### General parameters

* **DistanciaMax**: maximum distance, in meters, between two points for them to be considered neighbors in space. Default: 0.1.
* **SzTraza**: full path of the file that contains the axis the vehicle followed. It can be a drawing file (BIN, DXF, DGN or Shape) or a road file. With a drawing file, MDTopX uses the first line that has at least 2 points. Default: empty; in that case, MDTopX calculates a possible trajectory from the point cloud.
* **TipoCarretera**: road type. 0 (unknown), 1 (urban), 2 (motorway or expressway), 3 (road with shoulder) or 4 (road without shoulder). Default: 0.
* **UmbralMinObjetosBajos**: minimum threshold, in meters, for low objects. The code comment gives 0.02 with profilometers (Leica) and 0.04 or more with Velodyne sensors. Default: 0.02.
* **AjustarSensores**: 0 or 1. With 1, MDTopX adjusts the sensors when it searches for road markings. Default: 0.
* **AnchoMax**: maximum asphalt width, in meters. If it is 0 or less, MDTopX does not use it. Default: 0.
* **AnchoMin**: minimum asphalt width, in meters. If it is 0 or less, MDTopX does not use it. Default: 2.
* **AlturaMinBordillo**: minimum curb height, in meters. Default: 0.02.

### What to search for

* **BuscarAsfalto**: 0 or 1. With 1, MDTopX searches for asphalt. Default: 1.
* **BuscarOtroAsfalto**: 0 or 1. With 1, MDTopX searches for other asphalt: widenings and intersections with other roads. Default: 1.
* **BuscarLineaBlanca**: 0 or 1. With 1, MDTopX searches for horizontal markings. Default: 1.
* **BuscarBordillos**: 0 or 1. With 1, MDTopX searches for curbs. Default: 1.
* **BuscarAceras**: 0 or 1. With 1, MDTopX searches for sidewalks. Default: 1.

### White line

* **HayLBCentral**: 0 or 1. Enter 1 if there is a white line in the center of the road. Default: 1.
* **HayLBLateral**: 0 or 1. Enter 1 if there are white lines at the sides of the road. Default: 1.
* **ClasificarLineaBlanca**: 0 or 1. With 1, MDTopX classifies the white line points. Default: 1.
* **IntensidadAbsoluta**: 0 or 1. Enter 1 if the intensity value is absolute and 0 if it is relative. Default: 1.
* **IntensidadMin**: minimum intensity value a point must have to belong to a road marking. Default: 50000.
* **AjustarLineaBlanca**: 0 or 1. With 1, MDTopX adjusts the white line. Default: 0.
* **UsarColor**: 0 or 1. With 1, MDTopX uses the color of the points to identify the white line. Default: 0.

### Point classes

Each key is the LiDAR class number, from 0 to 255, that MDTopX assigns to the classified points.

* **TipoAsfalto**: asphalt points. Default: 35.
* **TipoOtroAsfalto**: other asphalt points. Default: 39.
* **TipoLineaBlanca**: white line points. Default: 36.
* **TipoLineaBlancaSup**: surface white line points (other horizontal paint). Default: 37.
* **TipoBordillos**: curb points. Default: 38.
* **TipoAceras**: sidewalk points. Default: 40.

### Drawing file codes

Each key is the code that MDTopX assigns to the entities of that type in the drawing file.

* **CodEjeTrazado**: axis. Default: EJE.
* **CodPlataforma**: asphalt boundary. Default: PLAT.
* **CodOtroAsfalto**: other asphalt boundary. Default: OTRO.
* **CodLineaBlancaLineal**: white line sections. Default: LB_L.
* **CodLineaBlancaSup**: other horizontal paint. Default: LB_S.
* **CodBordillos**: curb boundaries. Default: BORDI.
* **CodAceras**: sidewalk boundaries. Default: ACERA.

### Graphic editing keys

MDTopX also reads the keys **SuperficieMin** (default 1), **ToleranciaCota** (0.02), **PuntosNoClasificados** (0), **PuntosObjeto** (0) and **PuntosRuido** (0). The code documents them as parameters of the graphic editing of the asphalt boundary, so they are not described here.

```ini
[Asfalto]
DistanciaMax = 0.1
SzTraza = C:\Trabajo\eje.bin
TipoCarretera = 3
BuscarAsfalto = 1
BuscarLineaBlanca = 1
HayLBCentral = 1
HayLBLateral = 1
IntensidadAbsoluta = 1
IntensidadMin = 50000
TipoAsfalto = 35
TipoLineaBlanca = 36
CodPlataforma = PLAT
CodEjeTrazado = EJE
```

Section and key names are case-insensitive.

See also:

* [Introduction to the command line](./)
* [Classify alignment ground](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-suelo-de-trazado.md)
* [Find road lines](/mdtopx/desde-linea-de-comando/linea-de-comando-buscar-lineas-de-vial.md)
