# Allow compression
<!-- id: permitir-comprimir -->
<!-- origen: 6bfa38750de61afa5e070a3b5ebfac31c0c331af -->

Specifies whether Digi3D.AI can compact a file opened with the Shapefile importer/exporter.

## Possible values

* **Yes** \(default\). The [COMPRESS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/comprimir.md) command can compact the file.
* **No**. The file is not compacted.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\IO\Digi21.Io.Shp` |
| Table | `Ints` |
| Value | `PermitirComprimir` |
| Default value | 1 |

These SQL statements set the value 0, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\IO\Digi21.Io.Shp');
DELETE FROM Ints WHERE Value = 'PermitirComprimir' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Shp');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'PermitirComprimir', 0 FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Shp';
```

</details>
