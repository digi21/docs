# Copy DB attributes during cloning
<!-- id: copiar-atributos-de-bbdd-al-clonar -->
<!-- origen: c1118cd433f06d20b6e5cac4f79282efd57385c2 -->

Specifies whether cloning an entity copies database attributes from the original entity to the cloned entity.

## Possible values

* **Yes**. The cloned entity retains the original entity database attributes.
* **No**. Database attributes are not copied to the cloned entity.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Configuration` |
| :--- | :--- |
| Value | `CopiarAtributosBBDDClonar` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
