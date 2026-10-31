# Snap inserts a vertex into the selected line
<!-- id: tentativo-inserta-un-vertice-en-la-linea-seleccionada -->
<!-- origen: f90c460ff8b03269514be0c17aa6a1ad04a2b7a8 -->

Specifies when a snap inserts a vertex in the selected line. Only has an effect if the [SNAP\_INSERT](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tentativo-inserta.md) variable is enabled.

## Possible values

* **Provided that a selection is confirmed**. The vertex is inserted when confirming the snap, regardless of the command running.
* **Only when registering lines** \(default\). The vertex is only inserted if no command is running or if the running command is [LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md).

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Extensiones\DigiNG.OrdenesStandard\Linea` |
| :--- | :--- |
| Value | `TentativoInsertaInsertaSiempre` |
| Type | `REG_DWORD` |
| Default value | 0 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
