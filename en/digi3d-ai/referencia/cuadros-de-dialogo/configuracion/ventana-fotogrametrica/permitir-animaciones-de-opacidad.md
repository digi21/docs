# Allow opacity animations
<!-- id: permitir-animaciones-de-opacidad -->
<!-- origen: 069c86cc5d7ce66c040edc8418567c7a5d601c71 -->

If enabled, newly loaded tiles are displayed with an animation.

## Possible values

* **Yes**. Newly loaded tiles appear with an animation.
* **No**. Tiles appear without animation.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration\Scroll` |
| Table | `Ints` |
| Value | `PermitirAnimaciónOpacidad` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Ints WHERE Value = 'PermitirAnimaciónOpacidad' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'PermitirAnimaciónOpacidad', 1 FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
