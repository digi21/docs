# DETECTAR\_BUCLES
<!-- id: detectar-bucles -->

Detecta bucles \(o autointersecciones\) en entidades de tipo Línea y Polígono.

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| Código | Código o códigos de las entidades a analizar \(opcional\). Cada código se compara de forma exacta: no admite comodines. Se pueden especificar todos los códigos que tengan una etiqueta anteponiendo una almohadilla \(\#\) al nombre de la etiqueta, como por ejemplo \#vías\_de\_comunicación |

## Observaciones

La orden analiza las líneas y polígonos \(incluidos sus huecos\) visibles y dentro de la zona de interés. En una línea cerrada no se marca como error el cierre en el primer vértice.

Si no indicas ningún código, la orden espera a que selecciones un conjunto de entidades mediante una selección múltiple y analiza las entidades seleccionadas.

Si se detectan autointersecciones, la orden añade entradas en el [Panel Tareas](/digi3d-ai/referencia/paneles/tareas.md). Cada entrada del panel contiene una subentrada por cada autointersección detectada; al hacer doble clic en la entrada principal, el programa muestra la geometría completa. Al hacer doble clic en la subentrada de una autointersección, el programa centra la ventana de dibujo en las coordenadas de esa autointersección.

## Características de la orden

| Tipo de orden | [Orden inmediata](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Análisis geométricos/Detectar bucles/\(una opción por etiqueta\) |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [DETECTAR\_BUCLES\_LINEAS\_VISIBLES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-bucles-lineas-visibles.md) |
| Nombre interno | {74442DE2-4C89-4463-899F-0F775302497C} |

