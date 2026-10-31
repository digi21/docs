# Empty automatically
<!-- id: vaciar-automaticamente -->
<!-- origen: 7f89f177d2dadb9e471bb73f94b4b5ed1eec58bc -->

If enabled, tasks are automatically removed from the pane when a command attempts to add a task, clearing the pane when a new command starts.

## Possible values

* **Yes**. The pane is emptied automatically when the first task of a new command is added.
* **No**. Tasks remain in the pane.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Value | `LimpiarAutomaticamente` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in Digi3DNET.db, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog box do not modify it.

</details>
