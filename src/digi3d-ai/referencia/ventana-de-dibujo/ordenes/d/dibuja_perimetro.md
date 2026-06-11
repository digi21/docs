# DIBUJA\_PERÍMETRO

Calcula el perímetro \(la longitud\) de una entidad gráfica seleccionada y sitúa en la pantalla un texto con este valor, en la posición indicada por el usuario.

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

El perímetro se calcula en planimetría \(coordenadas X, Y\), sin tener en cuenta los desniveles. Para obtener la longitud real considerando la coordenada Z, utilice [DIBUJA\_PERÍMETRO\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_perimetro_3d.md).

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ventana-de-dibujo/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Dibujar/Acotar/Perímetro de un polígono seleccionado |
| Barra de herramientas en la que aparece la orden | Acotaciones |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — ángulo activo  
[AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — altura de los textos  
[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — justificación del texto |
| Nombre interno | {437DD946-6A36-46A3-A399-FC0E151B5ADF} |
