# Calculate in the cloud
<!-- id: calcular-en-la-nube -->
<!-- origen: 24a61f772a17098d50062ce8227ecbfdcb2400c9 -->

If enabled, relative orientation is calculated on the digi21.net cloud servers.

## Possible values

* **Yes**.
* **No**.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\Extensiones\Digi3D.ConicSensor\RelativeOrientation` |
| Table | `Ints` |
| Value | `CalcularEnLaNube` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.ConicSensor\RelativeOrientation');
DELETE FROM Ints WHERE Value = 'CalcularEnLaNube' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\RelativeOrientation');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'CalcularEnLaNube', 1 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\RelativeOrientation';
```

</details>
