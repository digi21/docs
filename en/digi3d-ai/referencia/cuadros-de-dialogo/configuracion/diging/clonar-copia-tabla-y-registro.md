# Clone copy Table and Record
<!-- id: clonar-copia-tabla-y-registro -->
<!-- origen: 6f9783acf8f16b837ee9d7f2fd9b36433b7277dd -->

If enabled, cloning a geometry linked to the database copies the link (Table and Record).

## Possible values

* **Yes**. The cloned geometry retains the original geometry Table and Record link.
* **No**. The Table and Record link is not copied to the cloned geometry.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Configuration` |
| :--- | :--- |
| Value | `ClonarCopiaTablaRegistro` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
