# Usuario
<!-- id: usuario -->

Permite indicar el nombre de usuario del servidor _PROXY_.

El nombre de usuario solo se utiliza cuando en [Tipo de conexión](tipo-de-conexion.md) has seleccionado la opción **Servidor proxy**.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Valor | `UsuarioProxy` |
| Tipo | `REG_SZ` |
| Valor por defecto | (vacío) |

El nombre de usuario se almacena por separado para cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no modifican el nombre de usuario.

</details>
