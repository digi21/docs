# Epipolar rectification
<!-- id: rectificacion-epipolar -->
<!-- origen: 8b9b8b51496b53586c8409a0ebd4db0ce7669d7f -->

Specifies the type of epipolar rectification to perform.

## Possible values

* **Solution which least modifies the left photo**.
* **Solution which least modifies the right photo**.
* **Solution which searches for greatest verticality**.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.ConicSensor\EpipolarRectification` |
| :--- | :--- |
| Value | `TipoAjuste` |
| Type | `REG_DWORD` |
| Default value | 0 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
