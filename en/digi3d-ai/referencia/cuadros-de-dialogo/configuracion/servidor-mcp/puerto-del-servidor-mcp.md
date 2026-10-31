# Port
<!-- id: puerto-del-servidor-mcp -->
<!-- origen: 5ec2ec65dc24ceae3bc66449c4b0593a30d09b33 -->

Specifies the TCP port on which the [MCP server](../../../asistente-ia/servidor-mcp.md) (Model Context Protocol) listens. The server only accepts connections from this computer (`127.0.0.1`).

Change the port if another program, usually another Digi3D.AI instance, already uses 4457. After changing it, copy the [Claude Code](conectar-claude-code.md) command again: the previous command contains the old port.

## Possible values

An integer from 1 to 65535, inclusive. If the port number is below 1 or above 65535, clicking **Accept**, **Regenerate**, or **Copy** makes Digi3D.AI display “The port of the MCP server must be between 1 and 65535.” without saving the Enabled, Port, or Token values: the dialog remains open for you to correct the port.

If you change this option, **Enabled**, or **Token**, Digi3D.AI restarts the server when you click **Accept**, **Regenerate**, or **Copy**.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Value | `McpPuerto` |
| Type | `REG_DWORD` |
| Default value | 4457 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
