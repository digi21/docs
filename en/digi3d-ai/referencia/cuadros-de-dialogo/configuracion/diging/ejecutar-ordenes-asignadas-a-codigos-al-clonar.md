# Execute commands assigned to codes when cloning
<!-- id: ejecutar-ordenes-asignadas-a-codigos-al-clonar -->
<!-- origen: 048ac7f85ea74d6d5f9552c26e23a3d921911f35 -->

If enabled, cloning an entity runs the commands assigned in the code table to the codes of that entity.

## Possible values

* **Yes**. Commands assigned to codes run when cloning.
* **No**. Commands assigned to codes do not run when cloning.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Configuration` |
| :--- | :--- |
| Value | `EjecutarOrdenesAsignadasACodigoAlClonar` |
| Type | `REG_DWORD` |
| Default value | 0 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
