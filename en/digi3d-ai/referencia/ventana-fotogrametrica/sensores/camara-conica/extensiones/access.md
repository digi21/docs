# Access
<!-- id: access -->
<!-- origen: 3b145288f80b56d63ac9df830a94cbda8157e43f -->

The **Access** extension reads exterior orientations from a Microsoft Access database table (`.mdb` or `.accdb`).

## Aerial triangulation file

In **Aerial triangulation file**, select **Microsoft Access database files** (`*.mdb;*.accdb`). Reads only `.mdb` or `.accdb` files.

Digi3D.AI opens the database using OLE DB provider `Microsoft.ACE.OLEDB.16.0`, which must be installed.

The database does not contain camera calibration. Specify a camera file in the model or select one when prompted (see [Camera](../README.md#camera)).

The extension does not provide absolute orientation.

## Table and fields

[Access Orientation Importer](../../../../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/README.md) in configuration specifies the table and fields used to read orientations:

| Option | Default value | Field contents |
| --- | --- | --- |
| [Table](../../../../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/tabla.md) | `EXTERIOR ORIENTATION` | Table containing orientations. |
| [Image](../../../../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/imagen.md) | `FICHERO` | Image name. |
| [X](../../../../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/x.md), [Y](../../../../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/y.md), [Z](../../../../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/z.md) | `XL`, `YL`, `ZL` | Projection center coordinates. |
| [Omega](../../../../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/omega.md), [Phi](../../../../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/phi.md), [Kappa](../../../../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/kappa.md) | `OM`, `PHI`, `K` | Rotations. |

In the same category:

* [Image name with extension](../../../../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/nombre-de-la-imagen-con-extension.md): **Yes** searches for the image file name with extension (`107.tif`); **No**, without it (`107`). Defaults to **No**.
* [Rotation units](../../../../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/unidades-de-los-giros.md): **Radians**, **Sexagesimal** or **Centesimal**. Defaults to **Sexagesimal**.
* [Order of rotations](../../../../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/orden-de-los-giros.md): order used to build the rotation matrix. Defaults to **Omega-Phi-Kappa**.

For each model image, Digi3D.AI runs `SELECT [X], [Y], [Z], [Omega], [Phi], [Kappa] FROM [Tabla] WHERE [Imagen] LIKE 'nombre'` with the configured field names and uses the first returned record.

## Coordinate reference system

Reads the `.prj` with the same name as the database (`vuelo.prj` for `vuelo.mdb`). Without `.prj`, displays [Would you like to assign one?](../sistema-de-referencia-del-modelo.md#horizontal-coordinate-reference-system). Does not ask for the vertical system.

## Error messages

* “The following error was found: *error*”: database access fails, for example because the configured table or field does not exist.
* “Image orientation not found: *image*”: the query returns no record for the left or right model image.
