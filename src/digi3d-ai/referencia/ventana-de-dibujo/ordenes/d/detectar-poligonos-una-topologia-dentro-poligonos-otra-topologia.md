# DETECTAR\_POLIGONOS\_UNA\_TOPOLOGIA\_DENTRO\_POLIGONOS\_OTRA\_TOPOLOGIA

Marca como error aquellos polígonos de una topología que están dentro de polígonos de alguna de las topologías seleccionadas.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Topología cuyos polígonos se comprueban | Si |
| 2 | Topología contra la que se comprueban | Si |

## Observaciones

Si no hay ninguna topología cargada, la orden muestra un mensaje de error y termina.

Si indicas los dos parámetros, la orden compara la topología 1 solo contra la topología 2. Si alguna de las dos topologías no existe, la orden emite un sonido de error y termina.

Si indicas menos de dos parámetros, la orden muestra un cuadro de diálogo para seleccionar la topología a comprobar y las topologías contra las que se compara.

La orden crea una tarea de error por cada polígono de la primera topología completamente incluido en un polígono de otra topología. La orden no tiene en cuenta los polígonos de la otra topología cuyo centroide tiene el texto definido para los huecos.

## Características de la orden

| Tipo de orden | [Orden inmediata](detectar-poligonos-una-topologia-dentro-poligonos-otra-topologia.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Topología/Detectar recintos topológicos de una topología dentro de recintos topológicos de otra topología/De una topología contra las seleccionadas... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [DETECTAR\_SOLAPES\_TOPOLOGIAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-solapes-topologias.md) |
| Nombre interno | {42C16C41-2492-4B10-AE22-D080310A73D3} |
