# GENERAR\_TOPOLOGIA\_INUNDACION\_SIN\_ISLAS
<!-- id: generar-topologia-inundacion-sin-islas -->

Genera en memoria la topología para inundación que necesitan las órdenes de inundación. Esta topología no tiene en cuenta las islas o huecos.

## Parámetros

No admite parámetros.

## Para qué sirve

Esta orden es la variante sin islas de [GENERAR\_TOPOLOGIA\_INUNDACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion.md). Las dos calculan la topología temporal que necesitan las órdenes de inundación: haces clic dentro de un recinto y la orden de inundación localiza las líneas de su contorno, como la herramienta de relleno («bote de pintura») de un programa de dibujo. La lista de órdenes de inundación, cómo se ve el resultado, cuándo hay que regenerar la topología y cómo descargarla están en la página de [GENERAR\_TOPOLOGIA\_INUNDACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion.md).

Si ejecutas una orden de inundación sin haber generado antes una de las dos topologías, la orden muestra el aviso «No hay ninguna topología temporal creada», emite el sonido de error y termina.

## Diferencia con GENERAR\_TOPOLOGIA\_INUNDACION

Esta orden no asigna huecos a los recintos:

* El recinto que rodea a una isla incluye la superficie de la isla. Al seleccionarlo, las órdenes de inundación actúan solo sobre las líneas de su contorno exterior, no sobre las de la isla.
* Un punto dentro de la isla está dentro de los dos recintos: la isla y el recinto que la rodea. Al pulsar el botón de datos se selecciona el primero de los dos según el orden de los polígonos, y el botón de tentativo pasa al siguiente recinto que contiene el punto.
* El relleno con el que las órdenes de inundación resaltan el recinto que rodea a una isla cubre también la isla.

## Orden de los polígonos

La orden ordena los recintos por área según la opción **[Orden de los polígonos](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/topologias-por-inundacion/orden-de-los-poligonos.md)** de la categoría **Topologías por inundación** del cuadro de diálogo de [Configuración](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/README.md):

* **Ordenar de menor a mayor área** (valor por defecto): el botón de datos selecciona el recinto más pequeño que contiene el punto, y cada pulsación del botón de tentativo pasa al recinto siguiente en área que también lo contiene (de la isla al recinto que la rodea, y de este al que lo rodea a él).
* **Ordenar de mayor a menor área**: el recorrido es el inverso, del recinto más grande al más pequeño.

La opción solo afecta a esta orden. Se aplica la próxima vez que se genera la topología.

## Cómo se forman los recintos

* Entran solo las líneas visibles del archivo de dibujo activo: las de códigos encendidos y, si los códigos desconocidos están visibles, también las de códigos que no están en la tabla de códigos. Las líneas cuyos códigos están todos apagados no forman recintos.
* Los puntos, los textos y las demás geometrías que no son líneas no forman recintos. Los textos visibles que quedan dentro de un recinto se asocian como centroide al recinto más pequeño que los contiene.
* Los nodos de la topología son los extremos de las líneas. Dos líneas que se cruzan no cierran recintos en el cruce si no terminan en él, aunque compartan un vértice. Pártelas antes con [PARTIR\_LINEAS\_VISIBLES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/partir-lineas-visibles.md).
* Una línea suelta, que no cierra ningún recinto, no forma recinto por sí misma.

## Errores

Si no se puede formar la topología, la orden muestra un globo de error con el título «Topología», emite el sonido de error y conserva la topología temporal anterior, si la había:

| Mensaje | Causa |
| :--- | :--- |
| Encontrados puntos dobles | Los dos primeros o los dos últimos vértices de una línea visible coinciden en planimetría (puntos dobles). |
| Localizadas entidades de un solo punto | Una línea visible tiene un solo vértice. |
| No se han encontrado entidades con las que trabajar | No hay ninguna línea visible con la que formar recintos. |

Una sola línea visible con puntos dobles o con un único vértice impide formar la topología, aunque su código no esté en la tabla de códigos.

Las líneas con puntos dobles o de un solo punto se añaden además al panel de tareas, una tarea por entidad. Cada tarea lleva a su entidad al hacer clic en ella. Si está activada la opción [Vaciar automáticamente](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/panel-de-tareas/vaciar-automaticamente.md) del panel de tareas, la orden vacía el panel antes de añadir las tareas.

Cuando la topología se forma, la orden no dibuja nada ni muestra ningún mensaje. La topología resultante sustituye a la topología temporal anterior.

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
