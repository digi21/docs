# Show token counter
<!-- id: mostrar-contador-de-tokens -->
<!-- origen: 387fe20e9636a8ace0ab2592872d6e984c8b70c5 -->

Specifies whether the chat pane header displays conversation *tokens*: input, cached input, and output. A *token* is a unit of text for which providers charge.

## Possible values

* **Yes**. The header displays the token counter.
* **No**. The header does not display the counter.

The change takes effect when you click **Accept** in the Configuration dialog.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Value | `ClaudeChatTokens` |
| Type | `REG_DWORD` |
| Default value | 0 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
