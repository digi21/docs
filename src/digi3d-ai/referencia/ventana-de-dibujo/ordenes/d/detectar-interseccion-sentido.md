# DETECTAR\_INTERSECCION\_SENTIDO

Detecta líneas y polígonos que se unen en un nodo con sentidos de digitalización incompatibles.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código o códigos (uno o más, separados por espacios) | Si |

## Observaciones

La orden agrupa los extremos de las líneas y polígonos visibles, no borrados y dentro de la zona de interés que tengan alguno de los códigos indicados. En cada punto donde coinciden en X e Y extremos de dos o más entidades, la orden crea una tarea de error si dos de esas entidades empiezan en el mismo punto o terminan en el mismo punto.

Los códigos admiten los comodines \* y ?. Para incluir todos los códigos que tengan una etiqueta, antepón una almohadilla \(\#\) al nombre de la etiqueta.

Si no indicas ningún código, la orden espera a que selecciones un conjunto de entidades mediante una selección múltiple y analiza las entidades seleccionadas.

## Características de la orden

| Tipo de orden | [Orden inmediata](detectar-interseccion-sentido.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [CAMB\_SEN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-sen.md) |
| Nombre interno | {42A2D514-D535-48E6-A486-A2B78B98906D} |
