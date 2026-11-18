# From the command line
<!-- id: desde-linea-de-comando -->
<!-- origen: 37095eb501d32e4b65fd0711c9930e975c005d2d -->

MDTopX runs from the command line with parameters configuring the calculation. MDTopX calculation tools require the MDTopX.ini configuration file, an ASCII file with the configuration options. MDTopX looks for MDTopX.ini in the input file folder; if you specify the input file without a path, MDTopX looks for MDTopX.ini in the current working directory.

When running a calculation tool from the command line, MDTopX opens its window minimized.

If you write on the command line only the name of a file that MDTopX can open, without any tool, MDTopX starts and opens that file.

## Calculation tools

These tools read the MDTopX.ini file:

* [Triangulation](/mdtopx/desde-linea-de-comando/linea-de-comando-triangulacion.md)
* [Contouring](/mdtopx/desde-linea-de-comando/linea-de-comando-curvado.md)
* [Profiles](/mdtopx/desde-linea-de-comando/linea-de-comando-perfiles.md)
* [Volume calculation](/mdtopx/desde-linea-de-comando/linea-de-comando-cubicacion.md)
* [Check DTM](/mdtopx/desde-linea-de-comando/linea-de-comando-comprobar-mdt.md)
* [Project onto a DTM](/mdtopx/desde-linea-de-comando/linea-de-comando-proyectar-sobre-mdt.md)
* [Grid](/mdtopx/desde-linea-de-comando/linea-de-comando-rejilla.md)
* [Shading](/mdtopx/desde-linea-de-comando/linea-de-comando-sombreado.md)
* [Hypsometric tint map](/mdtopx/desde-linea-de-comando/linea-de-comando-mapa-de-tintas-hipsometricas.md)
* [Export digital terrain models](/mdtopx/desde-linea-de-comando/linea-de-comando-exportar-modelos-digitales-del-terreno.md)
* [Add digital terrain models](/mdtopx/operaciones-con-archivos/agregar-modelos-digitales-del-terreno.md)

## Combined tools and digital model maps

These tools also read the MDTopX.ini file:

* [Triangulation and contouring](/mdtopx/desde-linea-de-comando/linea-de-comando-triangulacion-y-curvado.md): triangulates a drawing file and calculates the contours in a single run, without saving the triangulation (`/TRICUR`).
* [Triangulation and grid](/mdtopx/desde-linea-de-comando/linea-de-comando-triangulacion-y-rejilla.md): triangulates a drawing file and generates the grid in a single run, without saving the triangulation (`/TRIREJ`).
* [Triangulation and DTM check](/mdtopx/desde-linea-de-comando/linea-de-comando-triangulacion-y-comprobar-mdt.md): triangulates a drawing file and checks its altimetry; it saves only the error file (`/TRICOM`).
* [Slope map](/mdtopx/desde-linea-de-comando/linea-de-comando-mapa-de-pendientes.md): calculates the slope map of a digital model and saves it as a TIF, BMP or JPEG image (`/PEN`).
* [Aspect map](/mdtopx/desde-linea-de-comando/linea-de-comando-mapa-de-orientaciones.md): calculates the aspect map of a digital model and saves it as a TIF, BMP or JPEG image (`/ORI`).
* [Extract breaklines](/mdtopx/desde-linea-de-comando/linea-de-comando-extraer-lineas-de-ruptura.md): extracts the thalwegs, ridges and points of interest of a smoothed DEM and saves them in a BIN file (`/RUP`; saving requires the VirtuaLand module).

## Point cloud tools

These tools also read the MDTopX.ini file. Without the MDTopX license key, MDTopX runs only /ACOPIOS, /FILTRADO and /ORIENTARNUBE; the other tools end without running. Saving the result of some tools requires another license module; each page says so.

* [Coordinate transformation](/mdtopx/desde-linea-de-comando/linea-de-comando-transformacion.md): transforms the coordinates of a drawing file, a point cloud or a TIN (`/TRANSFORM`).
* [Magic Surface](/mdtopx/desde-linea-de-comando/linea-de-comando-superficie-magica.md): automatically classifies the points of a LiDAR point cloud (`/MAGIC`).
* [Classify alignment ground](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-suelo-de-trazado.md): classifies an MMS road point cloud into ground and non-ground (`/SUELOVIAL`).
* [Classify railway ground](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-suelo-de-ffcc.md): classifies an MMS railway point cloud into ground and non-ground (`/SUELOFFCC`).
* [Classify road lines](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-lineas-de-vial.md): classifies asphalt, road markings, curbs and sidewalks of an MMS road point cloud and generates its drawing file (`/ASFALTO`).
* [Find road lines](/mdtopx/desde-linea-de-comando/linea-de-comando-buscar-lineas-de-vial.md): calculates the asphalt boundaries, white lines, axes, lanes and cross sections of a road (`/LINEASVIAL`).
* [Find rails](/mdtopx/desde-linea-de-comando/linea-de-comando-buscar-railes.md): classifies the rail points of an MMS point cloud and generates the drawing of their boundaries and axis (`/RAILES`).
* [Find rail lines](/mdtopx/desde-linea-de-comando/linea-de-comando-buscar-lineas-de-rail.md): calculates the rail, tunnel, platform, wall and sleeper lines of a railway, with its axis and cross sections (`/LINEASRAIL`).
* [Filter points](/mdtopx/desde-linea-de-comando/linea-de-comando-filtrar-puntos.md): reduces the density of a point cloud with a configurable grid step and saves the result in the same file (`/FILTRADO`).
* [Stockpile volume calculation](/mdtopx/desde-linea-de-comando/linea-de-comando-acopios.md): classifies an indoor point cloud of a warehouse and calculates the volume of its stockpiles, by zone or for the whole cloud (`/ACOPIOS`).
* [Orient a point cloud against another point cloud](/mdtopx/desde-linea-de-comando/linea-de-comando-orientar-nube-contra-nube.md): orients a disoriented point cloud against the point cloud of a theoretical model and saves the transformation in a text file (`/ORIENTARNUBE`).
## Software license commands

These commands do not read the MDTopX.ini file and run no calculation tool. They show no windows, do not open the MDTopX interface and end the `MDTopX.exe` process with an exit code that indicates the result. They are written with a leading slash and are not case-sensitive:

* [Activate computer](/mdtopx/desde-linea-de-comando/linea-de-comando-activar-equipo.md): activates the computer, for all Windows users, with an activation code (`/activar-equipo <code>`).
* [License server](/mdtopx/desde-linea-de-comando/linea-de-comando-servidor-licencias.md): saves or deletes the address of the local license server (`/servidor-licencias <address>` or `/servidor-licencias /quitar`).
