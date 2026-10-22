# AREA
<!-- id: area -->

Calcula la superficie de entidades gráficas cerradas y sitúa en la pantalla un texto con este valor, en la posición indicada por el usuario.

## Parámetros

No admite parámetros.

## Observaciones

* Si devuelve un valor positivo, indica que los elementos de la entidad cerrada han sido creados en el sentido de las agujas del reloj.
* Si devuelve un valor negativo, indica que los elementos de la entidad cerrada han sido creados en el sentido contrario al del avance de las agujas del reloj.

Una vez ejecutada la orden, el programa pedirá seleccionar la entidad cerrada a la cual se quiere rotular con el área. La orden solo acepta líneas y polígonos. Si la línea no está cerrada, la orden calcula el área cerrándola entre el último y el primer vértice. En un polígono, la orden resta el área de los huecos, sea cual sea su sentido de giro; el signo del resultado es el del contorno exterior.

El área se escribe en la unidad de la opción [Unidad de superficie](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/orden-area/unidad-de-superficie.md) de la configuración: metros cuadrados (por defecto), hectáreas o kilómetros cuadrados.

A continuación aparece en la barra de estado el sufijo del área, que corresponde a esa unidad: `m2`, `ha` o `km2`. El sufijo se puede cambiar por cualquier otro texto, pero el valor sigue en la unidad configurada. Después, indica el punto donde se coloca el texto del área.

El texto se crea con la [altura de textos](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md), el [ángulo activo](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md), la [justificación de textos](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) y el número de decimales de la ventana de dibujo.

Después de insertar el texto, la orden vuelve a pedir otra entidad.

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ventana-de-dibujo/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Dibujar/Acotar/Área de un polígono seleccionado |
| Barra de herramientas en la que aparece la orden | Acotaciones |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — ángulo activo<br>[AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — altura de los textos<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — justificación del texto |
| Órdenes relacionadas | [DIBUJA\_ALTURA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_altura.md)<br>[DIBUJA\_DISTANCIA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia.md)<br>[DIBUJA\_DISTANCIA\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia_3d.md)<br>[DIBUJA\_PERÍMETRO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_perimetro.md)<br>[DIBUJA\_PERÍMETRO\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_perimetro_3d.md) |
| Nombre interno | {DA84B66B-3E7F-47f6-A418-FFF44712AF48} |

