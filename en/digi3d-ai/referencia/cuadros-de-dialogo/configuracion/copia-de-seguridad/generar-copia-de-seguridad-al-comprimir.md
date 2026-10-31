# Create back-up copy when compressing
<!-- id: generar-copia-de-seguridad-al-comprimir -->
<!-- origen: 25f83c0cfcdcc209d4213bfe00883d0ae792328f -->

Specify whether Digi3D.AI automatically backs up the working file when running [COMPRESS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/comprimir.md), before compressing the drawing file.

## Possible values

* **Yes**. Create a backup before compressing.
* **No**. Do not create a backup when compressing.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Configuration` |
| Table | `Ints` |
| Value | `GenerarCopiaSeguridadAlComprimir` |
| Default value | 0 |

These SQL statements set the value to 1, whether or not the row exists. Run them in [Advanced configuration](../../configuracion-avanzada.md) and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'GenerarCopiaSeguridadAlComprimir' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'GenerarCopiaSeguridadAlComprimir', 1 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
