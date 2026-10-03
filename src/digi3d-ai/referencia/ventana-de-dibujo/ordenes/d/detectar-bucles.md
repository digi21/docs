# DETECTAR\_BUCLES

Detecta bucles \(o auto intersecciones\) en entidades de tipo Línea y Polígono.

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| Código | Código o códigos de las entidades a analizar \(opcional\). Cada código se compara de forma exacta: no admite comodines. Se pueden especificar todos los códigos que tengan una etiqueta anteponiendo una almohadilla \(\#\) al nombre de la etiqueta, como por ejemplo \#vías\_de\_comunicación |

## Observaciones

La orden analiza las líneas y polígonos \(incluidos sus huecos\) visibles y dentro de la zona de interés. En una línea cerrada no se marca como error el cierre en el primer vértice.

Si no indicas ningún código, la orden espera a que selecciones un conjunto de entidades mediante una selección múltiple y analiza las entidades seleccionadas.

Si se detectan auto intersecciones, se añadirán entradas en el [Panel Tareas](/digi3d-ai/referencia/paneles/tareas.md). Se añadirá una entrada que al hacer doble clic muestra la geometría completa y ésta tendrá tantas sub-entradas como auto intersecciones se localicen. Al hacer doble clic en cada una de estas sub-entradas el programa centrará la ventana de dibujo en las coordenadas en las que se ha detectado la auto intersección.

## Características de la orden

| Tipo de orden | [Orden inmediata](detectar-bucles.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Análisis geométricos/Detectar bucles |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {74442DE2-4C89-4463-899F-0F775302497C} |

