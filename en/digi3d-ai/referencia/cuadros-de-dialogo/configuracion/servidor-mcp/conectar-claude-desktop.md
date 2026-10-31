# Claude Desktop
<!-- id: conectar-claude-desktop -->
<!-- origen: 18ad80793c5ba2aebc5273091d9cbd3925585ebb -->

The **Copy** button copies the `claude_desktop_config.json` fragment that starts the `Digi3D.Mcp.exe` bridge to the clipboard. Claude Desktop does not connect to a local HTTP address: it runs that program and communicates with it through its standard input and output. The bridge forwards messages to the [MCP server](../../../asistente-ia/servidor-mcp.md) of the open Digi3D.AI instance.

## Usage

1. Enable [Enabled](activar-servidor-mcp.md).
2. Click **Copy**. Before copying the Claude Desktop configuration fragment, Digi3D.AI saves **Enabled**, **Port**, and **Token** and restarts the server if any of these three values changed.
3. In Claude Desktop, open **Settings → Developer → Edit Config**. The `claude_desktop_config.json` file opens.
4. Add the `digi3d` entry inside `mcpServers`. If the file has no `mcpServers`, paste the entire fragment.
5. Restart Claude Desktop.

The copied fragment has this format. The path is the folder where Digi3D.AI is installed:

```json
{
  "mcpServers": {
    "digi3d": {
      "command": "C:\\Program Files\\Digi21.net\\Digi3D.AI\\Digi3D.Mcp.exe"
    }
  }
}
```

The fragment contains neither the port nor the token: `Digi3D.Mcp.exe` reads them from `%LOCALAPPDATA%\Digi3D.NET\mcp.json`, which Digi3D.AI writes when starting the server and deletes when stopping it. If Digi3D.AI is not open, Claude Desktop receives an error indicating that Digi3D.AI is not open.

If the token is empty, clicking **Copy** creates and saves a new token before copying the fragment. If the clipboard is unavailable, Digi3D.AI displays “Unable to copy to the clipboard.”
