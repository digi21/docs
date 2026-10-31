# AI assistant
<!-- id: asistente-ia -->
<!-- origen: c48d75d1f377e5cbcf656b6f33c93c07fbba9921 -->

![AI chat pane with a query about the most frequent codes](../../../images/panel-chat-ia.png)

The **AI chat pane** lets you ask an artificial intelligence assistant, **in natural language**, to query and modify the active drawing. Type what you need—for example, *“zoom to the first building,”* *“how many contours are there?”* or *“delete texts with code 050146”*—and the assistant performs the requested operations in the drawing window.

No programming knowledge is required: the assistant translates your request into drawing operations.

The assistant supports several **AI providers**:

- **Cloud services**: Claude (Anthropic), OpenAI, Azure OpenAI, Kimi (Moonshot AI) and OpenRouter.
- **Local servers**, which run the model on your computer or a server on your network without sending data over the internet: LM Studio, Ollama or any server compatible with the OpenAI API.

## Opening the pane

Select **Window → AI chat**. The pane is dockable, like other Digi3D.AI panes.

## Configuring the provider

Select and configure a provider the first time you open the pane:

1. Select a provider in the **Provider** drop-down list in the pane header.
2. Click **⚙** in the header. Opens [Configuration](../cuadros-de-dialogo/configuracion/README.md) with [**AI assistant**](../cuadros-de-dialogo/configuracion/asistente-de-ia/README.md) selected.
3. Expand the provider item and enter the [**API key**](../cuadros-de-dialogo/configuracion/asistente-de-ia/clave-de-api-del-proveedor-de-ia.md) supplied by your provider. Local servers do not require a key.
4. Check the [**URL**](../cuadros-de-dialogo/configuracion/asistente-de-ia/url-del-proveedor-de-ia.md). If empty, Digi3D.AI uses the provider's standard address. Azure OpenAI and OpenAI-compatible have no standard address: enter their URL. Also change it for a local server on another computer.
5. Click **Accept**.
6. Select a model in **Model**. Without a selected model, the assistant does not send the request and displays a notice in the conversation.

Digi3D.AI saves each provider's configuration separately, so switching providers does not require reentering keys. The URL and model are saved per _Windows_ user. The API key is encrypted using _Windows_ data protection (DPAPI) at machine level: all users on the computer share it, and it does not work if copied to another computer.

Accepting Configuration with a new URL or API key for the active provider makes the assistant forget the current conversation, although messages remain on screen.

**AI assistant** also contains these pane options: [Show run_python code](../cuadros-de-dialogo/configuracion/asistente-de-ia/mostrar-codigo-run-python.md), [Show token counter](../cuadros-de-dialogo/configuracion/asistente-de-ia/mostrar-contador-de-tokens.md), [Confirm dangerous operations](../cuadros-de-dialogo/configuracion/asistente-de-ia/confirmar-operaciones-peligrosas.md) and [Create chat panel at startup](../cuadros-de-dialogo/configuracion/asistente-de-ia/crear-panel-de-chat-al-iniciar.md).

Provider instructions:

- [Cloud providers](proveedores.md): where to obtain each service's API key and what to enter in each field.
- [Configuring LM Studio](lm-studio.md): step-by-step tutorial for running the model on your computer with LM Studio.
- [Configuring Ollama](ollama.md): step-by-step tutorial for running the model on your computer or a network server with Ollama.

## Choosing a model

**Model** shows:

- The provider's recommended models, if any.
- Models returned by the provider's server. Digi3D.AI requests this list at startup, when switching to a provider whose list has not yet been requested, and when accepting Configuration with a new URL or API key. It does not request it if the URL is missing or a provider that requires an API key has none. Azure OpenAI does not provide this list. Click **↻** to request it again.
- **Other...**, to enter a model identifier absent from the list manually.

Digi3D.AI remembers the model selected for each provider.

## Example requests

These examples progress from easier to harder. Use them to test a new provider or model. Replace example codes (`020400`, `050146`…) with codes present in your drawing.

**Queries.** The assistant queries the drawing without modifying it.

- *“How many geometries are loaded?”*
- *“How many geometries have each code? Give me the ten most frequent.”*
- *“What are the maximum and minimum elevations in the entire drawing?”*

**Concept searches.** The assistant looks for the concept's codes in the codes table and, if absent, in drawing texts.

- *“How many buildings are there?”*
- *“How many index contours are there?”* The assistant distinguishes index contours from intermediate contours by code and elevation relative to the contour interval.
- *“Take me to Plaza Mayor.”* Replace “Plaza Mayor” with a place name labeled in your drawing. The assistant searches for the text and zooms to it.

**Calculations.** Check results with Digi3D.AI measurement commands.

- *“What is the total area of polygons with code 020400?”*
- *“Which point with code X is closest to the point with code Y?”*

**Navigation.**

- *“Zoom to the first building.”*

**Modifications.** The assistant reports how many geometries it changed. Undo the change with UNDO.

