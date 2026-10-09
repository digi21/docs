# GENERAR\_TOPOLOGIA\_INUNDACION
<!-- id: generar-topologia-inundacion -->

Genera una topología para ejecutar con posterioridad las órdenes de inundación. Esta topología tiene en cuenta las islas o huecos

## Parámetros

No admite parámetros.

## Observaciones

La orden forma los polígonos con las líneas visibles del archivo de dibujo activo: las de códigos encendidos y, si los códigos desconocidos están visibles, también las de códigos que no están en la tabla de códigos. Una línea visible con puntos dobles o con un solo vértice impide formar la topología, aunque su código no esté en la tabla. La topología resultante sustituye a la topología temporal anterior. Si no se puede formar la topología, la orden muestra un globo de error con la causa.

## Características de la orden

| Tipo de orden | [Orden inmediata](generar-topologia-inundacion.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inundación/Generar topología para inundaciones |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [DESCARGAR\_TOPOLOGIA\_INUNDACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/descargar-topologia-inundacion.md)<br>[GENERAR\_TOPOLOGIA\_INUNDACION\_SIN\_ISLAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion-sin-islas.md) |
| Nombre interno | {DFEEED8B-17AF-4C9A-8C93-D72F4D9999C5} |
