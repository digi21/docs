# Stereoscopy
<!-- id: estereoscopia -->
<!-- origen: ded34cd6f0a807baf71ec7314af49b58a64143df -->

Specifies the method used to display stereoscopy.

## Possible values

One of the stereoscopic display methods available on your computer (depending on the hardware and installed modules).

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration\Scroll` |
| Table | `Ints` |
| Value | `TipoEstereo` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Ints WHERE Value = 'TipoEstereo' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'TipoEstereo', 1 FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
