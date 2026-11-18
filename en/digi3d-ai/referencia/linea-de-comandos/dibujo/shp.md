# shp
<!-- id: shp-2 -->
<!-- origen: 60bb3547e5edc5b698621d4e91029c3eb3b2d3f6 -->

The shp subcommand specifies that the _shapefiles_ of the specified directory open in the drawing window.

## Required positional options

| Name | Description |
| --- | --- |
| path | Directory containing the _shapefiles_ to load. |

With the Spanish interface, this positional option is called `ruta`.

## Options

Specifying an option overrides its default value.

| Option with the English interface | Option with the Spanish interface | Description | Accepted values |
| --- | --- | --- | --- |
| --decimals | --decimales | Decimal precision for export | 0 = do not round exported coordinates.<br>1 = round to 1 decimal place<br>...<br>12 = round to 12 decimal places (maximum).<br>A value outside 0-12 is a command-line error.<br>Defaults to 0 if omitted. |
| --encoding | --codificacion | Character encoding for text fields in .DBF files. | Defaults to 255.<br>See the encoding list at [http://shapelib.maptools.org/codepage.html](http://shapelib.maptools.org/codepage.html) |
| --askLayers | --preguntarCapasCargar | If you specify this option, the program shows a dialog box for you to select the layers to load. | |
| --loadROI | --cargarRegionInteres | Loads the region of interest (beta feature). | |

## Example

Open every _.shp_ file in c:\trabajo with the codes table c:\trabajo\tabla.tab.xml:

```powershell
digi3d.exe dibujo --tabla c:\trabajo\tabla.tab.xml shp c:\trabajo
```
