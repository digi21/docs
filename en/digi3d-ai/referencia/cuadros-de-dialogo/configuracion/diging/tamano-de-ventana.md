# Size of window
<!-- id: tamano-de-ventana -->
<!-- origen: 2e928d8d30332d650ce9c8046b8380dabd35f259 -->

If you enabled [Limit maximum zoom](limitar-el-zoom-maximo.md), enter the minimum size (in loaded drawing file units) that the drawing window can display in this field.

For example, if the drawing window works in meters and you enter 1, the minimum width/height displayed is 1 meter.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Configuration` |
| Table | `Doubles` |
| Value | `AnchoOAltoMinimoFactorZoom` |
| Default value | 1.0 |

These SQL statements set the value 1.0, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Doubles WHERE Value = 'AnchoOAltoMinimoFactorZoom' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Doubles (Key, Value, Data) SELECT Id, 'AnchoOAltoMinimoFactorZoom', 1.0 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
