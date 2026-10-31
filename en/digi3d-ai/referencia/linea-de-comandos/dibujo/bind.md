# bind
<!-- id: bind -->
<!-- origen: 74737db5921137fda4daf527d9d8406ff9b1c94f -->

The bind subcommand specifies that the drawing file to open is double-precision binary (extension .bind).

## Required positional options

| Name | Description |
| --- | --- |
| ruta | Path to the .bin file to open |

## Options&#x20;

Specifying an option overrides its default value.

| Option | Description | Accepted values |
| --- | --- | --- |
| --mdat | Data model.<br>Required when --cconexion is specified | CATDBS<br>GEOGRAPHICS |
| --cconexion | Connection string | Connection string for the database provider to use. |
| --obviarArchivosReferencia | Skips any reference files linked to the .BIND file being loaded. | |

## Example

Open double-precision binary drawing file c:\trabajo\archivo.bind with codes table c:\trabajo\tabla.tab.xml, connecting to an Access .accdb database with the same name as the drawing file and the CATDBS data model:

```powershell
digi3d.exe dibujo --tabla c:\trabajo\tabla.tab.xml bind c:\trabajo\archivo.bind --mdat CATDBS --cconexion "Provider=Microsoft.ACE.OLEDB.16.0;Data Source=$(ArchivoDibujoConRutaSinExtension).accdb;Persist Security Info=False"
```
