# ANADE\_CODIGOS\_ACTIVOS\_Y\_CENTROIDE

Añade los códigos activos a las entidades que forman el contorno de los recintos seleccionados en la topología temporal y, opcionalmente, inserta un centroide en el recinto.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Ordenar de forma inversa (0/1) | Si |

## Observaciones

La orden necesita una topología temporal calculada; si no la hay, muestra el aviso «No hay ninguna topología temporal creada» y termina.

Al ejecutar la orden podrás picar dentro de los recintos y éstos se iluminarán:

* Pulsa el botón de datos dentro de un recinto para seleccionarlo. La selección anterior se descarta.
* Mantén pulsada la tecla Ctrl al pulsar el botón de datos para añadir el recinto a la selección o quitarlo de ella.
* Pulsa el botón de tentativo para pasar al siguiente recinto que contiene el punto.
* Pulsa el botón de reset para deseleccionar todos los recintos.
* Pulsa Esc para terminar la orden.

Para aceptar la selección, pulsa la barra espaciadora. Si has seleccionado un recinto, la orden añade los códigos activos a todas las entidades del recinto. Si has seleccionado varios, la orden descarta los lados que comparten dos recintos seleccionados y añade los códigos activos solo a las entidades del contorno resultante.

Si hay un único código activo y la tabla de códigos tiene una topología con ese único código y con centroides definidos, la orden muestra un cuadro de diálogo para elegir el centroide. Al aceptarlo, inserta un texto con el centroide en un punto interior del primer recinto seleccionado, con la [altura de textos](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md), la [justificación de textos](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) y el [ángulo activo](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md). Los recintos ya procesados quedan marcados con el color de relleno del centroide o, si no lo tiene, en gris.

Tras aceptar una selección, la orden sigue activa para seleccionar más recintos.

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ventana-de-dibujo/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Inundación/Añadir códigos activos y centroide... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — ángulo activo<br>[AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — altura de los textos<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — justificación del texto<br>[REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Nombre interno | {C37E57E7-6D28-401A-A862-3D96BABD2D0B} |
