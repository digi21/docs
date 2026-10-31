# Enable epipolar by default
<!-- id: activar-epipolar-por-defecto-2 -->
<!-- origen: adf0b0fe0ae72e2f5267644d5b0552cf152eef80 -->

If enabled, Digi3D.AI automatically enables epipolar rectification when loading the stereo pair.

## Possible values

* **Yes**. Epipolar rectification is automatically enabled when loading the pair.
* **No**. Epipolar rectification is not automatically enabled.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.VMQuasiPanoramic\EpipolarRectification` |
| :--- | :--- |
| Value | `ActivarEpipolarPorDefecto` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
