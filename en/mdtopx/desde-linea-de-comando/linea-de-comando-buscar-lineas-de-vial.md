# Find road lines
<!-- id: linea-de-comando-buscar-lineas-de-vial -->
<!-- origen: 686da3543d09283e712fe5792da65559a5ea6327 -->

[Find road lines](/mdtopx/modulo-mms/trazado/buscar-lineas-de-vial/)

The **/LINEASVIAL** command calculates the asphalt boundaries, white lines, axes, lanes and cross profiles of a road from the points of an MMS (Mobile Mapping System, vehicle-based recording) point cloud that are already classified as asphalt, road markings and curbs, and saves them in a drawing file. It performs the same operation as the **Road lines** button in the **Car path** panel of the MMS tab, but it does not show the dialog box: it reads the options from the **\[LineaBlanca]** section of the MDTopX.ini file.

Run [/SUELOVIAL](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-suelo-de-trazado.md) and [/ASFALTO](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-lineas-de-vial.md) on the same point cloud first. **/LINEASVIAL** selects the points by their LiDAR class (the **TipoAsfalto** and **TipoLineaBlanca** keys and the others in the *Point classes* section).

To run this tool from the command line, enter:

```bash
MDTopX [archivo de entrada] /LINEASVIAL [formato de salida]
```

Enter the input file before the command.

## Files

* **Input file**: a point cloud (for example, LAS or LAZ) or an MDTopX project that contains point clouds.
* **Output format**: optional. It is one of the words **DXF** (AutoCAD), **DGN** (MicroStation) or **SHP** (Shape), case-insensitive. MDTopX does not interpret the argument as a file name. With any other value, or if you enter no argument, MDTopX saves the drawing files in BIN (DIGI) format. If you enter several arguments after the command, MDTopX uses the last one.

The command produces these files:

1. **Input file**: MDTopX saves the input file.
2. **Road markings of cloud.ext**: drawing file with the boundaries, axes, lanes and other elements it calculates. The name is the text "Marcas viales de " followed by the input file name without extension, with the extension of the output format. MDTopX creates the file in the folder of the input file; with a project, in the folder of the project file and with the project title instead of the cloud name. The text "Marcas viales de " depends on the MDTopX language: in English it is "Road markings of ".
3. **ASCII cross profile file**: if **Transversales** is 1, MDTopX writes a text file with the cross profiles. Its name is the value of **FicheroTransv**. If **FicheroTransv** does not include a folder, MDTopX creates it in the folder of the input file. MDTopX writes this file even if the computer does not have the MMS module license.
4. **Profiles of cloud.ext**: drawing file with the longitudinal profile of the asphalt axis. MDTopX creates it only if **DibujoLongitudinal** is 1 and cross profiles are active. The text "Perfiles de " in Spanish is "Profiles of " in English.
5. **Cross sections of cloud.ext**: drawing file with the cross profiles. MDTopX creates it only if **DibujoTransversales** is 1 and cross profiles are active. MDTopX gives the name without a folder, so the operating system creates the file in the MDTopX working directory. The text "Transversales de " in Spanish is "Cross sections of " in English.

For example, with the cloud `carretera.las` and the **DXF** format, MDTopX creates `Road markings of carretera.dxf` when MDTopX runs in English and `Marcas viales de carretera.dxf` when it runs in Spanish.

## License

MDTopX ends without running the command if it does not find the MDTopX license. With that license, MDTopX calculates the result. Saving the files requires licenses:

* **License for the [MMS module](/mdtopx/modulo-mms/)**: required to save the input file, the **Road markings of** file and the **Profiles of** file. Without it, MDTopX closes the documents without saving and does not create those files.
* **MDTopX license**: required to create the **Cross sections of** file.

## Configuration in MDTopX.ini

To configure the calculation, MDTopX.ini must contain the **\[LineaBlanca]** line followed by the keys below. If a key is not in MDTopX.ini or its value is empty, MDTopX uses the value saved in the user configuration and, if none has been saved, the default value given here. MDTopX reads at most 255 characters of each value.

### General parameters

