# Entrar
<!-- id: entrar -->

Permite indicar la ruta del archivo _.wav_ con el sonido que se reproduce cuando el usuario entra dentro del polígono seleccionado con la orden [LIMITE_1](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/limite-1.md).

Solo se utiliza si en [Sonidos](sonidos.md) has seleccionado **Tarjeta de sonido**.

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Valor | `SonidoEntrar` |
| Tipo | `REG_SZ` |
| Valor por defecto | (vacío) |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
