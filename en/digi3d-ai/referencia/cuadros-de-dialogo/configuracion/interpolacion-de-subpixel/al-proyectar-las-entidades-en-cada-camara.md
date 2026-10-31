# When projecting the entities on each camera
<!-- id: al-proyectar-las-entidades-en-cada-camara -->
<!-- origen: c20cb3fa59c3b699e5bfea8e9e48dac2d722bcf4 -->

If the sensor supports subpixel interpolation, this option specifies whether calculations use subpixel interpolation when projecting entities in each camera.

## Possible values

* **With subpixel interpolation**. Calculations use subpixel interpolation (greater accuracy and longer processing time than without subpixel interpolation).
* **Without subpixel interpolation**. Calculations do not use subpixel interpolation.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\Configuration\Interpolation` |
| Table | `Ints` |
| Value | `TipoInterpolacionProyectarEntidades` |
| Default value | 1 |

These SQL statements set the value 0, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Configuration\Interpolation');
DELETE FROM Ints WHERE Value = 'TipoInterpolacionProyectarEntidades' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Configuration\Interpolation');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'TipoInterpolacionProyectarEntidades', 0 FROM Keys WHERE Path = 'Digi3D\Configuration\Interpolation';
```

</details>
