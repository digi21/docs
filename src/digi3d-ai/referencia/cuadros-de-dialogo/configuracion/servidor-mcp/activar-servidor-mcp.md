# Activado
<!-- id: activar-servidor-mcp -->

Indica si Digi3D.AI arranca el [servidor MCP](../../../asistente-ia/servidor-mcp.md). El servidor escucha en `http://127.0.0.1:<puerto>/mcp` y solo acepta conexiones de este equipo.

## Valores posibles

* **Sí**. Digi3D.AI arranca el servidor al aceptar el cuadro y cada vez que se inicia.
* **No**. Digi3D.AI no arranca el servidor. Si estaba arrancado, lo para al aceptar el cuadro.

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
