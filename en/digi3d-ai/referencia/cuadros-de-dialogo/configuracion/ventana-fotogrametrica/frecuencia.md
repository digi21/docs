# Frequency
<!-- id: frecuencia -->
<!-- origen: 7b66d9356e0e72389198e3017b38e4aa80c426b1 -->

Specifies the frequency, in Hz, to select for the [specified monitor](monitor-a-cambiar-la-resolucion.md).

## Possible values

One of the available frequencies: 60, 70, 72, 75, 85, 100, 120, 140, 144, 150, 170, or 200 Hz.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration\Scroll` |
| Table | `Ints` |
| Value | `Frecuencia` |
| Default value | 60 |

These SQL statements set the value 60, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Ints WHERE Value = 'Frecuencia' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'Frecuencia', 60 FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
