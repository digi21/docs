# Order of rotations
<!-- id: orden-de-los-giros -->
<!-- origen: 6b097c76e2228f1b80b7f61a7e68e42776478f02 -->

Specifies the rotation order used to construct the Euler matrix.

## Possible values

* **Omega-Phi-Kappa**.
* **Phi-Omega-Kappa**.
* **Omega-Kappa-Phi**.
* **Kappa-Omega-Phi**.
* **Kappa-Phi-Omega**.
* **Phi-Kappa-Omega**.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\Extensiones\Digi3D.ConicSensor\Importadores\ImportadorCentroProyGiros` |
| Table | `Ints` |
| Value | `OrdenGiros` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.ConicSensor\Importadores\ImportadorCentroProyGiros');
DELETE FROM Ints WHERE Value = 'OrdenGiros' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\Importadores\ImportadorCentroProyGiros');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'OrdenGiros', 1 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\Importadores\ImportadorCentroProyGiros';
```

</details>
