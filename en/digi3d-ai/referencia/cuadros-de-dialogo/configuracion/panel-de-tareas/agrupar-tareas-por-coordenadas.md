# Group tasks by coordinates
<!-- id: agrupar-tareas-por-coordenadas -->
<!-- origen: 9b8765c7cad980c718cf189d180f010602364152 -->

If enabled, all tasks with the same coordinates are grouped to avoid repeating the same coordinates multiple times.

## Possible values

* **Yes**. Tasks with the same coordinates are grouped.
* **No**. Each task is displayed separately, even if it shares coordinates with another.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Value | `AgruparTareasPorCoordenadas` |
| Type | `REG_DWORD` |
| Default value | 0 |

This is a per-user _Windows_ value: it is not in Digi3DNET.db, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog box do not modify it.

</details>
