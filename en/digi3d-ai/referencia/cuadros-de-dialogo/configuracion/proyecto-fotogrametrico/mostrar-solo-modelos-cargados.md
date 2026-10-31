# Show only loaded models
<!-- id: mostrar-solo-modelos-cargados -->
<!-- origen: 0c52053bdcbe935884ab66cedee84a055d8b6090 -->

If enabled, the photogrammetric project pane displays only models it could load.

## Possible values

* **Yes**. The pane displays only models that could be loaded.
* **No**. The pane displays all project models.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration\CambioRapidoModelos` |
| Table | `Ints` |
| Value | `MostrarUnicamenteModelosQueSePuedenCargar` |
| Default value | 1 |

These SQL statements set the value 0, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\CambioRapidoModelos');
DELETE FROM Ints WHERE Value = 'MostrarUnicamenteModelosQueSePuedenCargar' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\CambioRapidoModelos');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'MostrarUnicamenteModelosQueSePuedenCargar', 0 FROM Keys WHERE Path = 'App\Configuration\CambioRapidoModelos';
```

</details>
