# CREAR\_CENTROIDES

Crea los centroides de los polígonos de las topologías cargadas.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1...n | Nombres de las topologías a incluir. Se ignoran los nombres que no corresponden a ninguna topología cargada | Nombres de topología | No. Si no se indica ninguno, la orden no crea ningún centroide |

## Observaciones

Si no hay ninguna topología cargada, la orden emite un sonido de error, muestra un aviso y termina.

La orden muestra un cuadro de diálogo para elegir:

* El código del centroide: el del primer tramo, el del código con mayor perímetro en el contorno o el código activo.
* El texto del centroide: el código, la altura del polígono, la Z mínima, la Z máxima o un texto personalizado.
* La Z del centroide: la Z mínima o máxima del contorno, con o sin los huecos, o la altura del polígono.

La orden crea un centroide en cada polígono sin centroide de las topologías indicadas, solo para el archivo de dibujo activo. El centroide toma el ángulo de [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md), la altura de [AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) y la justificación de [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md).

## Características de la orden

| Tipo de orden | [Orden inmediata](crear-centroides.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — establece el valor del ángulo activo<br>[AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — establece la altura de los textos<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — cambia la justificación del texto al insertarlo |
| Nombre interno | {E6B3BAA5-7326-4976-A759-51C8660DDFAF} |
