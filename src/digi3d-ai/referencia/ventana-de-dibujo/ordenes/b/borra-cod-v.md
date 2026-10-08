# BORRA\_COD\_V
<!-- id: borra-cod-v -->

Borra todas aquellas entidades que tengan un código igual al teclado por el usuario y que además estén asociadas a una ventana, bien en el interior de la ventana, bien en solape con ella o bien que se corten con la ventana misma.

## Parámetros

No admite parámetros.

## Observaciones

La orden pide primero que selecciones la línea que actúa de borde (ventana). La línea tiene que existir en el dibujo antes de ejecutar la orden.

No se borrarán aquellos códigos que estén apagados \([OFF](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off.md)\).

Después de seleccionar la ventana, la orden muestra el cuadro de diálogo [Selecciona códigos](/digi3d-ai/referencia/cuadros-de-dialogo/selecciona-codigos.md) con un campo propio, **Modo de búsqueda**, debajo de la lista de códigos:

![Cuadro de diálogo Borrar por código por ventana](../../../../../images/borra-cod-v.png)

| Modo de búsqueda | Descripción |
| :--- | :--- |
| Interior | Borra las entidades que están totalmente dentro de la ventana |
| Corte | Borra las entidades que están dentro de la ventana y corta las líneas que la atraviesan: borra el trozo interior y conserva los trozos exteriores |
| Solape | Borra las entidades que tienen al menos un punto dentro de la ventana |

La orden busca en todos los archivos de dibujo cargados. Una entidad se borra entera si tiene cualquiera de los códigos elegidos, aunque tenga además otros códigos. Si no hay ninguna entidad que borrar, suena el aviso de error.

## Características de la orden

| Tipo de orden | [Orden interactiva](borra-cod-v.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Editar/Mas/Cortar por polígono y código... |
| Barra de herramientas en la que aparece la orden | Eliminar y recuperar |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [BORRA\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-cod.md)<br>[BORRA\_V](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-v.md) |
| Nombre interno | {89AC83BA-9BC7-4c4d-8E5C-5384E892EB0F} |

