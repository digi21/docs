# Show run_python code
<!-- id: mostrar-codigo-run-python -->
<!-- origen: 965dafe78d399a8337bd4a7799a19bd6f69efa00 -->

Specifies whether the chat pane displays the Python code the assistant executes with the `run_python` tool and its output. This helps diagnose problems.

## Possible values

* **Yes**. The chat displays the Python code and its output.
* **No**. The chat does not display the code.

The change takes effect when you click **Accept** in the Configuration dialog.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Value | `ClaudeChatDebug` |
| Type | `REG_DWORD` |
| Default value | 0 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
