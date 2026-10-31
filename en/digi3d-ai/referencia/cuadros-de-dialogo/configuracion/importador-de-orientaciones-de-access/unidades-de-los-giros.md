# Rotation units
<!-- id: unidades-de-los-giros-2 -->
<!-- origen: 1c6c8ca158e8268c664a4a8277d1863c387611f8 -->

Specifies the units in which rotations are stored in the Access database.

## Possible values

* **Radians**.
* **Sexagesimal**.
* **Centesimal**.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\Extensiones\Digi3D.ConicSensor\Extensiones\Digi3D.ConicSensor.Access` |
| Table | `Ints` |
| Value | `UnidadesAngulos` |
| Default value | 1 |

These SQL statements set the value 0, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.ConicSensor\Extensiones\Digi3D.ConicSensor.Access');
DELETE FROM Ints WHERE Value = 'UnidadesAngulos' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\Extensiones\Digi3D.ConicSensor.Access');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'UnidadesAngulos', 0 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\Extensiones\Digi3D.ConicSensor.Access';
```

</details>
