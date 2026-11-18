# Find rail lines
<!-- id: linea-de-comando-buscar-lineas-de-rail -->
<!-- origen: 7e98921809f51b78e9b189dc809ea32b429495d9 -->

[Find rail lines](/mdtopx/modulo-mms/ffcc/buscar-lineas-de-rail.md)

The **/LINEASRAIL** command calculates the rail, other rail, tunnel, platform, wall and sleeper lines of a railway (FFCC), together with the axis and the cross profiles, from the points of an MMS (Mobile Mapping System, vehicle-based recording) point cloud that are already classified as rails, and saves them in a drawing file. It performs the same operation as the **Rail lines** button in the **Train path** panel of the MMS tab, but it does not show the dialog box: it reads the options from the **\[Railes]** section of the MDTopX.ini file.

Run [/SUELOFFCC](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-suelo-de-ffcc.md) and [/RAILES](/mdtopx/desde-linea-de-comando/linea-de-comando-buscar-railes.md) on the same point cloud first. **/LINEASRAIL** selects the points by their LiDAR class (the **TipoRailes** and **TipoOtrosRailes** keys and the others in the *Point classes* section).

To run this tool from the command line, enter:

```bash
MDTopX [archivo de entrada] /LINEASRAIL [formato de salida]
```

Enter the input file before the command.

## Files

* **Input file**: a point cloud (for example, LAS or LAZ) or an MDTopX project that contains point clouds.
* **Output format**: optional. It is one of the words **DXF** (AutoCAD), **DGN** (MicroStation) or **SHP** (Shape), case-insensitive. MDTopX does not interpret the argument as a file name. With any other value, or if you enter no argument, MDTopX saves the drawing files in BIN (DIGI) format. If you enter several arguments after the command, MDTopX uses the last one.

The command produces these files:

1. **Input file**: MDTopX saves the input file.
2. **Railways of cloud.ext**: drawing file with the lines it calculates. The name is the text "Raíles de " followed by the input file name without extension, with the extension of the output format. MDTopX creates the file in the folder of the input file; with a project, in the folder of the project file and with the project title instead of the cloud name. The text "Raíles de " depends on the MDTopX language: in English it is "Railways of ". The [/RAILES](/mdtopx/desde-linea-de-comando/linea-de-comando-buscar-railes.md) command uses the same prefix, so it gives the same file name for the same input file and the same format. Move or rename the file that **/RAILES** creates before you run **/LINEASRAIL**.
3. **ASCII cross profile file**: if **Transversales** is 1, MDTopX writes a text file with the cross profiles. Its name is the value of **FicheroTransv**. If **FicheroTransv** does not include a folder, MDTopX creates it in the folder of the input file. MDTopX writes this file even if the computer does not have the MMS module license.
4. **Profiles of cloud.ext**: drawing file with the longitudinal profile of the axis. MDTopX creates it only if **DibujoLongitudinal** is 1 and cross profiles are active. The text "Perfiles de " in Spanish is "Profiles of " in English.
5. **Cross sections of cloud.ext**: drawing file with the cross profiles. MDTopX creates it only if **DibujoTransversales** is 1 and cross profiles are active. MDTopX gives the name without a folder, so the operating system creates the file in the MDTopX working directory. The text "Transversales de " in Spanish is "Cross sections of " in English.

For example, with the cloud `via.las` and the **DXF** format, MDTopX creates `Railways of via.dxf` when MDTopX runs in English and `Raíles de via.dxf` when it runs in Spanish.

## License

MDTopX ends without running the command if it does not find the MDTopX license. With that license, MDTopX calculates the result. Saving the files requires licenses:

* **License for the [MMS module](/mdtopx/modulo-mms/)**: required to save the input file, the **Railways of** file and the **Profiles of** file. Without it, MDTopX closes the documents without saving and does not create those files.
* **MDTopX license**: required to create the **Cross sections of** file.

## Configuration in MDTopX.ini

To configure the calculation, MDTopX.ini must contain the **\[Railes]** line followed by the keys below. If a key is not in MDTopX.ini or its value is empty, MDTopX uses the value saved in the user configuration and, if none has been saved, the default value given here. MDTopX reads at most 255 characters of each value.

### General parameters

* **DistanciaMax**: maximum distance, in meters, between points. Default: 0.1.
* **DistanciaMaxEnElTunel**: maximum distance, in meters, between points inside the tunnel, in 3D. Beyond this distance, the gap between two points can be an opening in the tunnel. Default: 4.
* **SzTraza**: full path of an optional file that contains the track trajectory. It can be a road file or a drawing file (BIN, DXF, DGN or Shape). Default: empty.
* **TrazaInputConCota**: 0 or 1. Enter 1 if the trace in **SzTraza** has a valid elevation. Default: 0.
* **XPkInicio**, **YPkInicio**: X and Y coordinates of the axis point where chainage (PK, kilometer point) numbering starts. MDTopX applies them only if both are different from 0. Default: 0.
* **PkInicio**: PK of the point given by **XPkInicio** and **YPkInicio**. Default: 0.

