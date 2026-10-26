# URL
<!-- id: url-del-proveedor-de-ia -->

Dirección base de la API de un proveedor de IA. Cada proveedor de la categoría [Asistente de IA](README.md) tiene su propio valor.

Si el campo está vacío o es igual a la dirección por defecto del proveedor, Digi3D.AI usa la dirección por defecto. Cambia la URL para usar un servidor local en otro equipo de la red, por ejemplo `http://192.168.1.20:1234/v1` con LM Studio.

Azure OpenAI y OpenAI-compatible no tienen dirección por defecto: escribe la URL, o el panel de chat no puede enviar peticiones a esos proveedores.

## Valores posibles

Una dirección URL. Estas son las direcciones por defecto:

| Proveedor | URL por defecto |
| :--- | :--- |
| Claude | `https://api.anthropic.com/v1` |
| OpenAI | `https://api.openai.com/v1` |
| Azure OpenAI | Ninguna |
| Kimi | `https://api.moonshot.ai/v1` |
| OpenRouter | `https://openrouter.ai/api/v1` |
| LM Studio | `http://localhost:1234/v1` |
| Ollama | `http://localhost:11434/v1` |
| OpenAI-compatible | Ninguna |

Si la dirección escrita es igual a la dirección por defecto del proveedor, Digi3D.AI guarda el valor vacío. Si el valor guardado está vacío y una versión posterior cambia la dirección por defecto del proveedor, Digi3D.AI usa la nueva dirección.

El cambio se aplica al pulsar **Aceptar** en el cuadro Configuración. Si el proveedor es el activo en el panel de chat, el panel crea el asistente de nuevo y este olvida la conversación en curso.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Valor | `<clave del proveedor>Url` |
| Tipo | `REG_SZ` |
| Valor por defecto | Vacío (se usa la URL por defecto del proveedor) |

Las claves de proveedor son `Claude`, `OpenAI`, `AzureOpenAI`, `Kimi`, `OpenRouter`, `LMStudio`, `Ollama` y `Generico`. Por ejemplo, la URL de LM Studio está en el valor `LMStudioUrl`.

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
