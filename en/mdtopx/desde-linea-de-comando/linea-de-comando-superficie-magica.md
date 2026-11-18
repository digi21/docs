# Magic Surface
<!-- id: linea-de-comando-superficie-magica -->
<!-- origen: 160ecebf07f50b355cc1b7a1aab3f209c097c89f -->

[Magic Surface](/mdtopx/modulo-laser/buscar-puntos/superficie-magica/)

This tool automatically classifies the points of a LiDAR (light detection and ranging) point cloud: ground, vegetation, buildings and the other classes described in the interface page. To run it from the command line, enter:

```bash
MDTopX [input file] /MAGIC
```

## Files

The tool has no output file. MDTopX takes the first string on the command line that is not an option (an option starts with `/` or `-`) as the input file; that string can come before or after `/MAGIC`.

* **Point cloud file**: MDTopX classifies the points of the cloud and saves the result in the same file. If the cloud has objects, MDTopX saves them in the file with the OBJ extension next to the cloud.
* **Project**: MDTopX classifies the point cloud files of the project one by one and saves each classified file. When it classifies a file, MDTopX also uses the points of the neighboring files that are near its edge and does not save those points in the file. MDTopX saves each cloud's objects in an OBJ file in the same folder as the point cloud file.

Make a copy of the input files if you need to keep the original classification.

## License

The tool requires the MDTopX module license to start. To save the classification, it also requires the Laser module license. Without the Laser module license, MDTopX calculates the classification but does not save any file.

## Configuration

MDTopX reads the **\[LineaVuelo]** section of the MDTopX.ini file. Other MDTopX point cloud tools use the same section. If a key is not in the section, MDTopX uses the value saved in the user configuration, which is the last value accepted in the dialog box of the [Magic Surface](/mdtopx/modulo-laser/buscar-puntos/superficie-magica/) tool. If that value was never saved, MDTopX uses the default value shown for each key.

MDTopX does not check the values it reads from MDTopX.ini. The dialog box requires **DistanciaMax**, **ToleranciaCota** and **AlturaVegBaja** to be greater than 0.

The units of length, height and elevation are meters, and the area is measured in square meters.

Classification parameters:

* **DistanciaMax**: maximum distance between two points for them to be neighbors. Default value: 3.
* **AlturaAereos**: minimum elevation difference from the surroundings for a point to be airborne. 0 disables the check. Default value: 50.
* **AlturaEdificacion**: minimum elevation difference from the surroundings for a point to be a building. 0 disables the check. Default value: 4.
* **AlturaVegMaxima**: maximum elevation difference from the surroundings for a point to be vegetation. Default value: 15.
* **AlturaVegAlta**: minimum elevation difference from the surroundings for a point to be high vegetation. Default value: 3.
* **AlturaVegMedia**: minimum elevation difference from the surroundings for a point to be medium vegetation. Default value: 2.
* **AlturaVegBaja**: minimum elevation difference from the surroundings for a point to be low vegetation. Default value: 1.
* **ToleranciaCota**: precision of the point elevation. Default value: 0.2.
* **NivelBusqueda**: point search level, an integer. The lower the value, the more exhaustive the search. The dialog box limits the value to an integer between 1 and 100. Default value: 1.
* **Suavizar**: 1 smooths the profiles of the cloud before classifying; 0 does not smooth them. Default value: 0.
* **OrdenarAuto**: 1 sorts the points by the GPS time of each point before classifying; 0 does not sort them. Default value: 0.
* **UtilizarIntensidad**: 1 uses the intensity of each point in the classification; 0 does not use it. Default value: 0.
* **IntensidadMax**: maximum intensity, between 0 and 255, that a point can have to be vegetation. It is used only with **UtilizarIntensidad** = 1. Default value: 100.
* **AreaMinEdificio**: minimum area, in square meters, of a zone to be a building. Default value: 30.
* **PendienteMax**: maximum slope, in degrees, of the surface of a building. Default value: 30.
* **DesnivelMaxEdificio**: maximum elevation difference between the points on the boundary of a building. Default value: 0.5.
* **EsTerrestre**: 1 if the survey is terrestrial; 0 if it is aerial. Default value: 0.
* **UtilizarIR**: 1 uses the infrared value of the points, which must have false color with the infrared-red-blue triplet; 0 does not use it. Default value: 0.
* **SensibilidadIR**: sensitivity of the NDVI (normalized difference vegetation index), between 0 (small difference) and 10 (large difference). It is used only with **UtilizarIR** = 1. Default value: 5.
* **EsLiDAR**: 1 if the cloud comes from laser measurements; 0 if it comes from photogrammetric multi-image matching. With a file, MDTopX deduces the value from the cloud itself and does not use this key: the cloud is LiDAR if any point has GPS time or intensity, and photogrammetric if no point has either and some point has color. MDTopX uses the key if the cloud has no GPS time, intensity or color, and always when the input is a project. Default value: 1.
* **ConservarClases**: 1 keeps the class of the points that already have a class other than 0 and 1 (unclassified); 0 classifies the whole cloud again. Default value: 1.
* **TolAlineacion**: alignment tolerance. The dialog box has no field for it. Default value: 0.3.

MDTopX also reads the **InfoDetalle** and **Vectorial** keys, but the command line does not apply them. In the interface, **Vectorial** controls the creation of the drawing with the building vectors when the tool finishes; the command line does not create that drawing.

Classes (LAS classification codes, integers between 0 and 255) that MDTopX assigns to each type of point:

* **TipoHundidos**: points far below their surroundings. Default value: 7.
* **TipoPared**: facades. Default value: 91.
* **TipoAereo**: points far above their surroundings. Default value: 18.
* **TipoOtros**: points that are not ground, vegetation or buildings. Default value: 80.
* **TipoPuentes**: bridge decks and footbridges. Default value: 17.
* **TipoCalzada**: streets and roads. Default value: 11.
* **TipoVehiculo**: vehicles. Default value: 82.
* **TipoCables**: conductors and ground wires of power lines. Default value: 14.
* **TipoApoyos**: towers and poles of power lines. Default value: 15.
* **RevisionClases**: revision number of the classes. MDTopX reads **TipoPared**, **TipoAereo**, **TipoOtros**, **TipoCalzada** and **TipoVehiculo** from MDTopX.ini only if the section contains **RevisionClases** with the value 1 or greater. If the key is missing, MDTopX keeps the value from the user configuration for those five keys. Write `RevisionClases = 1` so that MDTopX reads those codes. If the key is not in the section, MDTopX interprets it as 0.
* **AlturaHundidos**: height associated with the class of the sunken points. With the default MDTopX configuration, the classification does not use it. Default value: -3.

The classes of unclassified points (1), ground (2), low vegetation (3), medium vegetation (4), high vegetation (5) and buildings (6) have no key in MDTopX.ini.

```ini
[LineaVuelo]
DistanciaMax = 3
AlturaEdificacion = 4
AlturaVegBaja = 1
ToleranciaCota = 0.2
EsTerrestre = 0
ConservarClases = 1
RevisionClases = 1
TipoPared = 91
```

Key names are case-insensitive.

See also:

* [Introduction to the command line](./)
