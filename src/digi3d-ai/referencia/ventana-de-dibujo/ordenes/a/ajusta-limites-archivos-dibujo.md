# AJUSTA\_LIMITES\_ARCHIVOS\_DIBUJO
<!-- id: ajusta-limites-archivos-dibujo -->

Agrupa e inserta por tolerancia vértices en las líneas de case entre límites de modelos moviendo los vértices de las geometrías que llegan a esos vértices modificados.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código de las líneas de límite | Si |
| 2 | Tolerancia, en unidades del sistema de referencia de coordenadas | Si |

## Observaciones

La orden necesita al menos dos archivos de dibujo cargados. Si no los hay, muestra un mensaje de error y termina.

Si se pasan los dos parámetros, la orden se ejecuta sin mostrar ningún cuadro de diálogo. Si falta alguno, la orden muestra un cuadro de diálogo para introducir el código de límite y la distancia de tolerancia (por defecto, los últimos valores usados; la primera vez, 0,05).

La orden procesa cada par de archivos de dibujo cargados. En cada par:

1. Estira o recorta, dentro de la tolerancia, las líneas de cada archivo hasta las líneas de límite de ese archivo, e inserta en los límites un vértice donde llega cada línea.
2. Inserta por tolerancia vértices en las líneas de límite de los dos archivos.
3. Agrupa por tolerancia los vértices de las líneas de límite y mueve a la posición agrupada los vértices de todas las geometrías de los dos archivos que coinciden con ellos. La orden solo cambia las coordenadas X e Y de esos vértices.

## Características de la orden

| Tipo de orden | [Orden inmediata](ajusta-limites-archivos-dibujo.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Análisis geométricos/Ajustar límites entre archivos de dibujo... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [CONTROL\_TOPOLOGICO\_CASES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/control-topologico-cases.md)<br>[DETECTAR\_ERRORES\_ATRIBUTOS\_BBDD\_CASES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-errores-atributos-bbdd-cases.md)<br>[DETECTAR\_ERRORES\_CONTINUIDAD\_LINEAS\_CASES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-errores-continuidad-lineas-cases.md) |
| Nombre interno | {F42F2BF5-3153-48EB-A78F-B59921A4E5EC} |
