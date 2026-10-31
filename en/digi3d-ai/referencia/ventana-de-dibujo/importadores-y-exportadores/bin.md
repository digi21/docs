# Digi files
<!-- id: bin -->
<!-- origen: ee4f68be5847b4e056a5fdad866ffd51f86089a7 -->

Importer and exporter for **Digi files**.

## Parameters

You can pass the following parameters to the importer/exporter from the command line with [IMPORTATION_PARAMETERS](../ordenes/p/parametros-importacion.md).

For example:

```
IMPORTATION_PARAMETERS=.bin <Precision> <OrigenGlobal.x> <OrigenGlobal.y> <OrigenGlobal.z>
```

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Precision | No |
| 2 | Global origin X | No |
| 3 | Global origin Y | No |
| 4 | Global origin Z | No |

## Import/export engine parameters

These properties appear in the **Import/export engine** category of the [Drawing file](../../cuadros-de-dialogo/nuevo-proyecto/archivo-de-dibujo.md) tab in the New project dialog and in dialogs that open, import or export files in this format. Initial values are those used the last time the format was used.

| Property | Values | What it does |
| :--- | :--- | :--- |
| Accuracy decimals | Integer. Default: 2. | Number of decimal places used to save coordinates and text heights. The file stores coordinates as integers multiplied by 10 raised to this value. |
| Global origin X, Y and Z | Real numbers. Default: 0. | Origin added to each coordinate when reading the file and subtracted when writing it. |

The three properties appear both when creating a file and when opening an existing one. Digi3D.AI saves their values in the user configuration.

### Coordinate reference system

The reference system is saved in a `.prj` file with the same name as the drawing file. If that file does not exist (for example, when creating a new file), Digi3D.AI displays **Select the reference coordinate system to be assigned to the file** and creates the `.prj` with the selected system. If the file is opened read-only or imported, the `.prj` is not created and the selected system is only used during the session. See [Location of the coordinate reference system](../../../sistemas-referencia-coordenadas/implementacion-src-modulos-digi3d/archivos-de-dibujo/ubicacion-src-archivos-dibujo.md).

### Configuration options

The Configuration dialog has more options for this format in [Single-precision binary file importer/exporter](../../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-binarios-de-precision-simple/README.md).

## Importer/exporter characteristics

| | |
| :--- | :--- |
| Extensions | `.bin`, `.bik` |
| Import ([IMPORT](../ordenes/i/importar.md) command) | Yes |
| Export ([EXPORT](../ordenes/e/exportar.md) command) | Yes |
| A drawing window can be opened with this format | Yes |
