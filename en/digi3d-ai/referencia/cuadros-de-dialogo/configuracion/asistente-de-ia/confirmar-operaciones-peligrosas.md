# Confirm dangerous operations
<!-- id: confirmar-operaciones-peligrosas -->
<!-- origen: 66e41489f7cc104203f24afd58ed385b5dc3cbde -->

Specifies whether Digi3D.AI displays the **Security confirmation** dialog before the chat pane assistant or a client of the [MCP server](../../../asistente-ia/servidor-mcp.md) (Model Context Protocol) deletes geometries, writes or deletes files, runs system commands, or accesses the network.

## Possible values

* **Yes**. Digi3D.AI requests confirmation before each dangerous operation.
* **No**. Digi3D.AI performs dangerous operations without requesting confirmation. Not recommended.

The change takes effect when you click **Accept** in the Configuration dialog. The MCP server applies it without restarting.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Value | `ClaudeChatConfirmaciones` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
