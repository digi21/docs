# CURSOR\_TERRENO
<!-- id: cursor-terreno -->

Dibuja alrededor del cursor un círculo de radio fijo sobre el terreno, en la ventana de dibujo y en las ventanas fotogramétricas. El círculo se desplaza con el cursor y permite, por ejemplo, medir cotas en puntos separados por una distancia aproximadamente igual al radio del círculo.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Radio del círculo | Número real, en unidades del sistema de referencia de coordenadas del archivo de dibujo. Con 0 o un valor negativo, Digi3D.AI deja de dibujar el círculo | Sí. Si no se especifica, Digi3D.AI deja de dibujar el círculo |

### Ejemplo

CURSOR\_TERRENO=40

Dibuja alrededor del cursor un círculo de 40 unidades de radio: 40 metros si el sistema de referencia de coordenadas del archivo de dibujo es proyectado en metros.

CURSOR\_TERRENO

Deja de dibujar el círculo.

## Observaciones

* Digi3D.AI guarda el radio y lo vuelve a usar en las sesiones siguientes, hasta que se ejecute de nuevo la orden.
* Si el sistema de referencia de coordenadas del archivo de dibujo es geográfico, el radio está en la unidad angular de ese sistema, no en metros.
* En la ventana de dibujo, el círculo se dibuja junto a la cruz del cursor y el tamaño del círculo en pantalla cambia con el zoom. Mientras una orden sustituye la cruz del cursor de la ventana de dibujo por otro puntero, la ventana de dibujo no dibuja el círculo.
* En cada ventana fotogramétrica, Digi3D.AI calcula el círculo en el sistema de referencia de coordenadas del archivo de dibujo, a la cota del cursor, y lo proyecta en cada imagen con el color del índice de esa imagen. El círculo se ve deformado según la perspectiva de cada imagen.
* Las ventanas fotogramétricas de los sensores que dibujan ellos mismos la escena, [PointCloud](/digi3d-ai/referencia/ventana-fotogrametrica/sensores/point-cloud.md) y [Ortofoto estereoscópica](/digi3d-ai/referencia/ventana-fotogrametrica/sensores/ortofoto-estereoscopica.md), no dibujan el círculo.
* Las ventanas fotogramétricas solo dibujan el círculo si hay una ventana de dibujo abierta.

## Características de la orden

| Tipo de orden | [Orden inmediata](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [CURSOR](cursor.md) |
| Nombre interno | {6C1F5A3E-8D27-4B9A-9E40-2F7C3B5D1A86} |
