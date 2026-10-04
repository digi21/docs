# DETECTAR\_CRUCE\_LINEAS\_Z
<!-- id: detectar-cruce-lineas-z -->

Detecta cruces entre líneas y marca como error aquellas cuya diferencia en Z supere una tolerancia

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código o códigos (uno o más, separados por espacios) | Si |

## Observaciones

Al ejecutarse, la orden muestra un cuadro de diálogo que solicita la tolerancia en Z, en unidades del sistema de referencia \(valor por defecto 1.0\). Si dejas el valor vacío o cancelas el cuadro de diálogo, la orden termina.

La orden crea una tarea de error por cada cruce en el que la diferencia de Z entre las dos líneas, interpolada en el punto de cruce, sea mayor que la tolerancia.

La orden analiza las líneas y polígonos \(incluidos sus huecos\) visibles, dentro de la zona de interés, que tengan alguno de los códigos indicados. Los códigos admiten los comodines \* y ?. Para incluir todos los códigos que tengan una etiqueta, antepón una almohadilla \(\#\) al nombre de la etiqueta.

Si no indicas ningún código, la orden espera a que selecciones un conjunto de entidades mediante una selección múltiple y analiza las entidades seleccionadas.

## Características de la orden

| Tipo de orden | [Orden inmediata](detectar-cruce-lineas-z.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [DETECTAR\_CRUCE\_LINEAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-cruce-lineas.md)<br>[DETECTAR\_CRUCE\_LINEAS\_VISIBLES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-cruce-lineas-visibles.md) |
| Nombre interno | {DACB177A-0871-415C-BDE5-801586CB9171} |
