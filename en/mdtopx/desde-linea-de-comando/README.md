# From the command line
<!-- id: desde-linea-de-comando -->
<!-- origen: cc484aed7eedc6919323ce489577eac22e972ce3 -->

MDTopX runs from the command line with parameters configuring the calculation. MDTopX calculation tools require the MDTopX.ini configuration file, an ASCII file with the configuration options. MDTopX looks for MDTopX.ini in the input file folder; if you specify the input file without a path, MDTopX looks for MDTopX.ini in the current working directory.

When you run a command from the command line, MDTopX keeps the main window minimized or hidden, runs the command and ends the process. If the command ends before MDTopX shows the window (because required arguments are missing or the license is not valid), the window is never shown. While a command calculates, MDTopX shows the progress dialog box, the same one the interface shows. The `/REF` and `/DEM` commands are the exception: they open the input file in the MDTopX interface, with the window at its normal size, and the process keeps running until the user closes MDTopX.

If you write on the command line only the name of a file that MDTopX can open, without any tool, MDTopX starts and opens that file.

## Input file and command arguments

These rules apply to all the commands on this page except `/activar-equipo` and `/servidor-licencias`, which are described in their own section.

* MDTopX takes as the input file the first argument that does not start with "/" or "-" and that no command consumes as its own. The input file can come before the command or after the command and its arguments: `MDTopX entrada.mdt /CUR curvas.dxf` and `MDTopX /CUR curvas.dxf entrada.mdt` give the same result.
* Each command consumes the arguments that the table below lists, which must come immediately after the command and in the order of the table. If a command has an optional argument and you enter the input file right after it, MDTopX takes the file as that argument and the command line is left without an input file. With the commands that have an optional argument (`/SUA`, `/TRANSFORM`, `/ASFALTO`, `/RAILES`, `/LINEASVIAL` and `/LINEASRAIL`), enter the input file before the command.
* MDTopX ignores the arguments left over after it completes those of the command when the line already has an input file. For example, a second file entered after `/COM` has no effect.
* An argument that starts with "/" or "-" and is not an MDTopX command (for example, `/p`, `/pt`, `/dde`, `/Embedding` or `/Register`) is not taken as the input file.

| Command | Arguments it consumes | If missing |
| --- | --- | --- |
| `/TRI`, `/CUR`, `/SOM`, `/HIP`, `/PEN`, `/ORI`, `/PER`, `/CUB`, `/REJ`, `/TRICUR`, `/TRIREJ`, `/EXPORT`, `/ACOPIOS` | One: the output file. | Error. |
| `/PRO` | Up to two: the output file and the file to project. | Error if both are missing. |
| `/LADO` | One: the maximum edge length in meters, greater than 0. | Error. |
| `/DEM` | One: a file name. | Error. |
| `/RUP` | One: the output file. | Error. |
| `/ORIENTARNUBEARCHIVO` | One: the orientation file. | Error. |
| `/SUA`, `/TRANSFORM` | One, optional: the output file. | MDTopX saves the result in the input file. |
| `/ASFALTO`, `/RAILES`, `/LINEASVIAL`, `/LINEASRAIL` | One, optional: the format of the drawing file (`DXF`, `DGN` or `SHP`). | MDTopX saves the drawing file in BIN (DIGI) format. |
| `/REF` | All the arguments that follow it, as a list of reference files. | None: MDTopX only opens the input file. The input file must come before the command. |
| The command that adds digital terrain models | All the arguments that follow it, as a list of files to merge into the input file. | Error if you enter none. The input file must come before the command. |
| `/ORTOFOTO` | One: a file name. The command is not available. | None. |
| `/COM`, `/TRICOM`, `/MAGIC`, `/SUELOVIAL`, `/SUELOFFCC`, `/FILTRADO`, `/ORIENTARNUBE` | None. | None. |

## Commands without their required arguments

If an argument that the table marks as an error is missing, MDTopX writes to the MDTopX.LOG file the message "La orden /ORDEN tiene argumentos obligatorios ausentes o no válidos. MDTopX termina sin procesar el archivo." (with MDTopX in English, "The /ORDEN command has missing or invalid required arguments. MDTopX ends without processing the file.") and ends without opening any file.

## Wildcards in the input file

With a command from this page, the input file name can contain the wildcards `*` (any number of characters) and `?` (one character). With no command, MDTopX does not replace the wildcards.

* MDTopX searches the folder of the pattern for the files whose name matches the pattern and skips folders. If the pattern has no path, it searches the current working directory.
* MDTopX processes the first file that the search returns. The search order is the one the file system returns.
* MDTopX looks for MDTopX.ini and creates MDTopX.LOG in the folder of the pattern, which is the folder of the files found.
* With `/REF`, MDTopX loads the other files found as reference files, in addition to those you enter after `/REF`.
* With any other command, MDTopX processes only the first file. For each of the other files found, MDTopX writes to MDTopX.LOG the line "Archivo del comodín no procesado: \<path\>" with the path of the file; MDTopX writes this line in Spanish in every interface language.

