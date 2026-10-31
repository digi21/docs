# Obliques with the horizon at the top
<!-- id: oblicuas-con-el-horizonte-arriba -->
<!-- origen: 1d83625fbb2cb23428570811d732f8e90bc53e42 -->

Specifies how oblique pairs are displayed when images are projected \(the [Image presentation mode](modo-de-presentacion-de-imagenes.md) option set to **Project**\).

## Possible values

* **Yes** \(default\). An oblique pair whose viewing direction points toward the bottom of the screen is rotated by 180 degrees, and the left and right images are swapped. The horizon is at the top, and stereoscopy is preserved. Pairs looking along the baseline would require a 90-degree rotation, which breaks stereoscopy, so they are left unchanged.
* **No**. Oblique pairs are displayed without rotation.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\Extensiones\Digi3D.ConicSensor` |
| Table | `Ints` |
| Value | `OblicuasConHorizonteArriba` |
| Default value | 1 |

These SQL statements set the value 0, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.ConicSensor');
DELETE FROM Ints WHERE Value = 'OblicuasConHorizonteArriba' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'OblicuasConHorizonteArriba', 0 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor';
```

</details>
