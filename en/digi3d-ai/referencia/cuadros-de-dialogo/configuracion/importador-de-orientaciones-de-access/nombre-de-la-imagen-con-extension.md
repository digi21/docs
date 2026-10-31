# Image name with extension
<!-- id: nombre-de-la-imagen-con-extension -->
<!-- origen: 14354118275a5b5b82a00e977e158a75f5abb440 -->

Specifies whether image names in the database include their extension.

## Possible values

* **Yes**. Image names in the database include their extension.
* **No**. Image names in the database do not include their extension.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\Extensiones\Digi3D.ConicSensor\Extensiones\Digi3D.ConicSensor.Access` |
| Table | `Ints` |
| Value | `NombreImagenConExtension` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.ConicSensor\Extensiones\Digi3D.ConicSensor.Access');
DELETE FROM Ints WHERE Value = 'NombreImagenConExtension' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\Extensiones\Digi3D.ConicSensor.Access');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'NombreImagenConExtension', 1 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\Extensiones\Digi3D.ConicSensor.Access';
```

</details>