## Warnings and errors: the MDTopX.LOG file

With any command except `/REF` and `/DEM`, MDTopX shows no warning or error message boxes. It writes the warnings and the errors to the MDTopX.LOG file, together with the progress of the calculation. This includes the license warnings at startup (end of technical support, end of the rental period and protection key not found), the file read and save errors and the messages of each command. MDTopX also does not show the new version notice.

* MDTopX creates MDTopX.LOG in the folder of the input file, next to MDTopX.ini; if the input file has no path, it creates it in the working directory. If MDTopX.LOG already exists, MDTopX appends the messages to it. When command execution starts, MDTopX writes the date, the command, the input file and the output file.
* If MDTopX cannot create MDTopX.LOG (for example, because it cannot write to the folder), it writes each message to the standard error output of the process, if the process has one (for example, redirected with `2>`), or, if it does not, to the console of the process that started MDTopX. If neither exists, MDTopX does not write the message.
* The ASCII import and export option dialog boxes (.shp, .kml and point cloud) are not shown. For ASCII import, MDTopX uses the columns, separators and initial lines saved in its configuration if they fit the first lines of the file and, if they do not fit, it detects the format automatically. For export, it uses the values that the dialog boxes would show. MDTopX.LOG records the UTM zone and hemisphere that MDTopX uses when it saves a .kml file, and that lines are not saved when a drawing with lines is saved as LAS, LAZ or PTS.

## Exit codes

With an MDTopX command from this page, the `MDTopX.exe` process ends with an exit code that depends on the errors and warnings that MDTopX records while it runs the command. If MDTopX can create MDTopX.LOG, it writes each error and each warning to that file (section "Warnings and errors: the MDTopX.LOG file"). The `/activar-equipo` and `/servidor-licencias` commands have their own exit codes, described on their pages.

| Code | Meaning | Cases |
| --- | --- | --- |
| 0 | MDTopX has recorded no error and no warning. | The command ended without MDTopX recording any errors or warnings. |
| 1 | MDTopX has recorded at least one error. | Required arguments are missing. The license is not valid. MDTopX cannot open the input file, including a wildcard pattern with no match. The command is `/ORTOFOTO`. There is a read, write or calculation error. The command that adds digital terrain models has merged no file. The command does not match the type of the input file (for example, `/TRI` on an MDT file). MDTopX fails to start before the command begins. |
| 2 | MDTopX has recorded at least one warning and no error. | The command that adds digital terrain models has merged some file and has not merged another. `/REF` could not load some reference. |

* If MDTopX has recorded errors and warnings, the code is 1.
* Informational messages do not change the code. Neither do the startup license warnings (end of technical support and end of the rental period), because MDTopX writes them before it starts running the command.
* With `/REF` and `/DEM`, MDTopX sets the code when the command ends, before the user works with the interface, and the process returns that code when the main window is closed.
* The code 0 means that MDTopX has recorded no error and no warning; it does not guarantee that the command saved a result. Check MDTopX.LOG to confirm the result.

MDTopX is a windowed application, so you must wait for the process to end to read its exit code. In a batch file, `start /wait` waits for the process and stores its exit code in `errorlevel`. `if errorlevel N` is true when the code is N or greater, so the check for code 2 goes before the check for code 1:

```bat
start /wait "" "C:\Path\to\install\MDTopX.exe" "C:\data\entrada.dxf" /TRI "C:\data\salida.mdt"
if errorlevel 2 (
    echo MDTopX ended with warnings. See C:\data\MDTopX.LOG.
    goto :end
)
if errorlevel 1 (
    echo MDTopX ended with errors. See C:\data\MDTopX.LOG.
    exit /b 1
)
echo MDTopX ended without recording any errors or warnings.
:end
```

In PowerShell, `Start-Process` with `-Wait -PassThru` returns an object whose `ExitCode` property holds the exit code:

```powershell
$process = Start-Process -FilePath 'C:\Path\to\install\MDTopX.exe' -ArgumentList 'C:\data\entrada.dxf', '/TRI', 'C:\data\salida.mdt' -Wait -PassThru
switch ($process.ExitCode) {
    0 { 'MDTopX ended without recording any errors or warnings.' }
    2 { 'MDTopX ended with warnings. See C:\data\MDTopX.LOG.' }
    default { throw "MDTopX ended with code $($process.ExitCode). See C:\data\MDTopX.LOG." }
}
```

Replace `C:\Path\to\install\MDTopX.exe` with the absolute path of `MDTopX.exe`.

## License

The `/ACOPIOS`, `/FILTRADO`, `/ORIENTARNUBE` and `/ORIENTARNUBEARCHIVO` commands work without the MDTopX license: MDTopX does not check it at startup or before saving the result in the input file, and it shows no license warnings. The page of each command states the license that MDTopX requires to save the file. With the other commands, if MDTopX does not find the MDTopX license, it writes "Licencia no válida" (in English, "Invalid license") to MDTopX.LOG (with `/REF` and `/DEM`, it shows it in a message box) and ends without running the command. Saving the result of some commands also requires another license module.

