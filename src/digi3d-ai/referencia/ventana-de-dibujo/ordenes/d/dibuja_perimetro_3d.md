# DIBUJA\_PERÍMETRO\_3D

Calcula el perímetro 3D \(la longitud real, teniendo en cuenta los desniveles\) de una entidad gráfica seleccionada y sitúa en la pantalla un texto con este valor, en la posición indicada por el usuario.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Código texto \([COD+](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod-mas.md)\) | Identificador del código | Si |
| 2 | Ángulo activo \([AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md)\) | Número real | Si |
| 3 | Altura de texto \([AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md)\) | Número real | Si |
| 4 | Justificación de texto \([JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md)\) | Número real | Si |
| 5 | Número de decimales \([NDEC](/digi3d-ai/referencia/ventana-de-dibujo/variables/n/ndec.md)\) | Número real | Si |

## Observaciones

Una vez ejecutada la orden, el programa pedirá seleccionar la entidad cuyo perímetro se quiere rotular.

A continuación aparece en la Barra de Estado el sufijo para el perímetro. Este sufijo es opcional, por defecto aparece la cadena `m`. El usuario puede introducir el texto que desee y, una vez que está de acuerdo con el sufijo, deberá dar el punto de destino para ubicar el texto del perímetro.

A diferencia de [DIBUJA\_PERÍMETRO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_perimetro.md), que mide en planimetría, esta orden calcula la longitud real considerando la coordenada Z de cada vértice, por lo que el valor obtenido será mayor cuanto mayores sean los desniveles de la entidad.

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ventana-de-dibujo/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Dibujar/Acotar/Perímetro 3D de un polígono seleccionado |
| Barra de herramientas en la que aparece la orden | Acotaciones |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) |
| Nombre interno | {6C10238F-6C0F-4BD3-AFA8-251F15552F53} |