* **DistanciaMax**: maximum distance, in meters, between points to calculate the asphalt. To calculate the white lines, MDTopX uses half of this value. Default: 0.1.
* **DistanciaMaxLineaBlanca**: maximum distance, in meters, between white line or axis sections for them to be joined as a lane. If no lanes or axes are calculated, MDTopX does not use it. Default: 20.
* **SzTraza**: full path of an optional file that contains the road trajectory. It can be a road file or a drawing file (BIN, DXF, DGN or Shape). Default: empty.
* **TipoTrazaInput**: content of the drawing file given in **SzTraza**. 0 (the file contains the axis) or 1 (the file contains the two outer white lines, one on each side). Default: 0.
* **TrazaInputConCota**: 0 or 1. Enter 1 if the trace in **SzTraza** has a valid elevation. Default: 0.
* **XPkInicio**, **YPkInicio**: X and Y coordinates of the axis point where chainage (PK, kilometer point) numbering starts. MDTopX applies them only if both are different from 0. Default: 0.
* **PkInicio**: PK of the point given by **XPkInicio** and **YPkInicio**. Default: 0.
* **AjustarEjeAsfalto**: 0 or 1. With 1, MDTopX adjusts the asphalt axis. Default: 1.

### What to calculate

* **Asfalto**: 0 or 1. With 1, MDTopX calculates the asphalt boundary. Default: 1.
* **OtroAsfalto**: 0 or 1. With 1, MDTopX calculates the boundary of another type of asphalt, for example affected services. Default: 0.
* **LineaBlanca**: 0 or 1. With 1, MDTopX calculates the white line boundaries. Default: 1.
* **LineaBlancaSup**: 0 or 1. With 1, MDTopX calculates the surface white line boundaries. Default: 0.
* **Bordillos**: 0 or 1. With 1, MDTopX calculates the curbs. Default: 1.
* **EjeAsfalto**: 0 or 1. With 1, MDTopX calculates the asphalt axis. Default: 1.
* **EjeLineaBlanca**: 0 or 1. With 1, MDTopX calculates the white line axes. Default: 1.
* **Carriles**: 0 or 1. With 1, MDTopX calculates the lanes. Default: 1.
* **Discontinuas**: 0 or 1. With 1, MDTopX searches for dashed lines. Default: 1.
* **Transversales**: 0 or 1. With 1, MDTopX calculates the cross profiles. Default: 1.

MDTopX corrects incompatible combinations before calculating:

* If **Asfalto** is 0, MDTopX applies **EjeAsfalto** = 0.
* If **LineaBlanca** is 0, MDTopX applies **EjeLineaBlanca** = 0 and **Carriles** = 0.
* If **EjeAsfalto** is 0 (from the key or from the previous rule), MDTopX applies **Carriles** = 0 and **Transversales** = 0.
* If **Carriles** is 1, MDTopX applies **Transversales** = 1.

### Cross profiles and profiles

* **DistanciaTransv**: distance, in meters, between cross profiles. Default: 10.
* **FicheroTransv**: name of the ASCII cross profile file. Default: Transversales.asc.
* **SacarTextosTransv**: 0 or 1. With 1, MDTopX writes the cross profile texts in the drawing. With an input file that is not a project, MDTopX writes the texts even if the key is 0. Default: 1.
* **CodTextosTransv**: code of the cross profile texts. Default: TEXTOS.
* **AlturaTextosTransv**: height of the cross profile texts. Default: 1.
* **DibujoLongitudinal**: 0 or 1. With 1, MDTopX creates the file with the longitudinal profile. Default: 0.
* **DibujoTransversales**: 0 or 1. With 1, MDTopX creates the file with the cross profiles. Default: 0.

### Point classes

Each key is the LiDAR class number, from 0 to 255, of the points MDTopX uses. If the value is 0, MDTopX uses the default value of the key.

* **TipoAsfalto**: asphalt points. Default: 35.
* **TipoOtroAsfalto**: other asphalt points. Default: 39.
* **TipoLineaBlanca**: white line points. Default: 36.
* **TipoLineaBlancaSup**: surface white line points. Default: 37.
* **TipoBordillos**: curb points. Default: 38.

### Drawing file codes

Each key is the code that MDTopX assigns to the entities of that type.

