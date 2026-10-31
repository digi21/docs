# Z-coordinates in the project are orthometric but pretend to be ellipsoidal.
<!-- id: coordenadas-z-en-proyecto-son-ortometricas-haciendose-pasar-por-elipsoidales -->
<!-- origen: fa675d327065fccb1a4a885f217bc9834cc7c1b1 -->

Specifies how Z coordinates were entered in the PhotoScan project.

## Possible values

* **Yes, PhotoScan thinks they're ellipsoidal but they're orthometric.**
* **No, the coordinates were entered in PhotoScan correctly**.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.ConicSensor\PhotoScan` |
| :--- | :--- |
| Value | `CoordenadasElipsoidalesRealmenteSonOrtometricas` |
| Type | `REG_DWORD` |
| Default value | 0 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
