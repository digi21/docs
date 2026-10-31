# Show Coordinate reference system field
<!-- id: mostrar-campo-sistema-de-referencia-de-coordenadas -->
<!-- origen: ea4bcfabfaf1ef380494d9eaa37504927ac53ac4 -->

If enabled, Digi3D.AI displays the **Coordinate Reference System** field on the **Drawing file** tab of the **New project** dialog.

## Possible values

* **Yes**. The Coordinate Reference System field is displayed in New project.
* **No**. The Coordinate Reference System field is not displayed in New project.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Configuration` |
| :--- | :--- |
| Value | `MostrarOpcionSrc` |
| Type | `REG_DWORD` |
| Default value | 0 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
