# BORRA\_LIN1

Borra en el archivo de trabajo:

* Elementos que figuren como entidades de tipo lineal en el fichero DIGI.TAB y que hayan sido registradas con un sólo punto, al igual que una entidad puntual.
* Cualquier elemento compuesto de varios puntos cuyas coordenadas sean coincidentes. Este tipo de elementos se generan fácilmente en los procesos de restitución cuando el operador situado en un punto, pisa y levanta varias veces el pedal sin cambiar de posición.

### Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Valor numérico | Número real | Si |

### Observaciones

Podemos establecer un límite para el borrado, es decir, si se desean borrar segmentos de línea \(residuos de la edición\) de longitud menor que un cierto valor, se llamará a la orden con dicho valor.

#### Ejemplo

`BORRA_LIN1=0.01`

Borrará aquellas entidades cuya longitud sea inferior a 0.01

### Características de la orden

| Tipo de orden | [Variable real]() |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |

