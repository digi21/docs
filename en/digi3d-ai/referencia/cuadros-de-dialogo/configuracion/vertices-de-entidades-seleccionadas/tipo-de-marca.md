# Type of mark
<!-- id: tipo-de-marca -->
<!-- origen: 0c48d30b60148630bbb99fcb35f48150828d983a -->

Specifies the marker displayed on selected entity vertices.

## Possible values

* **Do not show marks**. No markers are displayed on vertices.
* **Squares**. Squares are displayed on vertices.
* **Triangles**. Triangles are displayed on vertices.
* **Circles**. Circles are displayed on vertices.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Configuration` |
| :--- | :--- |
| Value | `TipoMarcaVértices` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
