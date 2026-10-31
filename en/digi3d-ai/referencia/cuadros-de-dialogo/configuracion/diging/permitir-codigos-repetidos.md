# Allow repeated codes
<!-- id: permitir-codigos-repetidos -->
<!-- origen: 79254240059a83f321f5265a0941d5eab9be5a03 -->

If enabled, you can assign the same code to the same geometry multiple times.

## Possible values

* **Yes**. A geometry may have the same code multiple times.
* **No**. Repeated codes are not allowed in a geometry.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Configuration` |
| Table | `Ints` |
| Value | `PermitirGeometriasConCodigosRepetidos` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'PermitirGeometriasConCodigosRepetidos' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'PermitirGeometriasConCodigosRepetidos', 1 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
