# INSERTAR\_VERTICE\_INTERSECCION\_LINEA\_PUNTO
<!-- id: insertar-vertice-interseccion-linea-punto -->

Inserta un vértice en la intersección de líneas con puntos

![INSERTAR_VERTICE_INTERSECCION_LINEA_PUNTO: se inserta un vértice en la línea, en la proyección del punto que está a menos de la tolerancia; el punto más lejano no inserta ningún vértice](../../../../../images/orden-insertar-vertice-interseccion-linea-punto.svg)

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Tolerancia | No |
| 2 | Código o códigos (uno o más) | Si |

Cada entidad se trata de forma independiente: si Digi3D.AI descarta una línea modificada, solo se conserva su original y las demás se modifican.

## Características de la orden

| Tipo de orden | [Orden inmediata](insertar-vertice-interseccion-linea-punto.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [INSERTAR\_VERTICE\_INTERSECCION\_LINEAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/insertar-vertice-interseccion-lineas.md)<br>[INSERTAR\_VERTICE\_INTERSECCION\_LINEAS\_VISIBLES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/insertar-vertice-interseccion-lineas-visibles.md) |
| Nombre interno | {068C793B-D70E-4CAB-8B26-DE4CA9252403} |
