# GENERAR\_TOPOLOGIA\_INUNDACION
<!-- id: generar-topologia-inundacion -->

Genera en memoria la topología para inundación que necesitan las órdenes de inundación. Esta topología tiene en cuenta las islas o huecos.

## Parámetros

No admite parámetros.

## Para qué sirve

Las órdenes de inundación trabajan sobre un recinto cerrado sin que tengas que seleccionar una a una las líneas que lo delimitan: haces clic dentro del recinto y la orden localiza las líneas de su contorno. Es el modo de trabajo de la herramienta de relleno («bote de pintura») de un programa de dibujo.

Para saber qué recinto contiene el cursor, esas órdenes necesitan una topología de recintos calculada de antemano. Esta orden la calcula: forma los recintos con todas las líneas visibles del archivo de dibujo activo y guarda el resultado en memoria como topología temporal. La topología no se guarda en el archivo de dibujo ni se añade a las topologías cargadas.

Son órdenes de inundación:

| Orden | Opción del menú | Qué hace con los recintos seleccionados |
| :--- | :--- | :--- |
| [PONER\_ATR\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/poner-atr-r.md) | Inundación/Añadir códigos activos | Añade los códigos activos a las líneas del contorno. |
| [ANADE\_CODIGOS\_ACTIVOS\_Y\_CENTROIDE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/anade-codigos-activos-y-centroide.md) | Inundación/Añadir códigos activos y centroide... | Añade los códigos activos a las líneas del contorno y, opcionalmente, un centroide. |
| [EDITAR\_CODIGOS\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-codigos-r.md) | Inundación/Editar códigos... | Añade y elimina códigos de las líneas del contorno con un cuadro de diálogo. |
| [BORRA\_COD\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-cod-r.md) | Inundación/Eliminar código... | Borra un código de las líneas del contorno. |
| [CAMB\_COD\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-cod-r.md) | Inundación/Cambiar códigos | Sustituye códigos de las líneas del contorno por el código activo. |
| [PONER\_COD\_RECINTO\_CENTROIDE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/poner-cod-recinto-centroide.md) | — | Añade un código a las líneas del contorno e inserta un texto de centroide. |
| [MOSTRAR\_COD\_I](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mostrar-cod-i.md) | — | Escribe en pantalla los códigos de las líneas del contorno. |
| [DIBUJA\_R\_I](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja-r-i.md) | Inundación/Generar polígono | Crea un polígono con el contorno de los recintos. |
| [BUSCAR\_CENTROIDE\_I](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/buscar-centroide-i.md) | Inundación/Buscar centroide | Centra la vista en el centroide del recinto. |
| [COPIAR\_CENTROIDE\_I](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copiar-centroide-i.md) | Inundación/Copiar centroide | Copia el centroide de un recinto en otros recintos. |
| [ZOOME\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoome-r.md) | Zooms/Zoom a la extensión del recinto (por inundación) | Ajusta la vista a la extensión de los recintos. |
| [SELECCIONA\_INUNDACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-inundacion.md) | Inmediato/Selecciona por inundación | Envía las líneas del contorno a la orden activa. |

Si ejecutas una orden de inundación sin haber generado antes la topología, la orden muestra el aviso «No hay ninguna topología temporal creada», emite el sonido de error y termina. Mientras no hay topología, las opciones del menú que lanzan esas órdenes están deshabilitadas.

## Cómo se forman los recintos

* Entran solo las líneas visibles del archivo de dibujo activo: las de códigos encendidos y, si los códigos desconocidos están visibles, también las de códigos que no están en la tabla de códigos. Las líneas cuyos códigos están todos apagados no forman recintos.
* Los puntos, los textos y las demás geometrías que no son líneas no forman recintos. Los textos visibles que quedan dentro de un recinto se asocian como centroide al recinto más pequeño que los contiene.
* Los nodos de la topología son los extremos de las líneas. Dos líneas que se cruzan no cierran recintos en el cruce si no terminan en él, aunque compartan un vértice. Pártelas antes con [PARTIR\_LINEAS\_VISIBLES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/partir-lineas-visibles.md).
* Una línea suelta, que no cierra ningún recinto, no forma recinto por sí misma. Para localizar los extremos sin conectar, usa [DETECTAR\_LINEAS\_VISIBLES\_NO\_CONECTADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-lineas-visibles-no-conectadas.md).
* Una isla (un recinto rodeado por otro) es un hueco del recinto que la rodea. Al hacer clic dentro de la isla se selecciona la isla; al hacer clic entre la isla y el contorno exterior se selecciona el recinto exterior. Las órdenes de inundación actúan también sobre las líneas que delimitan los huecos del recinto seleccionado.

## Errores

Si no se puede formar la topología, la orden muestra un globo de error con el título «Topología», emite el sonido de error y conserva la topología temporal anterior, si la había:

| Mensaje | Causa |
| :--- | :--- |
| Detectadas líneas con puntos dobles | Los dos primeros o los dos últimos vértices de una línea visible coinciden en planimetría (puntos dobles). |
| Detectadas entidades con un único punto | Una línea visible tiene un solo vértice. |
| No hay datos suficientes | No hay ninguna línea visible con la que formar recintos. |

Una sola línea visible con puntos dobles o con un único vértice impide formar la topología, aunque su código no esté en la tabla de códigos.

Las líneas con puntos dobles o de un solo punto se añaden además al panel de tareas, una tarea por entidad. Cada tarea lleva a su entidad al hacer clic en ella. Si está activada la opción [Vaciar automáticamente](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/panel-de-tareas/vaciar-automaticamente.md) del panel de tareas, la orden vacía el panel antes de añadir las tareas.

## Resultado

Cuando la topología se forma, la orden no dibuja nada ni muestra ningún mensaje. Los recintos se ven al ejecutar una orden de inundación: el recinto que contiene el cursor se rellena de rojo oscuro semitransparente y, al pulsar el botón de datos, el recinto seleccionado se rellena de rojo.

## Cuándo hay que regenerarla

La topología se calcula al ejecutar la orden y no se actualiza al editar el dibujo. Si añades, borras o modificas líneas, o cambias qué códigos están encendidos, vuelve a ejecutar la orden. Cada ejecución sustituye a la topología temporal anterior.

## Cómo descargarla

* Ejecuta [DESCARGAR\_TOPOLOGIA\_INUNDACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/descargar-topologia-inundacion.md) (opción del menú **Inundación/Descargar topología para inundaciones**) para eliminar la topología de la memoria.
* [DEJAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dejar.md), [RECARGAR\_ARCHIVOS\_REFERENCIA\_VISTA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/recargar-archivos-referencia-vista.md) y [COMPRIMIR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/comprimir.md) también descartan la topología.
* [FORMAR\_POLIGONOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/formar-poligonos.md) usa su propia topología temporal mientras se ejecuta y, al terminar, restaura la topología para inundación que hubiera.

## Diferencia con GENERAR\_TOPOLOGIA\_INUNDACION\_SIN\_ISLAS

[GENERAR\_TOPOLOGIA\_INUNDACION\_SIN\_ISLAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion-sin-islas.md) forma los mismos recintos, pero no les asigna huecos: el recinto que rodea a una isla incluye la superficie de la isla, y un punto dentro de la isla está dentro de los dos recintos.

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
