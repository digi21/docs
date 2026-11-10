# Omit models for which no photo is available
<!-- id: omitir-modelos-para-los-cuales-no-hay-foto -->
<!-- origen: e0dc30b2214aa3017283f75c4d6131d855ad9a2a -->

If enabled, loading a photogrammetric project omits models for which any photo could not be found. In a remote Azure Blob Storage project, Digi3D.AI finds the photos with the list of blobs in their folder, which requires a shared access signature (SAS) with Read and List permissions (`sp=rl`) or a container with the anonymous access level “Container”; if it cannot get the list, it shows every model and adds a notice to the Tasks pane (see [How the URL of each image is calculated](../../../../procedimientos/publicar-proyecto-fotogrametrico-remoto.md#how-the-url-of-each-image-is-calculated)).

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
