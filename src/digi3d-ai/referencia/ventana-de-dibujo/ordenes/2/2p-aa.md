# 2P_AA

Dibuja un rectángulo girado.

![Cinco formas de definir un rectángulo: 2P con dos esquinas opuestas, 2P_AA con dos esquinas opuestas y el ángulo activo, RECTANGULO_2P_NORTE con lados paralelos a los ejes, 3P con un lado y un punto del lado opuesto, y RECTANGULO_DR con el centro y la dirección del ancho](../../../../../images/rectangulos.svg)

## Parámetros

No admite parámetros.

## Observaciones

Esta orden solicita que se [introduzcan](../../introduccion-de-coordenadas.md) dos puntos, que son esquinas opuestas del rectángulo: la diagonal.

Los lados del rectángulo siguen la dirección del [ángulo activo](../../variables/a/aa.md) configurado en el momento de la digitalización del segundo punto. La orden [RECTANGULO\_2P\_NORTE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/rectangulo-2p-norte.md) hace lo mismo con el ángulo 0, es decir, con los lados paralelos a los ejes.

## Características de la orden

| Tipo de orden                                    | [Orden interactiva](../../../ordenes/ordenes-interactivas.md)        |
| ------------------------------------------------ | -------------------------------------------------------------------- |
| Repite automáticamente                           | Si                                                                   |
| Opción del menú donde aparece la orden           | Dibujar/Mas/Rectángulo con dos puntos y ángulo activo                |
| Barra de herramientas en la que aparece la orden | Cuadrados y rectángulos                                              |
| Extensión                                        | DigiNG.OrdenesStandard.dll                                             |
| Variables relacionadas                           | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — ángulo activo<br>[REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Nombre interno | {63DCF587-DB76-4992-B84E-F1729BBDF3DC} |

## Vídeo

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/2P_AA.mp4" type="video/mp4"></video>
