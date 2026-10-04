# DETECTAR\_LINEAS\_NO\_CONECTADAS\_3D
<!-- id: detectar-lineas-no-conectadas-3d -->

Crea una tarea de error por cada extremo de línea que no esté conectado por código en 3D.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código o códigos (uno o más, separados por espacios) | Si |

## Observaciones

Esta orden recorre las líneas visibles, dentro de la zona de interés, que tengan alguno de los códigos indicados, y comprueba, para cada extremo, si coincide en X, Y y Z con el extremo de otra de esas líneas. Por cada extremo que quede suelto se genera una tarea de error.

Cada código se compara de forma exacta. Para incluir todos los códigos que tengan una etiqueta, antepón una almohadilla \(\#\) al nombre de la etiqueta.

Si no indicas ningún código, la orden espera a que selecciones un conjunto de entidades mediante una selección múltiple y analiza las líneas seleccionadas. En este caso la comparación de los extremos también tiene en cuenta X, Y y Z.

## Características de la orden

| Tipo de orden | [Orden inmediata](detectar-lineas-no-conectadas-3d.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [DETECTAR\_LINEAS\_NO\_CONECTADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar_lineas_no_conectadas.md)<br>[DETECTAR\_LINEAS\_VISIBLES\_NO\_CONECTADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-lineas-visibles-no-conectadas.md)<br>[DETECTAR\_LINEAS\_VISIBLES\_NO\_CONECTADAS\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-lineas-visibles-no-conectadas-3d.md) |
| Nombre interno | {0B9D50BF-D49C-49AA-954D-FF8590E5AFA4} |
