# Fin orden
<!-- id: fin-orden -->

Permite indicar la ruta del archivo _.wav_ con el sonido que se reproduce cuando finaliza una orden.

Solo se utiliza si en [Sonidos](sonidos.md) has seleccionado **Tarjeta de sonido**.

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Valor | `SonidoFinOrden` |
| Tipo | `REG_SZ` |
| Valor por defecto | (vacío) |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
