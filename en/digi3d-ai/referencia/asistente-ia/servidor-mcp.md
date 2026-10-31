# MCP server
<!-- id: servidor-mcp -->
<!-- origen: 2590beca2441b6ce3d1b41816d7dff0abeacc4ab -->

The **MCP server** lets an AI client outside Digi3D.AI, such as **Claude Code** or **Claude Desktop**, query and modify the drawing in an open Digi3D.AI instance. MCP (*Model Context Protocol*) connects these clients to external tools.

The client has the same capabilities as the [AI chat pane](README.md): runs Python code on the drawing using the Digi3D.AI API, runs commands, opens and closes drawings, controls the photogrammetric window and sees both windows. You see its actions in Digi3D.AI as it works.

## Enabling the server

The server is disabled by default. To enable it:

1. Select **Tools/Configuration...** to open [Configuration](../cuadros-de-dialogo/configuracion/README.md).
2. Open [**MCP server**](../cuadros-de-dialogo/configuracion/servidor-mcp/README.md).
3. Set [**Enabled**](../cuadros-de-dialogo/configuracion/servidor-mcp/activar-servidor-mcp.md) to **Yes**.
4. If another program uses port 4457, enter another number in [**Port**](../cuadros-de-dialogo/configuracion/servidor-mcp/puerto-del-servidor-mcp.md).
5. Click **Accept**. Changing **Enabled**, **Port** or **Token** restarts the server.

On startup, Digi3D.AI writes `http://127.0.0.1:4457/mcp`, using the configured port, in **Results**. If the port is occupied, reports there that the server could not start: another program, usually another Digi3D.AI instance, uses it. Change the port or close the other instance.

Digi3D.AI remembers whether the server is enabled and starts it whenever the program starts.

## Connecting Claude Code

1. Under **MCP server** in Configuration, click **Copy** for [**Claude Code**](../cuadros-de-dialogo/configuracion/servidor-mcp/conectar-claude-code.md). Copies a command such as:

   ```
   claude mcp add --transport http digi3d http://127.0.0.1:4457/mcp --header "Authorization: Bearer 3f9a…"
   ```

2. Paste it into a console and run it. Claude Code saves the server as `digi3d`.
3. Open Claude Code and request a drawing task, such as *“draw a line in Digi3D from (0,0,0) to (100,100,0) with code 020100 and take a screenshot of the window.”*

The command includes the [**token**](../cuadros-de-dialogo/configuracion/servidor-mcp/token-del-servidor-mcp.md), a key generated the first time the server is enabled. Digi3D.AI rejects requests without it.

## Connecting Claude Desktop

Claude Desktop does not connect directly to a local HTTP (Hypertext Transfer Protocol) address: it starts a program and communicates through standard input and output. `Digi3D.Mcp.exe`, in the Digi3D.AI installation folder, forwards each message to the open Digi3D.AI instance.

1. Under **MCP server** in Configuration, click **Copy** for [**Claude Desktop**](../cuadros-de-dialogo/configuracion/servidor-mcp/conectar-claude-desktop.md). Copies a snippet such as:

   ```json
   {
     "mcpServers": {
       "digi3d": {
         "command": "C:\\Program Files\\Digi21.net\\Digi3D.AI\\Digi3D.Mcp.exe"
       }
     }
   }
   ```

2. In Claude Desktop, open **Settings → Developer → Edit Config** to open `claude_desktop_config.json`.
3. Add `digi3d` inside `mcpServers`. If `mcpServers` is absent, paste the full snippet.
4. Restart Claude Desktop.

`Digi3D.Mcp.exe` reads the token from `%LOCALAPPDATA%\Digi3D.NET\mcp.json`, which Digi3D.AI writes when starting the server and deletes when stopping it. You need not supply it. If Digi3D.AI is closed, the client receives an error explaining this.

## Tools provided by Digi3D.AI

