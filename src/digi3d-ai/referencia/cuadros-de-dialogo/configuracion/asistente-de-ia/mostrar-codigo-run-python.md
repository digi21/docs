# Mostrar el código de run_python
<!-- id: mostrar-codigo-run-python -->

Indica si el panel de chat muestra el código Python que el asistente ejecuta con la herramienta `run_python` y la salida de ese código. Sirve para diagnosticar problemas.

## Valores posibles

* **Sí**. El chat muestra el código Python y su salida.
* **No**. El chat no muestra el código.

El cambio se aplica al pulsar **Aceptar** en el cuadro Configuración.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Valor | `ClaudeChatDebug` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 0 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
