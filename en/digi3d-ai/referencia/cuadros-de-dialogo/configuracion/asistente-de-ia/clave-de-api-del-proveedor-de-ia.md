# API key
<!-- id: clave-de-api-del-proveedor-de-ia -->
<!-- origen: eacd77e02701ca229c370cfa48b27824e10a45e6 -->

Key supplied by the AI provider for using its API. Each provider in the [AI assistant](README.md) category has its own value. The dialog displays the masked key.

Claude, OpenAI, Azure OpenAI, Kimi, and OpenRouter require an API key. LM Studio, Ollama, and OpenAI-compatible do not: leave the field empty unless the server requires one. If you enter a key for one of these three providers, Digi3D.AI sends it in the `Authorization: Bearer` header.

Digi3D.AI saves the key encrypted with machine-scope DPAPI (*Data Protection API*, _Windows_ data protection). All _Windows_ users on the computer share the key, and the encrypted value cannot be used on another computer.

Digi3D.AI only saves the key if you changed it in the dialog. Leading and trailing spaces are removed. To delete the saved key, clear the field and click **Accept**.

## Possible values

The key text displayed by the provider on its website. Instructions for obtaining it are in [Cloud providers](../../../asistente-ia/proveedores.md).

The change takes effect when you click **Accept** in the Configuration dialog. If this provider is active in the chat pane, the pane recreates the assistant, which forgets the current conversation.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration` |
| Table | `Texts` |
| Value | `<clave del proveedor>ApiKey` |
| Default value | Empty |

Provider keys are `Claude`, `OpenAI`, `AzureOpenAI`, `Kimi`, `OpenRouter`, `LMStudio`, `Ollama`, and `Generico`. For example, the Claude key is in the `ClaudeApiKey` value.

The value is text encrypted with machine-scope DPAPI and encoded in base64, rather than the plaintext key. Do not edit it with SQL statements: enter the key in the Configuration dialog.

</details>