| Tool | Action |
| --- | --- |
| `run_python` | Runs Python in the Digi3D.AI interpreter, using the chat pane's restricted environment. Returns printed output and errors. The main tool for querying, creating, modifying and deleting geometries. |
| `run_command` | Runs a Digi3D.AI command as if entered on the command line, such as `NOMBRE=parámetros`. Reports whether it finished, failed, does not exist or remains active awaiting input. If the command describes its parameters and the supplied parameters match no supported form, or match a form opening a dialog, does not run it and returns an error listing supported forms. If only the photogrammetric window is open, runs that window's commands. |
| `list_commands` | Lists commands with titles and descriptions. Accepts a text filter. |
| `get_command_help` | Returns a command's help page and supported parameter forms: each parameter's name and type, parameters depending on another's value, each value's behavior and forms opening a dialog. |
| `get_state` | Returns drawing window state (loaded files, active file, geometry count, active codes, coordinate system, extents, active scale, contour interval and current command), photogrammetric window state (model, sensor, cursor position, zoom and 3D camera) and the loaded photogrammetric project. |
| `view_screenshot` | Returns a drawing or photogrammetric window image so the client can check its drawing or cursor position. |
| `get_api_reference` | Returns the full Digi3D.AI Python API reference. Also available as resource `digi3d://api-reference`. |

On connection, the client also receives the same API instructions as the chat pane assistant.

## Client capabilities and limits

- **Drawing and editing.** Creates points, lines, polygons and texts using `run_python`, assigns codes and adds them to the drawing. Also modifies and deletes geometries.
- **Opening and closing drawings.** Closes the open drawing and opens another file with its codes table and parameters. Digi3D.AI opens one drawing at a time. Omitted parameters use the last values from the open drawing dialog.
- **Photogrammetric window.** Loads a photogrammetric project and one of its models, opens a `.d3d` file, moves the cursor to coordinates or the origin, changes zoom, moves to the next or previous model or strip and, for point cloud and stereoscopic orthophoto models, changes camera position and orientation.
- **Interactive commands.** A command awaiting points marked by mouse or pedal remains active; the client cannot mark them. Complete or cancel it in Digi3D.AI with **Esc**. The client draws using `run_python`.
- **Dialogs.** If a command opens a dialog, the client request waits until you close it. Opening a drawing, project or model shows none: Digi3D.AI supplies a cautious answer to its questions and returns a notice to the client (see [Opening without dialogs](../../programacion/python/referencia/digi3d/functions.md#opening-without-dialogs)). The client cannot open menus or fill dialogs.
- **One operation at a time.** Requests run sequentially. A request arriving while a dialog awaits an answer receives a notice that Digi3D.AI is busy and can be retried later.
- **Python variables.** Variables defined by client code persist between requests. The chat pane shares this variable namespace: starting a new conversation there clears them.

## Undo and confirmations

Each `run_python` or `run_command` call is one **UNDO** step.

Operations requiring confirmation in the chat pane—deleting geometries, deleting or overwriting files, running system commands and accessing the network—also require it for MCP clients. Digi3D.AI opens **Security confirmation** and the request waits for your answer. Selecting **Allow the remaining operations in this conversation** suppresses questions for all MCP clients until the server restarts.

## Security

- The server accepts connections only from this computer (`127.0.0.1`). Other network computers cannot connect.
- Every request must include the token. If you suspect someone else knows it, click **Regenerate** under **Token** in Configuration, then **Accept**. Reconfigure clients afterwards: the old token is invalid.
- The server rejects requests originating from a web page open in a browser.
- The token is stored unencrypted in the user's _Windows_ registry and `%LOCALAPPDATA%\Digi3D.NET\mcp.json`. Any program running as that user can read it.

## Registry settings

Configuration's [MCP server](../cuadros-de-dialogo/configuracion/servidor-mcp/README.md) options are stored under `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration`. Use this table to change them outside the dialog, for example with deployment tooling. Digi3D.AI reads them at startup.

| Value | Type | Default | Effect |
| --- | --- | --- | --- |
| `McpActivo` | DWORD | 0 | 1 starts the MCP server when Digi3D.AI starts. |
| `McpPuerto` | DWORD | 4457 | Server listening port. |
| `McpToken` | String | (empty) | Token clients must send. If empty, Digi3D.AI generates one when starting the server. |
| `ClaudeChatConfirmaciones` | DWORD | 1 | 0 disables **Security confirmation**, including for MCP clients. Disabling confirmations is not recommended: Digi3D.AI would stop requesting permission to delete geometries or files, overwrite files, run system commands and access the network. |

## See also

- [AI assistant](README.md)
- [Python programming](../../programacion/python/README.md): the API used by the client.
