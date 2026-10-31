# Interface for selecting code
<!-- id: interfaz-para-seleccionar-codigo -->
<!-- origen: 921f4858ee3c7d8621170b1b70a4ed8cbafe91b8 -->

The program provides three different windows for selecting the active code. You can use only one of these windows at a time.

> Restart the program after accepting the configuration dialog if you change Interface for selecting code.

## Possible values

* **Single-coding toolbar**. Uses the [single-coding toolbar](../../../barras-de-herramientas/codigo.md).
* **Multi-coding panel**. Uses the [multi-coding pane](../../../paneles/codigos-activos.md).
* **Code panel (single-coding)**. Uses the [code pane (single-coding)](../../../paneles/tabla-de-codigos.md).

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Configuration` |
| Table | `Ints` |
| Value | `InterfazMulticodificación` |
| Default value | 0 or 1, depending on which code reads it first |

These SQL statements set the value 2, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'InterfazMulticodificación' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'InterfazMulticodificación', 2 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
