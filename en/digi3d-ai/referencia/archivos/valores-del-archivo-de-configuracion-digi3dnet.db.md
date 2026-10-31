# Digi3DNET.db configuration file values
<!-- id: valores-del-archivo-de-configuracion-digi3dnet.db -->
<!-- origen: 95efac301f6c5be98dbcc69f93acd7ae4bb13c69 -->

This page lists values in the [Digi3DNET.db configuration file](archivo-de-configuracion-digi3dnet.db.md) that have no option page: those that can only be changed with SQL and those written by dialogs other than **Configuration**, **Configure projects**, and **Configuration of input devices**. Values are grouped by folder (the `Path` column in the `Keys` table) and modified with the [Advanced configuration](../cuadros-de-dialogo/configuracion-avanzada.md) dialog.

Values for options in the [Configuration](../cuadros-de-dialogo/configuracion/README.md) dialog are on each option page, in **Where it is stored**, with SQL statements to change them. Values for [Configure projects](../cuadros-de-dialogo/configurar-proyectos.md) and [Configuration of input devices](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md) are in **Where it is stored** on those two pages.

Per-user configuration is not in this database: Digi3D.AI saves it in the _Windows_ registry, in **HKEY\_CURRENT\_USER**. Each option page also specifies the registry key and value.

## Reading the tables

* **Value**: contents of the `Value` column. A name between `<` and `>` indicates a pattern: Digi3D.AI constructs the name at runtime, and the description explains how.
* **Table**: database table storing the value: `Ints` (integer), `Texts` (text), or `Doubles` (floating-point). Digi3D.AI does not use the `Blobs` table.
* **Default**: value Digi3D.AI uses if the value has no row and the _Windows_ registry contains no value in **HKEY\_LOCAL\_MACHINE**. For boolean values, 1 means enabled and 0 means disabled. Text defaults that depend on the language are shown in Spanish.
* **Where it is changed**: dialog that writes the value. **SQL only** means no dialog writes it: Digi3D.AI only reads it, and changing it requires the [Advanced configuration](../cuadros-de-dialogo/configuracion-avanzada.md) dialog or another SQLite tool.

Digi3D.AI creates a value row the first time it reads it. If the value is absent from the database, it copies it from **HKEY\_LOCAL\_MACHINE\SOFTWARE\Digi21\Digi3D.NET** or, if absent there too, saves the default value. Floating-point values (`Doubles`) are the exception: when reading them, they are only copied if present in **HKEY\_LOCAL\_MACHINE**; otherwise, Digi3D.AI uses the default without saving it. A dialog that writes a floating-point value always saves it.

## Root folder

Values saved in the root folder. In the `Keys` table, its `Path` is the empty string.

| Value | Table | Default | What it does | Where it is changed |
| :--- | :--- | :--- | :--- | :--- |
| `KeyID` | `Texts` | (empty) | Identifier (KeyID) of the dongle selected in the Select dongle dialog. | **Select dongle** dialog |

## `App\Configuration\Scroll`

Photogrammetric window configuration.

| Value | Table | Default | What it does | Where it is changed |
| :--- | :--- | :--- | :--- | :--- |
| `<clave índice>` | `Texts` | (empty) | Read by PointCloud and stereoscopic orthophoto windows to load cursor mark images. `<clave índice>` is one of the names `RutaIndicePequeño`, `RutaIndiceMediano`, `RutaIndiceGrande`, `RutaIndiceAspa`, `RutaIndiceCruz`, or `RutaIndicePersonalizado` in this same folder. | SQL only |
| `3` | `Ints` | 0 | After fast model switching, 1 makes the drawing window process an orientation change; 0 makes it rotate and redraw its view according to the model. | SQL only |
| `NumeroTriangulosHorizontalPorTesela` | `Ints` | 4 | Number of subdivisions per side of each image tile when the image is drawn transformed (projected). Must be 1 or greater. | SQL only |

## `App\Configuration`

General application configuration.

