# AREA
<!-- id: area -->

Calcula la superficie de entidades gráficas cerradas y sitúa en la pantalla un texto con este valor, en la posición indicada por el usuario.

## Parámetros

No admite parámetros.

## Observaciones

* Si devuelve un valor positivo, indica que los elementos de la entidad cerrada han sido creados en el sentido de las agujas del reloj.
* Si devuelve un valor negativo, indica que los elementos de la entidad cerrada han sido creados en el sentido contrario al del avance de las agujas del reloj.

Una vez ejecutada la orden, el programa pedirá seleccionar la entidad cerrada a la cual se quiere rotular con el área. La orden solo acepta líneas y polígonos. Si la línea no está cerrada, la orden calcula el área cerrándola entre el último y el primer vértice. En un polígono, la orden resta el área de los huecos, sea cual sea su sentido de giro; el signo del resultado es el del contorno exterior.

A continuación aparece en la Barra de Estado el sufijo para el área. Este sufijo es opcional, por defecto aparece la cadena m2. El usuario puede introducir el texto que desee y una vez que el usuario está de acuerdo con el sufijo, deberá dar el punto de destino para ubicar el texto del área.

El texto se crea con la [altura de textos](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md), el [ángulo activo](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md), la [justificación de textos](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) y el número de decimales de la ventana de dibujo.

Después de insertar el texto, la orden vuelve a pedir otra entidad.

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ventana-de-dibujo/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Dibujar/Acotar/Área de un polígono seleccionado |
| Barra de herramientas en la que aparece la orden | Acotaciones |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — ángulo activo<br>[AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — altura de los textos<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — justificación del texto |
| Órdenes relacionadas | [DIBUJA\_ALTURA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_altura.md)<br>[DIBUJA\_DISTANCIA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia.md)<br>[DIBUJA\_DISTANCIA\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia_3d.md)<br>[DIBUJA\_PERÍMETRO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_perimetro.md)<br>[DIBUJA\_PERÍMETRO\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_perimetro_3d.md) |
| Nombre interno | {DA84B66B-3E7F-47f6-A418-FFF44712AF48} |

