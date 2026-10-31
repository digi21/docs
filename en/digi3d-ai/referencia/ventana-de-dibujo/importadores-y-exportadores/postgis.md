# PostGIS connection files
<!-- id: postgis -->
<!-- origen: abf39a239f652edc907cb7875ea1c4fec8a16738 -->

Importer and exporter for **PostGIS connection files**.

## Parameters

You can pass the following parameters to the importer/exporter from the command line with [IMPORTATION_PARAMETERS](../ordenes/p/parametros-importacion.md).

For example:

```
IMPORTATION_PARAMETERS=.pg <Servidor> <Puerto> <Usuario> <Contraseña> <BaseDeDatos>
```

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Server | No |
| 2 | Port | No |
| 3 | User | No |
| 4 | Password | No |
| 5 | Database | No |

## Import/export engine parameters

These properties appear in the **Import/export engine** category of the [Drawing file](../../cuadros-de-dialogo/nuevo-proyecto/archivo-de-dibujo.md) tab in the New project dialog and in dialogs that open, import or export files in this format. Engine property values are saved in the `.pg` file itself, which contains the connection: if the file already exists, initial property values are read from it; otherwise, the values from the last use of this format are used.

| Property | Values | What it does |
| :--- | :--- | :--- |
| Server | Text. Default: `localhost`. | Database server name or address. |
| Port | Integer. Default: 5432. | Server connection port. |
| User | Text. | User used to connect to the server. |
| Password | Hidden text. | User password. Saved unencrypted in the `.pg` file and the user configuration. |
| Database | Text. | Server database to connect to. |
| Read only the geometries that have the following values | Table of field/value pairs. **...** opens [Replacers](../../cuadros-de-dialogo/sustituidores.md) to edit it. | Only geometries whose fields have these values are read. When saving entities, these fields take the specified value. |

The properties appear both when creating a `.pg` file and when opening an existing one.

### Opening the file

If [Ask for layers to load](../../cuadros-de-dialogo/configuracion/conector-con-postgis/preguntar-por-capas-a-cargar.md) is enabled in the Configuration dialog (the default), Digi3D.AI displays [Tables selection](../../cuadros-de-dialogo/seleccion-de-tablas.md) with database tables containing geometries, grouped by schema. Cancelling loads no tables. If the option is disabled, all tables containing geometries are loaded.

### Coordinate reference system

The reference system is that of the EPSG code of the first table loaded. Digi3D.AI does not request it.

### Configuration options

The Configuration dialog has more options for this format in [PostGIS connector](../../cuadros-de-dialogo/configuracion/conector-con-postgis/README.md).

## Importer/exporter characteristics

| | |
| :--- | :--- |
| Extensions | `.pg` |
| Import ([IMPORT](../ordenes/i/importar.md) command) | Yes |
| Export ([EXPORT](../ordenes/e/exportar.md) command) | Yes |
| A drawing window can be opened with this format | Yes |
