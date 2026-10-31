# Drawing order (multiple code)
<!-- id: orden-dibujo-multi-codigo -->
<!-- origen: 80632664bcb3a64644b8db6a480998614cd32c6d -->

Specifies the order in which codes are drawn when a geometry has more than one code.

If a geometry has codes A, B, and C, the drawing window renders the geometry three times, once for each code. This option configures whether the drawing order is A, B, C or C, B, A.

## Possible values

* **First code first**. Code A is drawn first, then B, and finally C.
* **Last code first**. Code C is drawn first, then B, and finally A.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Configuration` |
| Table | `Ints` |
| Value | `DibujarPrimeroElPrimerCódigoDeEntidad` |
| Default value | 1 |

These SQL statements set the value 0, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'DibujarPrimeroElPrimerCódigoDeEntidad' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'DibujarPrimeroElPrimerCódigoDeEntidad', 0 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
