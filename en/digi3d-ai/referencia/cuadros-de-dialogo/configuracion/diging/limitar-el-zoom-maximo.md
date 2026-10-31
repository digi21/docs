# Limit maximum zoom
<!-- id: limitar-el-zoom-maximo -->
<!-- origen: a91f8e45ea9c1615a2087a3bfff8bf0826e1dd29 -->

Specifies whether to limit the maximum drawing window zoom.

## Possible values

* **Yes**. The drawing window maximum zoom is limited.
* **No**. The drawing window has no zoom limit.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Configuration` |
| Table | `Ints` |
| Value | `LimitarFactorZoom` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'LimitarFactorZoom' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'LimitarFactorZoom', 1 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
