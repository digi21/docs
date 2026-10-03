# BORRA\_LIN1

Borra en el archivo de trabajo:

* Elementos que figuren como entidades de tipo lineal en el fichero DIGI.TAB y que hayan sido registradas con un sólo punto, al igual que una entidad puntual.
* Cualquier elemento compuesto de varios puntos cuyas coordenadas sean coincidentes. Este tipo de elementos se generan fácilmente en los procesos de restitución cuando el operador situado en un punto, pisa y levanta varias veces el pedal sin cambiar de posición.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Longitud mínima, en unidades del sistema de referencia de coordenadas | Número real | Si |

## Observaciones

Podemos establecer un límite para el borrado, es decir, si se desean borrar segmentos de línea \(residuos de la edición\) de longitud menor que un cierto valor, se llamará a la orden con dicho valor.

Sin parámetro, la orden borra las líneas cuyos vértices coinciden todos en X e Y. Con parámetro, borra las líneas cuya longitud en planta (2D) es menor que el valor indicado.

La orden solo tiene en cuenta las entidades del archivo de dibujo activo que no estén borradas, estén visibles y estén dentro de la zona de interés, y cuyo primer código sea de tipo lineal en la tabla de códigos. Los puntos con un código lineal se borran siempre.

### Ejemplo

`BORRA_LIN1=0.01`

Borrará aquellas líneas cuya longitud sea inferior a 0.01

## Características de la orden

| Tipo de orden | [Orden inmediata](borra-lin1.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | No tiene órdenes relacionadas |
| Nombre interno | {4026A83D-FB51-4269-A59D-C4E3298513B6} |