### What to calculate

* **Railes**: 0 or 1. With 1, MDTopX calculates the rail lines. Default: 1.
* **OtrosRailes**: 0 or 1. With 1, MDTopX calculates the lines of other rails the vehicle did not pass along. Default: 1.
* **Tunel**: 0 or 1. With 1, MDTopX calculates the tunnel lines. Default: 1.
* **Andes**: 0 or 1. With 1, MDTopX calculates the platform lines. The name of the key MDTopX reads is **Andes**, not "Andenes". Default: 1.
* **Pared**: 0 or 1. With 1, MDTopX calculates the wall lines. Default: 1.
* **Traviesas**: 0 or 1. With 1, MDTopX calculates the sleepers. Default: 1.
* **EjeRailes**: 0 or 1. With 1, MDTopX calculates the axis of each rail. With a point cloud as the input file, MDTopX replaces the value with 0 and calculates the axis from the rails; with a project as the input file, MDTopX respects the value of the key. Default: 1.
* **EjeTrazado**: 0 or 1. With 1, MDTopX calculates the alignment axis. Default: 1.

### Cross profiles and profiles

* **Transversales**: 0 or 1. With 1, MDTopX calculates the cross profiles and writes the ASCII cross profile file. Default: 1.
* **DistanciaTransv**: distance, in meters, between cross profiles. Default: 10.
* **FicheroTransv**: name of the ASCII cross profile file. Default: Transversales.asc.
* **SacarTextosTransv**: 0 or 1. With 1, MDTopX writes the cross profile texts in the drawing. With an input file that is not a project, MDTopX writes the texts even if the key is 0. Default: 1.
* **CodTextosTransv**: code of the cross profile texts. Default: TEXTOS.
* **AlturaTextosTransv**: height of the cross profile texts. Default: 1.
* **DibujoLongitudinal**: 0 or 1. With 1, MDTopX creates the file with the longitudinal profile. Default: 0.
* **DibujoTransversales**: 0 or 1. With 1, MDTopX creates the file with the cross profiles. Default: 0.

### Point classes

Each key is the LiDAR class number, from 0 to 255, of the points MDTopX uses.

* **TipoRailes**: rail points. Default: 92.
* **TipoOtrosRailes**: other rail points. Default: 93.
* **TipoTunel**: tunnel points. Default: 102.
* **TipoPared**: wall points. Default: 120.
* **TipoAndenes**: platform points. Default: 130.
* **TipoTraviesas**: sleeper points. Default: 90.

### Drawing file codes

Each key is the code that MDTopX assigns to the entities of that type.

* **CodRailes**: rail lines. Default: RAILES.
* **CodEjeRailes**: rail axis. Default: EJERailes.
* **CodEjeTrazado**: alignment axis. Default: EjeTrazado.
* **CodLimiteA**: boundary A, ballast top. Default: LIM_A.
* **CodLimiteB**: boundary B, ballast toe. Default: LIM_B.
* **CodLimiteC**: boundary C, start of the slope. Default: LIM_C.
* **CodSuelo**: lines that represent the ground. Default: SUELO.
* **CodTecho**: ceiling. Default: TECHO.
* **CodAndenes**: platforms. Default: ANDEN.
* **CodPared**: walls. Default: MURO.
* **CodTraviesas**: sleepers. Default: TRAVIESA.

### Profile and geometry keys

The **\[Railes]** section contains the same families of prefixed keys as the **\[LineaBlanca]** section: `Perfiles_*`, `Guitarra_*`, `Transversal_*` and `Geometria_*`. Their names, default values and meanings are described on the [/LINEASVIAL](/mdtopx/desde-linea-de-comando/linea-de-comando-buscar-lineas-de-vial.md) page and are not repeated here. With **/LINEASRAIL**, MDTopX replaces these values before drawing the profiles:

* `Perfiles_HayRasante` with 0.
* `Perfiles_CodigoOtros` with the value of **CodTecho** and `Perfiles_CodigoObjetos` with the value of **CodRailes**.
* `Guitarra_CotaRasante`, `Guitarra_CotaRojaDesmonte`, `Guitarra_CotaRojaTerraplen`, `Guitarra_Peraltes` and `Guitarra_Perfiles` with 0, and `Guitarra_Galibo` with 1.

```ini
[Railes]
DistanciaMax = 0.1
Railes = 1
OtrosRailes = 1
Tunel = 1
Andes = 1
Pared = 1
Traviesas = 1
EjeTrazado = 1
Transversales = 1
DistanciaTransv = 10
FicheroTransv = Transversales.asc
DibujoLongitudinal = 0
DibujoTransversales = 0
TipoRailes = 92
CodRailes = RAILES
```

Section and key names are case-insensitive.

See also:

* [Introduction to the command line](./)
* [Find rails](/mdtopx/desde-linea-de-comando/linea-de-comando-buscar-railes.md)
* [Find road lines](/mdtopx/desde-linea-de-comando/linea-de-comando-buscar-lineas-de-vial.md)
