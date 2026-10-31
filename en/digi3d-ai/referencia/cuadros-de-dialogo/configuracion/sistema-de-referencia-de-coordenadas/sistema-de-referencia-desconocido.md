# Unknown coordinate reference system
<!-- id: sistema-de-referencia-desconocido -->
<!-- origen: 4b36c97641b79eb74f846116f87ca39da1e258fb -->

Specifies what Digi3D.AI does when opening a drawing file in the drawing window or a model in the photogrammetric window if the drawing window has a local or unknown coordinate reference system and the file or model does not, or vice versa.

The most common case is a drawing file with a 2D system, for example *ETRS89 / UTM zone 30N*, in a drawing window with a compound system, for example *ETRS89 / UTM zone 30N + EGM2008*. Digi3D.AI completes the file system with an unknown vertical system and requires a vertical transformation to convert heights between that unknown vertical system and the drawing window vertical system. If a photogrammetric model sensor system has no vertical system, Digi3D.AI also completes it with an unknown vertical system, unless [Ask for sensor's vertical system](solicitar-sistema-vertical-para-sensores.md) is enabled and the user chooses a vertical system.

## Possible values

* **Ask**. If the unknown system is vertical, the dialog for defining the vertical transformation opens. When opening a drawing file, Digi3D.AI saves the vertical transformation with the file and does not reopen the dialog for defining it on subsequent file openings. When opening a model, the transformation is only saved if *Always use this transformation* is checked; it then appears in [Stored transformations](transformaciones-memorizadas.md). If the unknown system is horizontal, the file or model does not open. This is the default value.
* **1:1**. Digi3D.AI uses an identity transformation between the drawing window reference system and that of the file or model: coordinate values do not change, and no transformation definition dialog opens. If the actual file or model reference system differs from the drawing window system, file or model coordinates appear displaced in the drawing window, and Digi3D.AI does not warn you.
* **Reject**. The file or model does not open. When opening a drawing file, Digi3D.AI displays the error and suggests selecting *Local* as the drawing window reference system.

Changes to this option apply to drawing files and models opened after it is modified.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration` |
| Table | `Ints` |
| Value | `SistemaReferenciaDesconocido` |
| Default value | 0 |

Values are 0 (Ask), 1 (1:1), and 2 (Reject). These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Ints WHERE Value = 'SistemaReferenciaDesconocido' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'SistemaReferenciaDesconocido', 1 FROM Keys WHERE Path = 'App\Configuration';
```

</details>
