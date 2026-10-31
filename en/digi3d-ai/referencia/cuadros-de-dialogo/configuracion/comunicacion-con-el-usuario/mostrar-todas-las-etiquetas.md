# Show all the tags
<!-- id: mostrar-todas-las-etiquetas -->
<!-- origen: 73cdc0b4d4110601b18ea90ee4e7ad10b16c4070 -->

If enabled, all code table tags are displayed, rather than only tags associated with the codes of entities loaded in the drawing file.

## Possible values

* **Yes**. All code table tags are displayed.
* **No**. Only tags of codes present in the drawing file are displayed.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration` |
| Table | `Ints` |
| Value | `MostrarTodasLasEtiquetas` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Ints WHERE Value = 'MostrarTodasLasEtiquetas' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'MostrarTodasLasEtiquetas', 1 FROM Keys WHERE Path = 'App\Configuration';
```

</details>
