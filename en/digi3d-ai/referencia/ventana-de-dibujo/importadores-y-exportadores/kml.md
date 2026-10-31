# Google Earth KML files
<!-- id: kml -->
<!-- origen: 442d556354f2b7013d1fb3edf889f29daaa9bf3e -->

Importer and exporter for **Google Earth KML files**.

## Parameters

You can pass the following parameters to the importer/exporter from the command line with [IMPORTATION_PARAMETERS](../ordenes/p/parametros-importacion.md).

For example:

```
IMPORTATION_PARAMETERS=.kml <Titulo> <Descripcion>
```

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Title | No |
| 2 | Description | No |

## Import/export engine parameters

These properties appear in the **Import/export engine** category of the [Drawing file](../../cuadros-de-dialogo/nuevo-proyecto/archivo-de-dibujo.md) tab in the New project dialog and in dialogs that open, import or export files in this format. Initial values are those used the last time the format was used.

| Property | Values | What it does |
| :--- | :--- | :--- |
| Title | Text. Empty by default. | Document title displayed in Google Earth. Written when the file is created. |
| Description | Text. Empty by default. | Description below the title in Google Earth. Written when the file is created. |

The properties appear both when creating a file and when opening an existing one, but only apply when creating or exporting: opening an existing file does not change its title or description. Digi3D.AI saves property values in the user configuration.

### Coordinate reference system

Digi3D.AI does not request the reference system: files in this format always use WGS 84 geographic coordinates with heights above the EGM96 geoid.

### Configuration options

The Configuration dialog has more options for this format in [Google Earth file importer/exporter](../../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-de-google-earth/README.md).

## Importer/exporter characteristics

| | |
| :--- | :--- |
| Extensions | `.kml` |
| Import ([IMPORT](../ordenes/i/importar.md) command) | Yes |
| Export ([EXPORT](../ordenes/e/exportar.md) command) | Yes |
| A drawing window can be opened with this format | Yes |
