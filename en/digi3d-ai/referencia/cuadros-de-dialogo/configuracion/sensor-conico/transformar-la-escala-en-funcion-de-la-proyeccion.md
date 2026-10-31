# Transform the scale based on the projection
<!-- id: transformar-la-escala-en-funcion-de-la-proyeccion -->
<!-- origen: 7e7bea7dc35a45fe550e80adba39ab8c588b282a -->

If enabled, loading models in the Universal Transverse Mercator (UTM) projection applies the K scale factor to measurements.

## Possible values

* **Yes**.
* **No**.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\Extensiones\Digi3D.ConicSensor` |
| Table | `Ints` |
| Value | `TransformarEscalaEnFunciónProyección` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.ConicSensor');
DELETE FROM Ints WHERE Value = 'TransformarEscalaEnFunciónProyección' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'TransformarEscalaEnFunciónProyección', 1 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor';
```

</details>
