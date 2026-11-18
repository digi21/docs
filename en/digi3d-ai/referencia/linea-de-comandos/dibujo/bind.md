# bind
<!-- id: bind -->
<!-- origen: d7a0ed326a2305bef025e896e75469609f2a98c8 -->

The bind subcommand specifies that the drawing file to open is double-precision binary (extension .bind).

## Required positional options

| Name | Description |
| --- | --- |
| path | Path to the .bind file to open |

With the Spanish interface, this positional option is called `ruta`.

## Options

Specifying an option overrides its default value.

| Option with the English interface | Option with the Spanish interface | Description | Accepted values |
| --- | --- | --- | --- |
| --datamodel | --mdat | Data model.<br>Required if you specify the connection string option (`--connstring` or `--cconexion`) | CATDBS<br>GEOGRAPHICS |
| --connstring | --cconexion | Connection string | Connection string for the database provider to use. |
| --avoidrf | --obviarArchivosReferencia | If specified, the reference files linked to the .BIND file being loaded are not loaded. | |

## Example

Open the double-precision binary drawing file c:\trabajo\archivo.bind with the codes table c:\trabajo\tabla.tab.xml, connecting to an Access .accdb database with the same name as the drawing file and the CATDBS data model, with the English interface:

```powershell
digi3d.exe dibujo --tabla c:\trabajo\tabla.tab.xml bind c:\trabajo\archivo.bind --datamodel CATDBS --connstring "Provider=Microsoft.ACE.OLEDB.16.0;Data Source=$(ArchivoDibujoConRutaSinExtension).accdb;Persist Security Info=False"
```
