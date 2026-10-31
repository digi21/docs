# Token
<!-- id: token-del-servidor-mcp -->
<!-- origen: 469eb7c5e00a3fdab7fd68a40b0af8817c3ba201 -->

The token is the key MCP (Model Context Protocol) clients send with each request to connect to the [MCP server](../../../asistente-ia/servidor-mcp.md). Digi3D.AI rejects requests without the token. The dialog displays the masked token and does not allow manual editing.

## Regenerate button

The **Regenerate** button creates a new token of 64 hexadecimal characters (32 random bytes), saves it together with **Enabled** and **Port**, and restarts the server without waiting for you to click **Accept**. Once the token is regenerated, clients configured with the previous token can no longer connect to the server: configure them again with [Claude Code](conectar-claude-code.md) or [Claude Desktop](conectar-claude-desktop.md).

If the token is empty, the Claude Code or Claude Desktop **Copy** button creates and saves a new token before copying. If the token is still empty when the server starts, Digi3D.AI creates and saves one.

If you change this option, **Enabled**, or **Port**, Digi3D.AI restarts the server.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Value | `McpToken` |
| Type | `REG_SZ` |
| Default value | Empty (Digi3D.AI creates a token when starting the server) |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

The token is saved unencrypted. Any program running as the same _Windows_ user can read it.

</details>
