# DETECTAR\_POLIGONOS\_SIN\_CENTROIDE\_TOPOLOGIAS\_CARGADAS
<!-- id: detectar-poligonos-sin-centroide-topologias-cargadas -->

Marca como error aquellos polígonos que se formen al formar una topología con todos los recintos de las topologías cargadas y que no tengan un centroide.

## Parámetros

No admite parámetros.

## Observaciones

La orden une los arcos y los centroides de todas las topologías cargadas, de todos los archivos de dibujo, y forma con ellos una topología nueva. Por cada recinto de esa topología que no tiene centroide, añade al [panel de tareas](/digi3d-ai/referencia/paneles/tareas.md) una tarea «Polígono sin centroide asociado» situada en un punto interior del recinto, sin indicar archivo.

Si encuentra algún recinto sin centroide, la orden emite el sonido de error. Si no encuentra ninguno, no muestra ningún mensaje.

## Características de la orden

| Tipo de orden | Orden inmediata |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Topología/Detectar recintos topológicos sin centroide en las topologías cargadas |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [CREAR\_CENTROIDES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-centroides.md) |
| Nombre interno | {A502D54C-566B-40CC-8090-7C4F7619B8A0} |
