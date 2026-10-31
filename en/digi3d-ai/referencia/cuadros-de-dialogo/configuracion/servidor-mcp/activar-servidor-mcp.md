# Enabled
<!-- id: activar-servidor-mcp -->
<!-- origen: d9184946cbd6a9072d2baae97e88aa25e7087c36 -->

Specifies whether Digi3D.AI starts the [MCP server](../../../asistente-ia/servidor-mcp.md). The server listens at `http://127.0.0.1:<puerto>/mcp` and only accepts connections from this computer.

## Possible values

* **Yes**. Digi3D.AI starts the MCP server when accepting the dialog and at each program startup while this option remains enabled.
* **No**. Digi3D.AI does not start the MCP server. If the MCP server was running, Digi3D.AI stops it when accepting the dialog.

If you change this option, **Port**, or **Token**, Digi3D.AI restarts the server when you click **Accept**.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Value | `McpActivo` |
| Type | `REG_DWORD` |
| Default value | 0 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
