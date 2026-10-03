# DIBUJA\_PERÍMETRO

Calcula el perímetro \(la longitud\) de una entidad gráfica seleccionada y sitúa en la pantalla un texto con este valor, en la posición indicada por el usuario.

## Parámetros

No admite parámetros.

## Observaciones

Una vez ejecutada la orden, el programa pedirá seleccionar la línea o el polígono cuyo perímetro se quiere rotular. Si seleccionas otro tipo de entidad, la orden emite un sonido de error.

A continuación aparece en la Barra de Estado el sufijo para el perímetro. Este sufijo es opcional, por defecto aparece la cadena `m`. El usuario puede introducir el texto que desee y, una vez que está de acuerdo con el sufijo, deberá dar el punto de destino para ubicar el texto del perímetro. El texto usa el ángulo de [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md), la altura de [AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md), la justificación de [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) y el número de decimales de [NDEC](/digi3d-ai/referencia/ventana-de-dibujo/variables/n/ndec.md).

Tras situar el texto, la orden vuelve a pedir una entidad. Pulsa Esc para terminar.

En un polígono, el perímetro es el del contorno exterior: no incluye los huecos.

El perímetro se calcula en planimetría \(coordenadas X, Y\), sin tener en cuenta los desniveles. Para obtener la longitud real considerando la coordenada Z, utilice [DIBUJA\_PERÍMETRO\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_perimetro_3d.md).

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ventana-de-dibujo/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Dibujar/Acotar/Perímetro de un polígono seleccionado |
| Barra de herramientas en la que aparece la orden | Acotaciones |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — ángulo activo<br>[AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — altura de los textos<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — justificación del texto |
| Órdenes relacionadas | [AREA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/area.md)<br>[DIBUJA\_ALTURA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_altura.md)<br>[DIBUJA\_DISTANCIA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia.md)<br>[DIBUJA\_DISTANCIA\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia_3d.md)<br>[DIBUJA\_PERÍMETRO\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_perimetro_3d.md)<br>[MIDE\_PERÍMETRO\_LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide-perimetro-linea.md) |
| Nombre interno | {437DD946-6A36-46A3-A399-FC0E151B5ADF} |
