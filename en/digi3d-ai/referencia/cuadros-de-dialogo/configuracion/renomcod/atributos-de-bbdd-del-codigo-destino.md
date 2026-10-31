# DB attributes of the target code
<!-- id: atributos-de-bbdd-del-codigo-destino -->
<!-- origen: 4c9a784fbba346676e65158611efbd2d0e7ea99f -->

Specify how the target code's database attributes are populated when replacing a code with [RENAMCOD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renomcod.md).

## Possible values

* **Table scheme** \(default\). Attributes are created with the fields from the target code's table schema.
* **Table scheme + Default values**. Attributes are created with the fields from the target code's table schema and assigned the default values defined in the code table.
* **Table scheme + Default values + Values \(not null\) of the substituted code**. Attributes are created with the fields from the target code's table schema, assigned the default values defined in the code table, and populated with non-null attribute values copied from the replaced code.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Extensiones\DigiNG.OrdenesStandard\Renomcod` |
| Table | `Ints` |
| Value | `ComportamientoAtributos` |
| Default value | 0 |

These SQL statements assign 1 whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog box, then restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Extensiones\DigiNG.OrdenesStandard\Renomcod');
DELETE FROM Ints WHERE Value = 'ComportamientoAtributos' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Extensiones\DigiNG.OrdenesStandard\Renomcod');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ComportamientoAtributos', 1 FROM Keys WHERE Path = 'DigiNG\Extensiones\DigiNG.OrdenesStandard\Renomcod';
```

</details>
