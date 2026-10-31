# Show code help
<!-- id: mostrar-ayudas-por-codigo -->
<!-- origen: 2b99407faf1badd4a2bf284d6b5e95b58f97c3ed -->

Specifies whether selecting a code as active makes Digi3D.AI display the Hypertext Markup Language (HTML) file associated with that code in the [dynamic help pane](../../../paneles/ayuda-dinamica.md) (assigned in the Help file field).

## Possible values

* **Yes**. HTML help for the active code is displayed in the dynamic help pane.
* **No**. HTML help for the active code is not displayed.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Configuration` |
| Table | `Ints` |
| Value | `MostrarAyudasCodigos` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'MostrarAyudasCodigos' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'MostrarAyudasCodigos', 1 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
