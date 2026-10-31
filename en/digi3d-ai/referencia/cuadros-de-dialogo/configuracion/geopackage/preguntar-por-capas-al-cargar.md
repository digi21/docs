# Ask for layers when loading
<!-- id: preguntar-por-capas-al-cargar -->
<!-- origen: 1c22e9d451d6e28f89b8f3529b077cdbbcde946d -->

If enabled, a dialog allows selecting the layers to load when the GeoPackage file contains at least one layer with geometries, even if it contains only one.

## Possible values

* **Yes**. You are asked which layers to load.
* **No**. All layers are loaded without asking.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\IO\Digi21.Io.GeoPackage` |
| Table | `Ints` |
| Value | `PreguntarPorCapasACargar` |
| Default value | 1 |

These SQL statements set the value 0, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\IO\Digi21.Io.GeoPackage');
DELETE FROM Ints WHERE Value = 'PreguntarPorCapasACargar' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.GeoPackage');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'PreguntarPorCapasACargar', 0 FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.GeoPackage';
```

</details>
