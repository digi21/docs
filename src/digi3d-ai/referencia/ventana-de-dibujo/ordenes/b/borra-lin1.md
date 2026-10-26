# BORRA\_LIN1
<!-- id: borra-lin1 -->

Borra en el archivo de trabajo:

* Elementos que figuren como entidades de tipo lineal en el fichero DIGI.TAB y que se hayan registrado con un solo punto, al igual que una entidad puntual.
* Cualquier elemento compuesto de varios puntos cuyas coordenadas sean coincidentes. Durante los procesos de restitución, pulsar y liberar varias veces el pedal sin cambiar de posición puede generar elementos con varios puntos de coordenadas coincidentes.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Longitud mínima, en unidades del sistema de referencia de coordenadas | Número real | Sí |

## Observaciones

Puedes establecer un límite para el borrado: si quieres borrar segmentos de línea \(residuos de la edición\) cuya longitud sea menor que un cierto valor, ejecuta la orden con ese valor.

Sin parámetro, la orden borra las líneas cuyos vértices coinciden todos en X e Y. Con parámetro, borra las líneas cuya longitud en planta (2D) es menor que el valor indicado.

La orden solo tiene en cuenta las entidades del archivo de dibujo activo que no estén borradas, estén visibles y estén dentro de la zona de interés, y cuyo primer código sea de tipo lineal en la tabla de códigos. Los puntos con un código lineal se borran siempre.

### Ejemplo

`BORRA_LIN1=0.01`

La orden borrará las líneas cuya longitud en planta sea inferior a 0.01 unidades del sistema de referencia de coordenadas.

## Características de la orden

| Tipo de orden | [Orden inmediata](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | No tiene órdenes relacionadas |
| Nombre interno | {4026A83D-FB51-4269-A59D-C4E3298513B6} |

