# INC
<!-- id: inc -->

Establece como incremento de registro activo el valor que indique el usuario al ejecutar esta orden.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Valor numérico | Número real | Si |

Si ejecutas la orden sin parámetros, el programa te solicita en la barra de estado que teclees el incremento de registro o que digitalices dos puntos. Si digitalizas dos puntos, el programa asigna al incremento de registro la distancia entre esos puntos.

### Ejemplos

INC=27

Asigna al incremento de registro 27 unidades de longitud de trabajo del dibujo.

INC=?

Muestra el valor actual del incremento de registro.

## Observaciones

El incremento de registro representa la distancia de registro de puntos cuando la entrada de datos se realiza en modo continuo. El incremento de registro también es la distancia que utilizan el suavizado de líneas (variable [S](/digi3d-ai/referencia/ventana-de-dibujo/variables/s/s.md)) y la orden [INTER](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/inter.md).

El valor inicial es el incremento de registro guardado en la configuración del programa (1 si no hay ninguno guardado).

## Características de la orden

| Tipo de orden | [Variable real](../../../ordenes/variables/variables-reales.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | [S](/digi3d-ai/referencia/ventana-de-dibujo/variables/s/s.md) |
| Nombre interno | {8C1FDD9C-FF39-4f55-BF9E-253E45944CE8} |

