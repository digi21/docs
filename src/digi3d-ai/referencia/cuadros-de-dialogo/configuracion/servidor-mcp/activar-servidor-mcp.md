# Activado
<!-- id: activar-servidor-mcp -->

Indica si Digi3D.AI arranca el [servidor MCP](../../../asistente-ia/servidor-mcp.md). El servidor escucha en `http://127.0.0.1:<puerto>/mcp` y solo acepta conexiones de este equipo.

## Valores posibles

* **Sí**. Digi3D.AI inicia el servidor MCP al aceptar el cuadro de diálogo y en cada inicio del programa mientras esta opción permanezca activada.
* **No**. Digi3D.AI no inicia el servidor MCP. Si el servidor MCP estaba en ejecución, Digi3D.AI detiene el servidor al aceptar el cuadro de diálogo.

Si cambias esta opción, **Puerto** o **Token**, Digi3D.AI reinicia el servidor al pulsar **Aceptar**.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Valor | `McpActivo` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 0 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
