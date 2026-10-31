# Claude Code
<!-- id: conectar-claude-code -->
<!-- origen: 3662ae249c495c1843d9cbaeef1c9c8d5a205c87 -->

The **Copy** button copies the command that connects Claude Code to the [MCP server](../../../asistente-ia/servidor-mcp.md) (Model Context Protocol) to the clipboard. Before copying the command, Digi3D.AI saves the **Enabled**, **Port**, and **Token** values as displayed in the dialog and restarts the server if any of these three values changed. The copied command allows connection to the server even if you click **Cancel** after copying the command with Copy.

## Usage

1. Enable [Enabled](activar-servidor-mcp.md).
2. Click **Copy**.
3. Paste the command in a console and run it. Claude Code saves the server with the name `digi3d`.

The copied command has this format:

```
claude mcp add --transport http digi3d http://127.0.0.1:<puerto>/mcp --header "Authorization: Bearer <token>"
```

If the token is empty, clicking **Copy** creates and saves a new token before copying the command. If the clipboard is unavailable, Digi3D.AI displays “Unable to copy to the clipboard.”

More information in [MCP server](../../../asistente-ia/servidor-mcp.md).
