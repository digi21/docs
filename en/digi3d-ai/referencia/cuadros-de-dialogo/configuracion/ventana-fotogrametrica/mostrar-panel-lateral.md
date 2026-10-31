# Show lateral panel
<!-- id: mostrar-panel-lateral -->
<!-- origen: 1b3431622110b77247b2b7bef7cc4e4a24e624f9 -->

If enabled, a side pane appears in the photogrammetric window for changing the radiometry of displayed images.

## Possible values

* **Yes**. The radiometry side pane is displayed.
* **No**. The side pane is not displayed.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration\Scroll` |
| Table | `Ints` |
| Value | `MostrarPanelLateral` |
| Default value | 1 |

These SQL statements set the value 0, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Ints WHERE Value = 'MostrarPanelLateral' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'MostrarPanelLateral', 0 FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
