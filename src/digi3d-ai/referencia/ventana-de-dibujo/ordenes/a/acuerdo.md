# ACUERDO
<!-- id: acuerdo -->

Dibuja un acuerdo circular entre dos segmentos con un vértice común de una entidad.

![ACUERDO: el vértice de una línea se sustituye por un arco del radio indicado, tangente a los dos tramos que llegan a él](../../../../../images/orden-acuerdo.svg)

## Parámetros

No admite parámetros.

## Observaciones

1. Selecciona la línea junto al vértice que quieres redondear. La orden toma el vértice más cercano al punto de selección, que no puede ser el primero ni el último de la línea.
2. Indica el radio de una de estas dos formas:
   - escribe el radio en metros en el campo **Radio** de la barra de estado y pulsa Intro;
   - digitaliza dos puntos: el radio es la distancia en planta entre ellos. Si el sistema de referencia de coordenadas horizontal de la ventana de dibujo es geográfico, esa distancia es la distancia geodésica sobre el elipsoide, en metros, entre los dos puntos, cuyas longitud y latitud se interpretan en la unidad angular del sistema. Para más información, consulta [Coordenadas, distancias, ángulos y áreas para las órdenes que se ejecutan en la ventana de dibujo](/digi3d-ai/sistemas-referencia-coordenadas/implementacion-src-modulos-digi3d/ventana-dibujo/coordenadas-distancias-angulos-ventana-dibujo.md).

El vértice se sustituye por un arco del radio indicado, tangente a los dos tramos que llegan a él. La Z de los puntos de tangencia se interpola en cada tramo.

Si el radio es tan grande que algún punto de tangencia cae fuera de su tramo, la orden muestra el mensaje **No se pudo realizar el acuerdo con los datos facilitados.** y no modifica la línea.

Si el control de calidad descarta la entidad modificada, la entidad original se conserva sin cambios.

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | Sí |
| Opción del menú donde aparece la orden | Editar/Polilíneas/Redondear un vértice |
| Barra de herramientas en la que aparece la orden | Editar polilínea |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [ARCO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/arco.md) |
| Nombre interno | {63EDB2B3-4DC6-4584-9EFC-AAE939D3FFB3} |

