# BORRA\_E
<!-- id: borra-e -->

Borra del dibujo las entidades gráficas y textos que se indiquen.

## Parámetros

No admite parámetros.

## Observaciones

Selecciona con el cursor los elementos que quieres borrar del fichero.

Cada ejecución borra una entidad seleccionada con el cursor, o todas las entidades de una selección múltiple. Si la entidad seleccionada con el cursor no pertenece al archivo de dibujo activo, suena el aviso de error y no se borra.

Esta orden oculta los elementos seleccionados al insertar una marca de borrado en los registros del fichero. Mientras no comprimas el fichero de dibujo, puedes:

* Volver a mostrar los elementos marcados como borrados en pantalla con la orden [BORRADOS](/digi3d-ai/referencia/ventana-de-dibujo/variables/b/borrados.md).
* Recuperar los elementos marcados como borrados mediante la eliminación de la marca de borrado con la orden [RECUPERA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/recupera.md).

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | Sí |
| Opción del menú donde aparece la orden | Editar/Eliminar las entidades seleccionadas |
| Barra de herramientas en la que aparece la orden | Eliminar y recuperar |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [BORRA\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-cod.md)<br>[BORRA\_ULTIMO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-ultimo.md)<br>[BORRA\_V](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-v.md)<br>[RECUPERA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/recupera.md) |
| Nombre interno | {3FD502AE-2105-47b0-B9F1-51BE04B73DB1} |

