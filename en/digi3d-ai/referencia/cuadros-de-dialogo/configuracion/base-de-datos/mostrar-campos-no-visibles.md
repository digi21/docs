# Show fields not visible in the Properties pane of the selected entity
<!-- id: mostrar-campos-no-visibles -->
<!-- origen: 8d3c282907c8d9cc015cc2ca31eecd1cc1d21158 -->

If enabled, the **Properties of selected entity** pane also displays database fields marked as not visible.

## Possible values

* **Yes**. The pane also displays fields marked as not visible.
* **No**. The pane hides fields marked as not visible.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Configuration` |
| Table | `Ints` |
| Value | `MostrarCamposOcultosEnPanelPropiedadesEntidadSeleccionada` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'MostrarCamposOcultosEnPanelPropiedadesEntidadSeleccionada' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'MostrarCamposOcultosEnPanelPropiedadesEntidadSeleccionada', 1 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