- *“Replace code 020400 with 020401 in every geometry that has it.”*
- *“Delete all geometries with code 020401.”* Opens **Security confirmation** (see *Operations requiring confirmation*).

**Conversation with context.** The assistant remembers the subject.

- *“How many lines have code 020400?”* followed by *“And which is the longest?”*

**Environment limits.** The assistant has no operating system access.

- *“What environment variables does the system have?”* The assistant explains that it cannot query them.

**Reusable programs.** If you request a command, interactive command or quality control, the assistant writes Python code and shows it for you to install.

- *“Write a quality control that checks contours for repeated vertices.”*

The assistant knows the **project's codes table**. It therefore understands concepts such as “building,” “contour” and “parcel” without requiring their codes. If a name matches no code, it also searches drawing texts (for example, a labeled place name).

The assistant responds in the language you use.

## Operations requiring confirmation

Before an irreversible or extensive operation, Digi3D.AI opens **Security confirmation** with a summary of the assistant's intended action. Confirmation is required for:

- Deleting or overwriting files on disk.
- Running system commands.
- Deleting drawing geometries.
- Accessing the network or web services.

Click **Allow** to perform the operation or **Cancel** to prevent it. Cancelling leaves it unexecuted and tells the assistant not to repeat it. Selecting **Allow the remaining operations in this conversation** suppresses further questions until you start a new conversation.

## Stopping the assistant

- While the assistant waits for the provider's response, click **Stop**.
- While it performs a drawing operation, Digi3D.AI does not respond to the interface and **Stop** does not work: press **Esc** with Digi3D.AI in the foreground. The operation stops when it next executes Python code, and the assistant reports cancellation. If it is inside a lengthy Digi3D.AI function, it stops when that function returns.
- An operation lasting more than **5 minutes** stops automatically. Change the limit in [Advanced settings](#advanced-settings).

## Undo

Undo the assistant's drawing changes with **UNDO**, like any other change. Each assistant operation is one UNDO step; one request may generate several operations.

## Conversation and history

- The assistant remembers the conversation: ask *“and which is the longest?”* after asking about lines with a particular code.
- Click **＋** in the header to start a new conversation. The assistant forgets the previous one. Switching providers also starts a new conversation.
- With the cursor on the first line of the text box, press **Up Arrow** to recall earlier messages and **Down Arrow** to return to more recent ones. Digi3D.AI saves the last 100 messages between sessions.

## Things to consider

- **AI can make mistakes.** Review results, especially after important operations.
- **Privacy.** With a cloud provider, conversation text and drawing data queried by the assistant (codes, coordinates, texts) are sent to that provider. With LM Studio or Ollama, all data stays on your computer or network.
- **Cost.** Cloud providers charge the API key holder for usage. Local servers have no usage charges but require a computer with a suitable graphics card.
- **Connection.** Cloud providers require internet access. If the provider is overloaded or the account exceeds its usage limit, Digi3D.AI retries up to 3 times before showing the error.
- **Restricted Python environment.** The assistant can use only Digi3D.AI libraries and part of the Python standard library, without operating system modules such as `os` or `subprocess`. Additional packages cannot be installed.

## Advanced settings

Change the operation duration limit in the Windows registry under `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration`. Digi3D.AI reads this DWORD value for each assistant operation.

| Value | Default | Effect |
| --- | --- | --- |
| `ClaudeChatLimiteSegundos` | 300 | Maximum operation duration in seconds before automatic cancellation. 0 removes the limit. |

Change the pane's other options in Configuration under [AI assistant](../cuadros-de-dialogo/configuracion/asistente-de-ia/README.md):

| Option | Registry value | Default |
| --- | --- | --- |
| [Confirm dangerous operations](../cuadros-de-dialogo/configuracion/asistente-de-ia/confirmar-operaciones-peligrosas.md) | `ClaudeChatConfirmaciones` | Yes |
| [Show token counter](../cuadros-de-dialogo/configuracion/asistente-de-ia/mostrar-contador-de-tokens.md) | `ClaudeChatTokens` | No |
| [Show run_python code](../cuadros-de-dialogo/configuracion/asistente-de-ia/mostrar-codigo-run-python.md) | `ClaudeChatDebug` | No |
| [Create chat panel at startup](../cuadros-de-dialogo/configuracion/asistente-de-ia/crear-panel-de-chat-al-iniciar.md) | `CrearPanelChat` | Yes |

An administrator can replace the assistant's instructions by creating `%PROGRAMDATA%\Digi3D.NET\ChatSystemPromptParteA.txt`. If present and nonempty, Digi3D.AI uses its contents instead of the built-in instructions. The Digi3D.AI API reference is always added.

## Requirements

- **WebView2** (Microsoft Edge), included with Windows 10 and 11.
- A cloud provider's **API key**, or a local LM Studio or Ollama server.

## See also

- [MCP server](servidor-mcp.md): lets Claude Code, Claude Desktop or another MCP client work in Digi3D.AI with the same capabilities as this pane.
- [Python programming](../../programacion/python/README.md): automate tasks with your own scripts. The assistant uses this same API.
