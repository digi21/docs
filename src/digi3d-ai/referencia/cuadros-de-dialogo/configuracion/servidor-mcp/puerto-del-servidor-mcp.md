# Puerto
<!-- id: puerto-del-servidor-mcp -->

Indica el puerto TCP en el que escucha el [servidor MCP](../../../asistente-ia/servidor-mcp.md) (Model Context Protocol). El servidor solo acepta conexiones de este equipo (`127.0.0.1`).

Cambia el puerto si otro programa, normalmente otra instancia de Digi3D.AI, ya usa el 4457. Después de cambiarlo, vuelve a copiar la orden de [Claude Code](conectar-claude-code.md): la orden anterior contiene el puerto antiguo.

## Valores posibles

Un número entero entre 1 y 65535, ambos extremos incluidos. Si el número de puerto es menor que 1 o mayor que 65535, al pulsar **Aceptar**, **Regenerar** o **Copiar** Digi3D.AI muestra el mensaje «El puerto del servidor MCP tiene que estar entre 1 y 65535.» y no guarda los valores de Activado, Puerto ni Token: el cuadro de diálogo sigue abierto para que corrijas el puerto.

Si cambias esta opción, **Activado** o **Token**, Digi3D.AI reinicia el servidor al pulsar **Aceptar**, **Regenerar** o **Copiar**.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Valor | `McpPuerto` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 4457 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
