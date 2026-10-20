# Token
<!-- id: token-del-servidor-mcp -->

Clave que los clientes MCP envían en cada petición para conectar con el [servidor MCP](../../../asistente-ia/servidor-mcp.md). Digi3D.AI rechaza las peticiones que no llevan el token. El cuadro muestra el token enmascarado y no permite editarlo a mano.

## Botón Regenerar

El botón **Regenerar** crea un token nuevo de 64 caracteres hexadecimales (32 bytes aleatorios), lo guarda junto con **Activado** y **Puerto** y reinicia el servidor, sin esperar a **Aceptar**. Desde ese momento, los clientes configurados con el token anterior dejan de conectar: vuelve a configurarlos con [Claude Code](conectar-claude-code.md) o [Claude Desktop](conectar-claude-desktop.md).

Si el token está vacío, el botón **Copiar** de Claude Code o de Claude Desktop crea un token nuevo y lo guarda antes de copiar. Si el token sigue vacío al arrancar el servidor, Digi3D.AI crea uno y lo guarda.

Si cambias esta opción, **Activado** o **Puerto**, Digi3D.AI reinicia el servidor.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Valor | `McpToken` |
| Tipo | `REG_SZ` |
| Valor por defecto | Vacío (Digi3D.AI crea un token al arrancar el servidor) |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

El token se guarda sin cifrar. Cualquier programa que se ejecute con el mismo usuario de _Windows_ puede leerlo.

</details>
