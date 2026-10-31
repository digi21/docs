# Enable epipolar by default
<!-- id: activar-epipolar-por-defecto -->
<!-- origen: 44b79d22e4e8f9564f5098c853349c7ea68256a8 -->

If enabled, Digi3D.AI automatically enables epipolar rectification when loading the stereo pair.

## Possible values

* **Yes**.
* **No**.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.ConicSensor\EpipolarRectification` |
| :--- | :--- |
| Value | `ActivarEpipolarPorDefecto` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
