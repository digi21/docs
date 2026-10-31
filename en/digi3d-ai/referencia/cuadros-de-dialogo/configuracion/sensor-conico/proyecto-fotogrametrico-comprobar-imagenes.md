# Photogrammetric project: Check images
<!-- id: proyecto-fotogrametrico-comprobar-imagenes -->
<!-- origen: f9eb6f09ec91683d0cb9dacbe42cddc8f443fb8f -->

Checks the compatibility of all images in the photogrammetric project file.

## Possible values

* **Yes**.
* **No**.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\Extensiones\Digi3D.ConicSensor\CambioRapidoModelo` |
| Table | `Ints` |
| Value | `ComprobarImágenes` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.ConicSensor\CambioRapidoModelo');
DELETE FROM Ints WHERE Value = 'ComprobarImágenes' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\CambioRapidoModelo');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ComprobarImágenes', 1 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\CambioRapidoModelo';
```

</details>
