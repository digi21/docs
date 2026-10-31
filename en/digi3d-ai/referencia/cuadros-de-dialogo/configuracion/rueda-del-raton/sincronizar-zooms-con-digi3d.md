# Synchronize zooms using Digi3D
<!-- id: sincronizar-zooms-con-digi3d -->
<!-- origen: 674ac515c37fcf7af0ab8b118b389e6f5af180f6 -->

Specifies whether changing the zoom factor of a Digi3D view also changes drawing window zoom to show approximately the same scale.

## Possible values

* **Yes**. Drawing window zoom is synchronized with Digi3D view zoom.
* **No**. Drawing window zoom is independent of Digi3D view zoom.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Configuration` |
| :--- | :--- |
| Value | `SinconizarZoomsDigi3D` |
| Type | `REG_DWORD` |
| Default value | 0 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
