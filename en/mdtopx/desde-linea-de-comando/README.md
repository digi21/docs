# From the command line
<!-- id: desde-linea-de-comando -->
<!-- origen: fba6e15c03b847948c41e4a096ce02201bf3804f -->

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

## Software license commands

These commands do not read the MDTopX.ini file and run no calculation tool. They show no windows, do not open the MDTopX interface and end the `MDTopX.exe` process with an exit code that indicates the result. They are written with a leading slash and are not case-sensitive:

* [Activate computer](/mdtopx/desde-linea-de-comando/linea-de-comando-activar-equipo.md): activates the computer, for all Windows users, with an activation code (`/activar-equipo <code>`).
* [License server](/mdtopx/desde-linea-de-comando/linea-de-comando-servidor-licencias.md): saves or deletes the address of the local license server (`/servidor-licencias <address>` or `/servidor-licencias /quitar`).
