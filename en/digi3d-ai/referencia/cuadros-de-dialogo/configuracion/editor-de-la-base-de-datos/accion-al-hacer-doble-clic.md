# Action when double clicking
<!-- id: accion-al-hacer-doble-clic -->
<!-- origen: a8e01f0abbaf6dbd23392e5778eb9771f9315067 -->

Specifies drawing window behavior when double-clicking an entity selected in the database editor.

## Possible values

* **Extended zoom of the entity**. The window zooms to fit the entity in the view.
* **Move the camera to the center of the entity**. The window moves the camera to the entity center without changing the zoom level.
* **Maintain in place**. The window does not change the view.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\Configuration\DatabaseEditor` |
| Table | `Ints` |
| Value | `AcciónAlHacerDobleClicPanelEditorBBDD` |
| Default value | 1 |

These SQL statements set the value 0, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Configuration\DatabaseEditor');
DELETE FROM Ints WHERE Value = 'AcciónAlHacerDobleClicPanelEditorBBDD' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Configuration\DatabaseEditor');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'AcciónAlHacerDobleClicPanelEditorBBDD', 0 FROM Keys WHERE Path = 'Digi3D\Configuration\DatabaseEditor';
```

</details>
