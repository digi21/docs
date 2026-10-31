# Click to capture mouse
<!-- id: capturar-el-raton-al-hacer-clic -->
<!-- origen: 80ed2895c85d16411ef93923864f18bce713fd9a -->

Specifies whether the mouse is captured in the stereoscopic view when clicking it.

## Possible values

* **Yes**. The mouse is captured in the stereoscopic view on a click.
* **No**. The mouse is not captured.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration\Scroll` |
| Table | `Ints` |
| Value | `CapturarRatónAlHacerClic` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Ints WHERE Value = 'CapturarRatónAlHacerClic' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'CapturarRatónAlHacerClic', 1 FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