* **CodAsfalto**: asphalt boundary. Default: ASFALTO.
* **CodOtroAsfalto**: other asphalt boundary. Default: OTROAS.
* **CodLineaBlanca**: white line boundary. Default: LB.
* **CodLineaBlancaSup**: surface white line boundary. Default: LBSUP.
* **CodEjeAsfalto**: asphalt axis. Default: EJEASFALTO.
* **CodEjeLineaBlanca**: white line axis. Default: EJELB.
* **CodCarriles**: lane line. Default: CARRIL.
* **CodCarrilesDis**: dashed lane line. Default: CARDIS.
* **CodSuelo**: ground in the cross profiles. Default: SUELO.
* **CodTecho**: ceiling in the cross profiles. Default: TECHO.
* **CodBordilloArriba**: upper curb line. Default: BOR_AR.
* **CodBordilloAbajo**: lower curb line. Default: BOR_AB.

### Profile and geometry keys

The **\[LineaBlanca]** section also contains three families of keys written with a prefix. The [/LINEASRAIL](/mdtopx/desde-linea-de-comando/linea-de-comando-buscar-lineas-de-rail.md) and **/LINEASVIAL** commands share these families; the **/LINEASRAIL** page refers to this list.

* **Perfiles\_\***: profile configuration, with the same names and meanings as the keys of the **\[Perfiles]** section described in [Profiles](/mdtopx/desde-linea-de-comando/linea-de-comando-perfiles.md), written with the `Perfiles_` prefix. For example, `Perfiles_Traza`, `Perfiles_CodigoRasante`, `Perfiles_CodigoTerreno`, `Perfiles_EscalaHorizontal` (default 1000), `Perfiles_EscalaVertical` (default 500), `Perfiles_HayGuitarra` and `Perfiles_HayLongitudinal`. MDTopX reads `Perfiles_HayRasante`, but it replaces it with 0 before calculating.
* **Guitarra\_\***: configuration of the profile data band, with the same names and meanings as the `Guitarra_*` keys on the [Profiles](/mdtopx/desde-linea-de-comando/linea-de-comando-perfiles.md) page. They are written without the `Perfiles_` prefix; for example, `Guitarra_Altura`. When drawing the profiles, MDTopX replaces `Guitarra_CotaRasante`, `Guitarra_CotaRojaDesmonte` and `Guitarra_CotaRojaTerraplen` with 0.
* **Transversal\_\***: configuration of the cross profiles, with the same names and meanings as the `Transversal_*` keys on the [Profiles](/mdtopx/desde-linea-de-comando/linea-de-comando-perfiles.md) page. They are written without the `Perfiles_` prefix; for example, `Transversal_AnchoIzq`. When **DibujoTransversales** is 1, `Transversal_HayAlzado` (default 1) and `Transversal_FicAlzado` (default `Transver.asc`) determine whether MDTopX writes the ASCII elevation file and what it is named; MDTopX writes it only with the MMS module license and, if the name does not include a folder, in the folder of the input file.
* **Geometria\_\***: configuration of the axis geometry calculation (alignments and curves). Keys: `Geometria_TolGeneralizacion` (default 0.05), `Geometria_TolAjuste` (default 0.30), `Geometria_RadioMin` (minimum radius, in meters, to avoid points that are too close; default 50), `Geometria_RadioMax` (maximum radius, in meters, for the points to be considered a straight line; default 5000), `Geometria_SzFile` (default `salida.txt`) and `Geometria_BFile` (default 1).

```ini
[LineaBlanca]
DistanciaMax = 0.1
SzTraza = C:\Trabajo\eje.bin
TipoTrazaInput = 0
Asfalto = 1
LineaBlanca = 1
EjeAsfalto = 1
Carriles = 1
Transversales = 1
DistanciaTransv = 10
FicheroTransv = Transversales.asc
DibujoLongitudinal = 0
DibujoTransversales = 0
TipoAsfalto = 35
TipoLineaBlanca = 36
Perfiles_EscalaHorizontal = 1000
Perfiles_EscalaVertical = 500
```

Section and key names are case-insensitive.

See also:

* [Introduction to the command line](./)
* [Classify road lines](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-lineas-de-vial.md)
* [Profiles](/mdtopx/desde-linea-de-comando/linea-de-comando-perfiles.md)
