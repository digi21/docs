# Vaciar automáticamente
<!-- id: vaciar-automaticamente -->

Si se activa, las tareas del panel se eliminan automáticamente cuando una orden intenta añadir una tarea; de este modo, al empezar una orden nueva el panel se limpia.

## Valores posibles

* **Sí**. El panel se vacía automáticamente al añadir la primera tarea de una orden nueva.
* **No**. Las tareas se mantienen en el panel.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Valor | `LimpiarAutomaticamente` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 1 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
