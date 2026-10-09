# ELIMINAR\_CODIGOS\_DESCONOCIDOS
<!-- id: eliminar-codigos-desconocidos -->

Elimina todos los códigos desconocidos del archivo de dibujo.

## Parámetros

No admite parámetros.

## Observaciones

Un código es desconocido cuando no está definido en la tabla de códigos. La orden recorre las entidades no borradas del archivo de referencia activo y quita a cada una sus códigos desconocidos. Si todos los códigos de una entidad son desconocidos, la orden borra la entidad.

Cada entidad se trata de forma independiente: si Digi3D.AI descarta una entidad sin los códigos desconocidos, solo se conserva su original y las demás se modifican.

## Características de la orden

| Tipo de orden | [Orden inmediata](eliminar-codigos-desconocidos.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [RENOMBRAR\_CODIGOS\_DESCONOCIDOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renombrar-codigos-desconocidos.md) |
| Nombre interno | {7492F25D-B5E7-4969-B8C4-F37A5F8B07EC} |
