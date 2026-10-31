# URL
<!-- id: url-del-proveedor-de-ia -->
<!-- origen: e5a4fe8c642cb0dcfdebf446c8b40031a85a8838 -->

Base address of an AI provider API. Each provider in the [AI assistant](README.md) category has its own value.

If the field is empty or matches the default provider address, Digi3D.AI uses the default address. Change the URL to use a local server on another computer in the network, for example `http://192.168.1.20:1234/v1` with LM Studio.

Azure OpenAI and OpenAI-compatible have no default address: enter the URL, or the chat pane cannot send requests to these providers.

## Possible values

A URL. These are the default addresses:

| Provider | Default URL |
| :--- | :--- |
| Claude | `https://api.anthropic.com/v1` |
| OpenAI | `https://api.openai.com/v1` |
| Azure OpenAI | None |
| Kimi | `https://api.moonshot.ai/v1` |
| OpenRouter | `https://openrouter.ai/api/v1` |
| LM Studio | `http://localhost:1234/v1` |
| Ollama | `http://localhost:11434/v1` |
| OpenAI-compatible | None |

If the entered address matches the default provider address, Digi3D.AI saves an empty value. If the saved value is empty and a later version changes the default provider address, Digi3D.AI uses the new address.

The change takes effect when you click **Accept** in the Configuration dialog. If this provider is active in the chat pane, the pane recreates the assistant, which forgets the current conversation.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Value | `<clave del proveedor>Url` |
| Type | `REG_SZ` |
| Default value | Empty (the default provider URL is used) |

Provider keys are `Claude`, `OpenAI`, `AzureOpenAI`, `Kimi`, `OpenRouter`, `LMStudio`, `Ollama`, and `Generico`. For example, the LM Studio URL is in the `LMStudioUrl` value.

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
