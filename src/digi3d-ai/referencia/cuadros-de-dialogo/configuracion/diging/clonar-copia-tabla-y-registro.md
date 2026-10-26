# Clonar copia Tabla y Registro
<!-- id: clonar-copia-tabla-y-registro -->

Si se activa, al clonar una geometría con enlace a la base de datos se copia el enlace (Tabla y Registro).

## Valores posibles

* **Sí**. La geometría clonada conserva el enlace a Tabla y Registro de la geometría original.
* **No**. No se copia el enlace a Tabla y Registro en la geometría clonada.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Configuration` |
| :--- | :--- |
| Valor | `ClonarCopiaTablaRegistro` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 1 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
