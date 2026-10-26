# DIBUJA\_PERÍMETRO\_3D
<!-- id: dibuja-perimetro-3d -->

Calcula el perímetro en tres dimensiones \(3D, teniendo en cuenta los desniveles\) de una entidad gráfica seleccionada y sitúa en la pantalla un texto con este valor, en la posición que indiques.

## Parámetros

No admite parámetros.

## Observaciones

Selecciona la línea o el polígono cuyo perímetro quieres rotular. Si seleccionas otro tipo de entidad, la orden emite un sonido de error.

Tras seleccionar la línea o el polígono, aparece en la Barra de Estado el sufijo para el perímetro. El sufijo es opcional y su valor por defecto es la cadena `m`. Escribe el sufijo que quieras e indica el punto de destino del texto del perímetro. El texto usa el ángulo de [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md), la altura de [AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md), la justificación de [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) y el número de decimales de [NDEC](/digi3d-ai/referencia/ventana-de-dibujo/variables/n/ndec.md).

Tras situar el texto, la orden vuelve a pedir una entidad. Pulsa Esc para terminar.

En un polígono, el perímetro es el del contorno exterior: no incluye los huecos.

A diferencia de [DIBUJA\_PERÍMETRO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_perimetro.md), que mide en planimetría, esta orden calcula la longitud real considerando la coordenada Z de cada vértice, por lo que el valor obtenido será mayor cuanto mayores sean los desniveles de la entidad.

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ventana-de-dibujo/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Dibujar/Acotar/Perímetro 3D de una polilínea seleccionada |
| Barra de herramientas en la que aparece la orden | Acotaciones |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — ángulo activo<br>[AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — altura de los textos<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — justificación del texto |
| Órdenes relacionadas | [AREA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/area.md)<br>[DIBUJA\_ALTURA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_altura.md)<br>[DIBUJA\_DISTANCIA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia.md)<br>[DIBUJA\_DISTANCIA\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia_3d.md)<br>[DIBUJA\_PERÍMETRO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_perimetro.md)<br>[MIDE\_PERÍMETRO\_LINEA\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide-perimetro-linea-xyz.md) |
| Nombre interno | {6C10238F-6C0F-4BD3-AFA8-251F15552F53} |
