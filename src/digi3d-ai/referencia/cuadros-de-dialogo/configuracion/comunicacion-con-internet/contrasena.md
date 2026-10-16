# Contraseña
<!-- id: contrasena -->

Permite indicar la contraseña del servidor _PROXY_.

Solo se utiliza cuando en [Tipo de conexión](tipo-de-conexion.md) has seleccionado la opción **Servidor proxy**.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Valor | `ContraseñaProxy` |
| Tipo | `REG_BINARY` (64 bytes con la contraseña cifrada) |
| Valor por defecto | Sin valor |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
