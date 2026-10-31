# Zoom type
<!-- id: tipo-de-zoom-2 -->
<!-- origen: cc4fa8dc8f91a014dae50850981a3603d532111d -->

Specifies how zoom in and zoom out commands change zoom in the photogrammetric window.

## Possible values

* **Modifying the camera focal length**. Each zoom changes the camera field of view by 1 degree.
* **Changing the camera position** \(default\). Each zoom moves the camera closer or farther away according to the [Zoom factor](factor-de-zoom.md).

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto` |
| Table | `Ints` |
| Value | `ZoomsCambioFocal` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto');
DELETE FROM Ints WHERE Value = 'ZoomsCambioFocal' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ZoomsCambioFocal', 1 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto';
```

</details>
