# Photogrammetric project: Correlate relative orientations
<!-- id: proyecto-fotogrametrico-correlar-relativas -->
<!-- origen: abae28a5b5f53c6d3523a005dea71892ab624e08 -->

Correlates relative orientations of images that have no associated relative orientation in the photogrammetric project file. Correlation only runs if “Check images” is enabled.

## Possible values

* **Yes**.
* **No**.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\Extensiones\Digi3D.ConicSensor\CambioRapidoModelo` |
| Table | `Ints` |
| Value | `CorrelarRelativas` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.ConicSensor\CambioRapidoModelo');
DELETE FROM Ints WHERE Value = 'CorrelarRelativas' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\CambioRapidoModelo');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'CorrelarRelativas', 1 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\CambioRapidoModelo';
```

</details>
