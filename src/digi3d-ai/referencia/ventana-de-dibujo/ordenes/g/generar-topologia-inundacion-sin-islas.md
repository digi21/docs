# GENERAR\_TOPOLOGIA\_INUNDACION\_SIN\_ISLAS
<!-- id: generar-topologia-inundacion-sin-islas -->

Genera una topología para ejecutar con posterioridad las órdenes de inundación. Esta topología no tiene en cuenta las islas o huecos

## Parámetros

No admite parámetros.

## Observaciones

La orden forma los polígonos con las entidades visibles del archivo de dibujo activo: las de códigos encendidos y, si los códigos desconocidos están visibles, también las de códigos que no están en la tabla de códigos. Una línea visible con puntos dobles o con un solo vértice impide formar la topología, aunque su código no esté en la tabla. La topología resultante sustituye a la topología temporal anterior.

Los polígonos se ordenan por área según la opción **Orden de los polígonos** de la categoría **Topologías por inundación** del cuadro de configuración: **Ordenar de menor a mayor área** (valor por defecto) u **Ordenar de mayor a menor área**.

Si se encuentran puntos dobles o arcos de un solo punto, o no hay entidades con las que trabajar, la orden muestra un globo de error y no crea la topología.

## Características de la orden

| Tipo de orden | [Orden inmediata](generar-topologia-inundacion-sin-islas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inundación/Generar topología para inundaciones (sin huecos) |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [DESCARGAR\_TOPOLOGIA\_INUNDACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/descargar-topologia-inundacion.md)<br>[GENERAR\_TOPOLOGIA\_INUNDACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion.md) |
| Nombre interno | {73979743-2DC6-423F-A91F-AC1786742600} |
