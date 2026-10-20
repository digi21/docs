# Clave de API
<!-- id: clave-de-api-del-proveedor-de-ia -->

Clave que da el proveedor de IA para usar su API. Cada proveedor de la categoría [Asistente de IA](README.md) tiene su propio valor. El cuadro muestra la clave enmascarada.

Claude, OpenAI, Azure OpenAI, Kimi y OpenRouter necesitan clave de API. LM Studio, Ollama y OpenAI-compatible no la necesitan: deja el campo vacío, salvo que el servidor la pida. Si escribes una clave en uno de esos tres proveedores, Digi3D.AI la envía en la cabecera `Authorization: Bearer`.

Digi3D.AI guarda la clave cifrada con DPAPI (*Data Protection API*, la protección de datos de _Windows_) con alcance de equipo. Todos los usuarios de _Windows_ del equipo comparten la clave, y el valor cifrado no sirve en otro equipo.

Digi3D.AI guarda la clave solo si la has cambiado en el cuadro. Elimina los espacios del principio y del final. Para borrar la clave guardada, vacía el campo y pulsa **Aceptar**.

## Valores posibles

El texto de la clave que muestra el proveedor en su web. Las instrucciones para obtenerla están en [Proveedores en la nube](../../../asistente-ia/proveedores.md).

El cambio se aplica al pulsar **Aceptar** en el cuadro Configuración. Si el proveedor es el activo en el panel de chat, el panel crea el asistente de nuevo y este olvida la conversación en curso.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration` |
| Tabla | `Texts` |
| Valor | `<clave del proveedor>ApiKey` |
| Valor por defecto | Vacío |

Las claves de proveedor son `Claude`, `OpenAI`, `AzureOpenAI`, `Kimi`, `OpenRouter`, `LMStudio`, `Ollama` y `Generico`. Por ejemplo, la clave de Claude está en el valor `ClaudeApiKey`.

El valor es el texto cifrado con DPAPI de equipo y codificado en base64, no la clave en claro. No lo edites con sentencias SQL: escribe la clave en el cuadro Configuración.

</details>
