# Omit models for which no photo is available
<!-- id: omitir-modelos-para-los-cuales-no-hay-foto -->
<!-- origen: 227ffffecd2d4bbf03b088954d7c2c89b87d4221 -->

If enabled, loading a photogrammetric project omits models for which any photo could not be found.

## Possible values

* **Yes**. Models whose photos cannot be found are omitted.
* **No**. All models are displayed.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\Extensiones\Digi3D.ConicSensor\Inpho` |
| Table | `Ints` |
| Value | `OmitirModelosParaLosCualesNoSeLocalizaFoto` |
| Default value | 1 |

These SQL statements set the value 0, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.ConicSensor\Inpho');
DELETE FROM Ints WHERE Value = 'OmitirModelosParaLosCualesNoSeLocalizaFoto' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\Inpho');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'OmitirModelosParaLosCualesNoSeLocalizaFoto', 0 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\Inpho';
```

</details>
