# Ask for layers to load
<!-- id: preguntar-por-capas-a-cargar-3 -->
<!-- origen: 7b100cf7bb1e5c6c459647c9deefc8949f0b1480 -->

If enabled, loading a file displays a dialog in which you can select the layers to load.

## Possible values

* **Yes**. You are asked which layers to load when opening a file.
* **No**. All layers are loaded without asking.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\IO\Digi21.Io.Shp` |
| Table | `Ints` |
| Value | `PreguntarPorCapasACargar` |
| Default value | 1 |

These SQL statements set the value 0, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\IO\Digi21.Io.Shp');
DELETE FROM Ints WHERE Value = 'PreguntarPorCapasACargar' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Shp');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'PreguntarPorCapasACargar', 0 FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Shp';
```

</details>
