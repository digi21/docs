# Create chat panel at startup
<!-- id: crear-panel-de-chat-al-iniciar -->
<!-- origen: 9d7767aff8fbe15a35c39dfa016296dfe5fd0fd4 -->

Specifies whether Digi3D.AI creates the AI chat pane at startup. If it does not, **Window → AI chat** does not open the pane.

## Possible values

* **Yes**. Digi3D.AI creates the chat pane at startup.
* **No**. Digi3D.AI does not create the chat pane.

The change takes effect the next time Digi3D.AI starts.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Value | `CrearPanelChat` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