| Value | Table | Default | What it does | Where it is changed |
| :--- | :--- | :--- | :--- | :--- |
| `<proveedor>ApiKey` | `Texts` | (empty) | AI assistant provider API key, encrypted with machine-scope DPAPI and encoded in base64. `<proveedor>` is `Claude`, `OpenAI`, `AzureOpenAI`, `Kimi`, `OpenRouter`, `LMStudio`, `Ollama`, or `Generico`. | Provider configuration in the **AI assistant** pane |
| `DirectorioInstalacion` | `Texts` | (empty) | Digi3D.AI installation folder. Importers and exporters are loaded from it. | SQL only (the installer writes the initial value) |
| `EpsgCrsKitSqlite` | `Texts` | `C:\ProgramData\Digi3D.NET\OpenGis\epsg-fiel.sqlite` | Path of the EPSG database used by the reference system library. | SQL only (the installer writes the initial value) |
| `InstallDirDebugUnicode` | `Texts` | (empty) | Installation folder used by debug builds. Not used by the installed version. | SQL only |
| `InterseccionPuntoRectaNuevo` | `Ints` | 1 | If 1, projecting a point onto a line uses the algorithm optimized for 3D. | SQL only. The Configuration dialog does not display the option, but clicking **Accept** saves the value it read again. |
| `MonitorizarFirstChanceExceptions` | `Ints` | 0 | If 1, Digi3D.AI logs .NET first-chance exceptions at startup. Used for diagnostics. | SQL only |
| `OpenGisFiles` | `Texts` | (empty) | Reference system library data folder (grids and auxiliary files). | SQL only (the installer writes the initial value) |
| `SegundosVigilanteCierre` | `Ints` | 120 | Seconds Digi3D.AI waits for its threads to finish on closing before generating a diagnostic dump. 0 or a negative value disables monitoring. | SQL only |
| `XsltDigiTab` | `Texts` | (empty) | XSLT stylesheet included by Digi3D.AI when saving a code table in XML. | SQL only (the installer writes the initial value) |
| `XsltKeyboard` | `Texts` | (empty) | XSLT stylesheet included by Digi3D.AI when saving a keyboard file in XML. | SQL only (the installer writes the initial value) |

## `App\Languages`

Display names of installed languages.

| Value | Table | Default | What it does | Where it is changed |
| :--- | :--- | :--- | :--- | :--- |
| `<idioma>` | `Texts` | (empty) | Display name of each installed language. Digi3D.AI enumerates language names in the Windows registry and reads their text from this folder. | SQL only (the installer writes the initial value) |

## `CurrentVersion`

Folder created by a legacy Windows version check.

| Value | Table | Default | What it does | Where it is changed |
| :--- | :--- | :--- | :--- | :--- |
| `CurrentVersion` | `Ints` | 1 | Legacy value from a Windows version check. Determines whether some task dialogs use the native Windows control. | SQL only |

## `Digi3D\Extensiones\<extensión>\<idioma>`

`<extensión>` is the name of a Digi3D command extension, and `<idioma>` is a language code such as `es-ES`. The installer writes these values.

| Value | Table | Default | What it does | Where it is changed |
| :--- | :--- | :--- | :--- | :--- |
| `<orden>` | `Texts` | (empty) | Identifier (GUID) of a command from a Digi3D extension, indexed by the command name in each language. | SQL only (the installer writes the initial value) |

## `Digi3D\Extensiones\Digi3D.ConicSensor\Extensiones\<extensión>`

`<extensión>` is the name of each conical sensor extension registered by the installer in **HKEY\_LOCAL\_MACHINE**.

| Value | Table | Default | What it does | Where it is changed |
| :--- | :--- | :--- | :--- | :--- |
| `Activated` | `Ints` | 0 | If 1, Digi3D.AI loads that conical sensor extension at startup (camera and orientation importers). | SQL only (the installer writes the initial value) |

## `Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA`

| Value | Table | Default | What it does | Where it is changed |
| :--- | :--- | :--- | :--- | :--- |
| `PrecisionAltimetricaPuntosPaso` | `Doubles` | 0.5 | Altimetric accuracy of tie points in RPCBA adjustment. | SQL only |
| `PrecisionPlanimetricaPuntosPaso` | `Doubles` | 0.1 | Planimetric accuracy of tie points in RPCBA adjustment. | SQL only |

## `Digi3D\Extensiones`

Photogrammetric window command extensions.

| Value | Table | Default | What it does | Where it is changed |
| :--- | :--- | :--- | :--- | :--- |
| `<extensión>` | `Texts` | (empty) | Description of each Digi3D command extension. Only appears in the error message if the extension fails to load. | SQL only (the installer writes the initial value) |

## `Digi3D\IO\TarjDigi3D\<dispositivo>`

`<dispositivo>` is the name of the configured input device (generic serial card, ISA, DPW USB, etc.). Other parameters of each device are on the [Configuration of input devices](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md) page.

| Value | Table | Default | What it does | Where it is changed |
| :--- | :--- | :--- | :--- | :--- |
| `<variable>` | `Texts` | button number | Key number in the key configuration file associated with each generic serial device button. `<variable>` ranges from `Boton1` to `Boton32`. | SQL only |

## `Digi3D\IO\TarjDigi3D\SEC-232m`

| Value | Table | Default | What it does | Where it is changed |
| :--- | :--- | :--- | :--- | :--- |
| `BombardeoCodificadores` | `Ints` | 1 | Milliseconds between device encoder readings. | SQL only |

## `Digi3D\IO\TarjDigi3D\UdpIp`

| Value | Table | Default | What it does | Where it is changed |
| :--- | :--- | :--- | :--- | :--- |
| `BombardeoCodificadores` | `Ints` | 1 | Milliseconds between device encoder readings. | SQL only |

