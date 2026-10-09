# CAMB\_Z\_ACTIVA
<!-- id: camb-z-activa -->

Cambia la Z de uno o más elementos a la Z que está activa en ese momento.

## Parámetros

No admite parámetros.

## Observaciones

Coloca el cursor a la Z deseada, ejecuta la orden _CAMB\_Z\_ACTIVA_ y selecciona las entidades a cambiar. La orden asigna a todos los vértices de cada entidad la coordenada Z del cursor en el momento de la selección.

Tras seleccionar una entidad, la orden sigue activa y solicita otra. Con selección múltiple, la orden modifica todas las entidades seleccionadas y termina.

Si el control de calidad descarta la entidad modificada, la entidad original se conserva sin cambios. Con varias entidades, cada una se trata de forma independiente: solo se conserva el original de cada entidad descartada y las demás se modifican.

## Características de la orden

| Tipo de orden | [Orden interactiva](camb-z-activa.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociada ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [CAMB\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-z.md)<br>[ZFIJA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zfija.md) |
| Nombre interno | {747437AC-AEA0-4135-B8DA-DDD1D2C9B21D} |

