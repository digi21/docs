# Memorize parameters
<!-- id: memorizar-parametros -->
<!-- origen: 8204729c7c8efa4688b1fc89daf865de4381949a -->

If enabled, parameters such as coordinates, zoom level, etc. are remembered for retrieval the next time the model loads.

## Possible values

* **Yes**. Model parameters are remembered for retrieval the next time you load the model.
* **No**. Model parameters are not remembered.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration\Scroll` |
| :--- | :--- |
| Value | `MemorizarParametros` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
