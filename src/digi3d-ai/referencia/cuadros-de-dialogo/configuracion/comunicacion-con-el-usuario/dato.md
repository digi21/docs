# Dato
<!-- id: dato -->

Permite indicar la ruta del archivo _.wav_ con el sonido que se reproduce cuando el usuario pulsa el botón/pedal de Dato.

Solo se utiliza si en [Sonidos](sonidos.md) has seleccionado **Tarjeta de sonido**.

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Valor | `SonidoDato` |
| Tipo | `REG_SZ` |
| Valor por defecto | (vacío) |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