## Names of the result files

MDTopX does not overwrite the results whose name it builds. These results are the drawing files of the `/ASFALTO`, `/RAILES`, `/LINEASVIAL` and `/LINEASRAIL` commands (for example, "Asfalto de ", "Marcas viales de ", "Raíles de " and "Perfiles de " followed by the name of the input file or of the project, without extension) and the alignment file with the VIA extension. MDTopX checks the name with its extension. If `Raíles de via.dxf` already exists, MDTopX writes `Raíles de via (2).dxf`; if that also exists, it writes `Raíles de via (3).dxf`, and so on.

* The output files whose name you enter on the command line (for example, the one of `/CUR`) are written with that name.
* If MDTopX does not recognize the format of the file with which it saves a drawing, it saves the drawing in DIGI format in `<name without extension>.BIN`, or in `<name without extension> (2).BIN` if the first exists, and writes to MDTopX.LOG the original path and the path it used.

## MDTopX.ini and the user configuration

With a command that has no interface, MDTopX reads MDTopX.ini only for that run. When it ends, it does not save to the user configuration the values read from MDTopX.ini or the export options, so the interface later opens with the same values it had before the command ran. The command pages that mention "the value saved in the user configuration" refer to the value that the user accepted in the interface dialog box.

MDTopX only reads MDTopX.ini: no command on this page creates, writes or modifies MDTopX.ini. The keys that MDTopX.ini does not contain keep the values of the user configuration.

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

These tools also read the MDTopX.ini file. Without the MDTopX license, MDTopX runs only `/ACOPIOS`, `/FILTRADO`, `/ORIENTARNUBE` and `/ORIENTARNUBEARCHIVO`; the other tools end without running (see [License](#license)). Saving the result of some tools requires another license module; each page says so.

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
* [Orient a point cloud with an orientation file](/mdtopx/desde-linea-de-comando/linea-de-comando-orientar-nube-contra-nube.md#orient-with-an-orientation-file): applies the transformation stored in an orientation file to a point cloud and saves the modified cloud in the input file (`/ORIENTARNUBEARCHIVO`).

## Other commands

`/LADO` has its own page; the other commands in this list are described here.

* [Delete triangles by edge length](/mdtopx/desde-linea-de-comando/linea-de-comando-borrar-triangulos-por-longitud-de-lado.md): deletes the triangles of a digital model that have any edge longer than a given length and saves the model in the same file (`/LADO`).
* `/SUA`: smooths a grid digital model (DEM file) with the [Smoothing](/mdtopx/modulo-virtualand/suavizado.md) tool and saves the smoothed DEM in the output file or, if you enter none, in the input file. To configure the smoothing, add to MDTopX.ini the **\[SuavizadoDEM]** section, with the keys **Ferguson**, **BSpline** and **Rupturas** (0 or 1; default: 0) and **Suavizado** (smoothing level, from 1 to 10; default: 10). These keys correspond to the fields of the Smoothing dialog box. If a key does not exist, MDTopX uses the value saved in the user configuration.
* `/REF`: opens the input file in the interface and loads as reference files the files you enter after the command. MDTopX loads the files specified after `/REF` with the [Load reference files](/mdtopx/operaciones-con-archivos/abrir-archivos-de-referencia.md) function. If the input file contains wildcards, MDTopX also loads as references the other files whose names match the pattern, after those you enter after the command. After trying to load all the files, MDTopX shows a message box for each file it could not load, with the text "MDTopX no puede cargar el archivo de referencia \<path\>." (with MDTopX in English, "MDTopX cannot load the reference file \<path\>."). Enter the input file before the command, because `/REF` takes all the arguments that follow it as the list of files.
* `/DEM`: opens the input file in the interface. The command requires an argument; MDTopX records it as the output file in MDTopX.LOG, but it does not write any file with that name.
* `/ORTOFOTO`: is not available from the command line. MDTopX writes to MDTopX.LOG the message "La orden /ORTOFOTO no se puede ejecutar desde la línea de comando. MDTopX termina sin procesar el archivo." (with MDTopX in English, "The /ORTOFOTO command cannot be run from the command line. MDTopX ends without processing the file.") and ends without opening any file.

## Software license commands

These commands do not read the MDTopX.ini file and run no calculation tool. They show no windows, do not open the MDTopX interface and end the `MDTopX.exe` process with an exit code that indicates the result. They are written with a leading slash and are not case-sensitive:

* [Activate computer](/mdtopx/desde-linea-de-comando/linea-de-comando-activar-equipo.md): activates the computer, for all Windows users, with an activation code (`/activar-equipo <code>`).
* [License server](/mdtopx/desde-linea-de-comando/linea-de-comando-servidor-licencias.md): saves or deletes the address of the local license server (`/servidor-licencias <address>` or `/servidor-licencias /quitar`).
