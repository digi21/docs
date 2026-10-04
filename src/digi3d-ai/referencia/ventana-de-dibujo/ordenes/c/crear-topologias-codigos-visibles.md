# CREAR\_TOPOLOGIAS\_CODIGOS\_VISIBLES
<!-- id: crear-topologias-codigos-visibles -->

Crea topologías con los códigos visibles en la ventana de dibujo.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Nombre de la topología | Si. Si no se especifica, se usa el nombre por defecto de la configuración de la orden |

## Observaciones

La orden construye la topología con las líneas y los textos del archivo de dibujo activo cuyos códigos están visibles, y la asocia a ese archivo. Los textos actúan como centroides.

Según la configuración de la orden, añade al panel de tareas los polígonos sin área, los centroides duplicados, las líneas de un solo punto y las líneas con puntos dobles, y escribe en la ventana de resultados el número de arcos, polígonos, huecos y errores. Si está activa la opción de limpiar automáticamente el panel de tareas, la orden lo vacía antes de empezar.

## Características de la orden

| Tipo de orden | [Orden inmediata](crear-topologias-codigos-visibles.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Topología/Crear topogía con los códigos visibles |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [BINTOP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bintop.md)<br>[DEJAR\_TOP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dejar-top.md) |
| Nombre interno | {4E7B099C-8D5C-4B36-A897-F835B2A45324} |