## `Digi3D\IO\TarjDigi3D`

Common input device configuration.

| Value | Table | Default | What it does | Where it is changed |
| :--- | :--- | :--- | :--- | :--- |
| `PuertoSerieCodificadores` | `Ints` | 1 | Common serial port used by the SEC-232m card if its folder has none of its own. | SQL only |

## `Digi3D\Raster`

Raster format extensions.

| Value | Table | Default | What it does | Where it is changed |
| :--- | :--- | :--- | :--- | :--- |
| `<extensión>` | `Texts` | (empty) | Description of each raster format extension. Only appears in the error message if the extension fails to load. | SQL only (the installer writes the initial value) |

## `Digi3D`

| Value | Table | Default | What it does | Where it is changed |
| :--- | :--- | :--- | :--- | :--- |
| `MilisegundosOnTimer` | `Ints` | 0 | Interval, in milliseconds, of the timer reading encoders while the photogrammetric window is open. 0 uses the Windows minimum. | SQL only |

## `DigiNG\Configuration\Projects\<proyecto>\`

`<proyecto>` is the name of a drawing file project created with [Configure projects](../cuadros-de-dialogo/configurar-proyectos.md). The path ends in `\`. Digi3D.AI enumerates projects by searching `Keys` for paths starting with `DigiNG\Configuration\Projects\`, and deleting a project deletes its folder, subfolders, and all its values.

| Value | Table | Default | What it does | Where it is changed |
| :--- | :--- | :--- | :--- | :--- |
| `Digi21::DigiTab::DigiTab` | `Texts` | (empty) | Old name of the `DigiTab` value. Digi3D.AI reads it if `DigiTab` is empty. | SQL only |

## `DigiNG\Configuration`

General drawing window configuration.

| Value | Table | Default | What it does | Where it is changed |
| :--- | :--- | :--- | :--- | :--- |
| `NumeroMaximoEntidadesOctree` | `Ints` | 1000 | Entity count at which a drawing window spatial index node is subdivided. Read at startup. | SQL only |
| `TamanoMinimoTileOctree` | `Ints` | 512 | Minimum drawing window spatial index node size. Read at startup. | SQL only |
| `UtilizarParametrosImportacionExportacionPreconfigurados` | `Ints` | 0 | If 1, Digi3D.AI does not display the import or export parameter dialog after choosing a drawing file and uses the format stored parameters. | SQL only |

## `DigiNG\Extensiones\<extensión>`

`<extensión>` is the name of each drawing window command extension registered by the installer in **HKEY\_LOCAL\_MACHINE**.

| Value | Table | Default | What it does | Where it is changed |
| :--- | :--- | :--- | :--- | :--- |
| `Activated` | `Ints` | 0 | If 1, Digi3D.AI loads that drawing window command extension at startup. | SQL only (the installer writes the initial value) |

## `DigiNG\Extensiones`

Drawing window command extensions. Each value name is an extension name.

| Value | Table | Default | What it does | Where it is changed |
| :--- | :--- | :--- | :--- | :--- |
| `<extensión>` | `Ints` | 1 | Load order of each drawing window command extension. The first extension is always loaded first. | SQL only |

## `DigiNG\IO\<formato>`

`<formato>` is the name of each importer and exporter registered by the installer in **HKEY\_LOCAL\_MACHINE**, for example `Digi21.Io.DGN`, `Digi21.Io.SHP`, or `Digi21.Io.BinDouble`. Preserve registry capitalization: it does not always match that of the `DigiNG\IO\...` folders for each importer options.

| Value | Table | Default | What it does | Where it is changed |
| :--- | :--- | :--- | :--- | :--- |
| `Activated` | `Ints` | 0 | If 1, Digi3D.AI loads the importer and exporter for that format at startup. | SQL only (the installer writes the initial value) |
| `Order` | `Ints` | 2 | Format position in format lists, from lowest to highest. The first is the one suggested by save dialogs. | SQL only (the installer writes the initial value) |
| `WinSxS` | `Ints` | 0 | If 1, the importer is loaded as a WinSxS assembly. Does not affect debug builds. | SQL only (the installer writes the initial value) |

## `DigiNG\IO\Digi21.Io.FileGDB`

| Value | Table | Default | What it does | Where it is changed |
| :--- | :--- | :--- | :--- | :--- |
| `PreguntarPorCapasACargar` | `Ints` | 1 | If 1, opening a FileGDB asks which layers to load. | SQL only |

## `DigiNG\IO\Digi21.Io.Shp`

| Value | Table | Default | What it does | Where it is changed |
| :--- | :--- | :--- | :--- | :--- |
| `ConsiderarMultiPoligonosComoPoligonos` | `Ints` | 0 | If 1, a 3D polygon (PolygonZ) with several outer rings is loaded as a single polygon whose additional outer rings become holes. | SQL only |
