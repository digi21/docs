# Mostrar el contador de tokens
<!-- id: mostrar-contador-de-tokens -->

Indica si la cabecera del panel de chat muestra los *tokens* de la conversación: de entrada, de entrada en caché y de salida. Un *token* es una unidad de texto por la que cobran los proveedores.

## Valores posibles

* **Sí**. La cabecera muestra el contador de tokens.
* **No**. La cabecera no muestra el contador.

El cambio se aplica al pulsar **Aceptar** en el cuadro Configuración.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Valor | `ClaudeChatTokens` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 0 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
