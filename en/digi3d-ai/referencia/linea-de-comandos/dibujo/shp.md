# shp
<!-- id: shp-2 -->
<!-- origen: 08be7d1cd940225e247823bae17b36bab23b4ab4 -->

The shp subcommand opens the specified directory's _shapefiles_ in the drawing window.

## Required positional options

| Name | Description |
| --- | --- |
| ruta | Directory containing the _shapefiles_ to load. |

## Options&#x20;

Specifying an option overrides its default value.

| Option | Description | Accepted values |
| --- | --- | --- |
| --decimales | Decimal precision for export | 0 = do not round exported coordinates.<br>1 = round to 1 decimal place<br>...<br>12 = round to 12 decimal places (maximum).<br>A value outside 0–12 is a command-line error.<br>Defaults to 0 if omitted. |
| --codificación | Character encoding for text fields in .DBF files. | Defaults to 255.<br>See the encoding list at [http://shapelib.maptools.org/codepage.html](http://shapelib.maptools.org/codepage.html) |
| --preguntarCapasCargar | Opens a dialog to select the layers to load. | |

## Example

Open every _.shp_ file in c:\trabajo with codes table c:\trabajo\tabla.tab.xml:

```powershell
digi3d.exe dibujo --tabla c:\trabajo\tabla.tab.xml shp c:\trabajo
```
