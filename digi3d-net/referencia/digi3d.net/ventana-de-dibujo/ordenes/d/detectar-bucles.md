# DETECTAR\_BUCLES

Detecta bucles \(o auto intersecciones\) en entidades de tipo Línea y Polígono.

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| Código | Código de las entidades a analizar. Se pueden utilizar comodines como \* y ? y además se pueden especificar todos los códigos que tengan una etiqueta anteponiendo una almohadilla \(\#\) al nombre de la etiqueta, como por ejemplo \#vias\_de\_comunicacion |

## Observaciones

Si se detectan auto intersecciones, se añadirán entradas en el [Panel Tareas](PanelTareas.html). Se añadirá una entrada que al hacer doble clic muestra la geometría completa y ésta tendrá tantas sub-entradas como auto intersecciones se localicen. Al hacer doble clic en cada una de estas sub-entradas el programa centrará la ventana de dibujo en las coordenadas en las que se ha detectado la auto intersección.

## Características de la orden

| Tipo de orden | [Orden inmediata]() |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Análisis geométricos/Detectar bucles |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | _Esta orden no se ve afectada por ninguna variable_ |
| Nombre interno de la orden | {74442DE2-4C89-4463-899F-0F775302497C} |

