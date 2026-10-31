# Default topology name
<!-- id: nombre-de-la-topologia-por-defecto -->
<!-- origen: 5badc79eac1357da603d828af35ccfa189f7f0d1 -->

Specifies the name assigned to the topology if you do not supply a name parameter when running [CREATE\_TOPOLOGIES\_VISIBLE\_CODES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-topologias-codigos-visibles.md).

The name supports [macros](../../../macros.md). The default value is `Topología creada a las $(HoraCompleta)`.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Extensiones\DigiNG.OrdenesTopologia\TopologiaCodigosVisibles` |
| Table | `Texts` |
| Value | `NombreTopologiaDefecto` |
| Default value | `Topología creada a las $(HoraCompleta)` |

These SQL statements set the text `Topología creada a las $(HoraCompleta)`, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Extensiones\DigiNG.OrdenesTopologia\TopologiaCodigosVisibles');
DELETE FROM Texts WHERE Value = 'NombreTopologiaDefecto' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Extensiones\DigiNG.OrdenesTopologia\TopologiaCodigosVisibles');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'NombreTopologiaDefecto', 'Topología creada a las $(HoraCompleta)' FROM Keys WHERE Path = 'DigiNG\Extensiones\DigiNG.OrdenesTopologia\TopologiaCodigosVisibles';
```

</details>
