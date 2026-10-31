# Back-up copy with API CopyFile
<!-- id: copia-de-seguridad-con-api-copyfile -->
<!-- origen: b393318f36b2e77d0c5e2ba3193a7b67354d9fb8 -->

Specifies whether to create the backup by copying the file with the Windows CopyFile API, or by generating a new file and cloning entities one by one.

## Possible values

* **Yes**. The backup is created with the Windows CopyFile API.
* **No**. The backup is created by cloning entities one by one.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\IO\Digi21.Io.Bin` |
| :--- | :--- |
| Value | `CopiaSeguridadCopyFile` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
