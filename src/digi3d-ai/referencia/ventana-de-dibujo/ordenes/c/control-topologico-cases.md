# CONTROL\_TOPOLOGICO\_CASES

Detecta polígonos vecinos con centroides distintos entre archivos de dibujo.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Nombre de la topología | No |
| 2 | 1 para analizar todos los pares de archivos de dibujo; 0 para analizar solo los pares en los que interviene el archivo de dibujo activo | No |

## Observaciones

1. Si faltan parámetros o la topología no existe, la orden emite un sonido de error, muestra un globo de aviso y termina.
2. La orden compara cada polígono con centroide de un archivo con los polígonos con centroide de los demás archivos. Si los dos polígonos comparten un lado \(dos vértices consecutivos comunes\) y sus centroides son distintos, añade una tarea de error al panel de tareas con el lado común y los dos centroides.
3. Los centroides se comparan por el texto o por los códigos, según la opción de configuración del control topológico \(por defecto, por el texto\).
4. Si está activa la opción de limpiar automáticamente el panel de tareas, la orden lo vacía antes de analizar.

## Características de la orden

| Tipo de orden | [Orden inmediata](control-topologico-cases.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {7E5473E4-E04A-4AB4-9065-E5CC463BA2A5} |
