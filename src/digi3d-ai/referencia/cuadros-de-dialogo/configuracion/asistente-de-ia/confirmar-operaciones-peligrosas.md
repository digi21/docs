# Confirmar las operaciones peligrosas
<!-- id: confirmar-operaciones-peligrosas -->

Indica si Digi3D.AI muestra el cuadro **Confirmación de seguridad** antes de que el asistente del panel de chat, o un cliente del [servidor MCP](../../../asistente-ia/servidor-mcp.md) (Model Context Protocol), borre geometrías, escriba o borre archivos, ejecute órdenes del sistema o acceda a la red.

## Valores posibles

* **Sí**. Digi3D.AI pide confirmación antes de cada operación peligrosa.
* **No**. Digi3D.AI ejecuta las operaciones peligrosas sin pedir confirmación. No se recomienda.

El cambio se aplica al pulsar **Aceptar** en el cuadro Configuración. El servidor MCP lo aplica sin reiniciarse.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Valor | `ClaudeChatConfirmaciones` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 1 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
