# Zoom factor
<!-- id: factor-de-zoom -->
<!-- origen: 18c42b1a17be03e268d2e71f0166f22b2427bba6 -->

Specifies the zoom factor applied when running zoom in and zoom out commands. This is a positive value greater than 1.0; if you enter a lower value, 1.0 is used.

Only used if you selected **Changing the camera position** in [Zoom type](tipo-de-zoom.md). The default value is 1.2.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto` |
| Table | `Doubles` |
| Value | `FactorZoom` |
| Default value | 1.2 |

These SQL statements set the value 1.2, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto');
DELETE FROM Doubles WHERE Value = 'FactorZoom' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto');
INSERT INTO Doubles (Key, Value, Data) SELECT Id, 'FactorZoom', 1.2 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto';
```

</details>
