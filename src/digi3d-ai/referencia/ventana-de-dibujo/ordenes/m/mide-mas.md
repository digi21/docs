# MIDE+
<!-- id: mide-mas -->

Calcula el perímetro en el plano, el perímetro en el espacio y el área de la polilínea que forma un conjunto de vértices.

## Parámetros.

No admite parámetros.

## Observaciones

La orden pide puntos de forma continua y muestra en la barra de estado los valores acumulados hasta la posición del cursor. Al terminar la orden \(por ejemplo, con la tecla Esc\), muestra un globo con el perímetro en dos dimensiones (2D), el perímetro en tres dimensiones (3D) y, si el área no es cero, el área.

Si el sistema de referencia de coordenadas horizontal de la ventana de dibujo es geográfico, la orden interpreta la longitud y la latitud en la unidad angular del sistema. Calcula los perímetros con la geodésica sobre el elipsoide, en metros, y el área, en metros cuadrados, proyectando los vértices con la proyección de Lambert azimutal equivalente centrada en el primer vértice. Para más información, consulta [Coordenadas, distancias, ángulos y áreas para las órdenes que se ejecutan en la ventana de dibujo](/digi3d-ai/sistemas-referencia-coordenadas/implementacion-src-modulos-digi3d/ventana-dibujo/coordenadas-distancias-angulos-ventana-dibujo.md).

Si ejecutas MIDE+ mientras otra orden espera una distancia, la orden que espera recibe el perímetro en el plano (2D).

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Medir una distancia con varios puntos |
| Barra de herramientas en la que aparece la orden | Coordenadas |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [MIDE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide.md)<br>[MIDE\_PERÍMETRO\_LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide-perimetro-linea.md)<br>[MIDE\_PERÍMETRO\_LINEA\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide-perimetro-linea-xyz.md)<br>[MIDE\_PERP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide-perp.md)<br>[MIDE\_SEGMENTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide-segmento.md)<br>[MIDE\_SEGMENTO\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide-segmento-xyz.md) |
| Nombre interno | {2267ABF1-5694-4150-993A-50301E417611} |

