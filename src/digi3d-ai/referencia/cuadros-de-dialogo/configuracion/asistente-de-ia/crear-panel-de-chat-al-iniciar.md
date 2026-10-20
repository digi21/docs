# Crear el panel de chat al iniciar
<!-- id: crear-panel-de-chat-al-iniciar -->

Indica si Digi3D.AI crea el panel de chat con IA al arrancar. Si no lo crea, **Ventana → Chat con IA** no abre el panel.

## Valores posibles

* **Sí**. Digi3D.AI crea el panel de chat al arrancar.
* **No**. Digi3D.AI no crea el panel de chat.

El cambio se aplica la próxima vez que se inicia Digi3D.AI.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Valor | `CrearPanelChat` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 1 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
