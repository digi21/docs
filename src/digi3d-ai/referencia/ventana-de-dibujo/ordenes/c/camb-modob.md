# CAMB\_MODOB
<!-- id: camb-modob -->

Establece el modo de búsqueda o enganche gráfico a elementos del dibujo.

## Parámetros

No admite parámetros.

La tabla siguiente describe los modos de búsqueda:

| Valor | Tentativo | Descripción |
| :--- | :--- | :--- |
| 0 | Vértice o proyección en XY | El programa trata de encontrar los vértices de la entidad. Si no encuentra ninguno en el ámbito de búsqueda, calcula la proyección del punto \(correspondiente a la posición del cursor\) sobre el segmento de la entidad que se encuentre en el ámbito de búsqueda. El enganche se realiza en coordenadas X, Y sobre la proyección calculada. El elemento que se engancha toma las coordenadas X, Y de la proyección calculada, pero mantiene su cota. |
| 1 | Proyección o vértice en XY | El programa primero intenta calcular las proyecciones sobre el segmento y, si no puede, busca el vértice más cercano. Se toma como punto proyectado el que se encuentre dentro del ámbito de búsqueda. El enganche se realiza en coordenadas X, Y sobre el punto proyectado. |
| 2 | Vértices extremos de la entidad en XYZ | El programa solo considera los vértices primero y último de las entidades. Por tanto, el enganche se realizará únicamente con uno de los extremos de la entidad, y en coordenadas X, Y, Z. |
| 3 | Vértice o proyección en XYZ | Igual que el modo 0 pero se engancha también en Z. |
| 4 | Vértice en XYZ | Busca el vértice de la entidad más próximo y se engancha con él en X, Y, Z. |
| 5 | Proyección o vértice en XYZ | Primero prueba a proyectar y en segundo lugar busca el vértice en X, Y, Z. |
| 6 | Vértices extremos si coincide la Z | El programa se engancha en X, Y, Z al vértice extremo más próximo de una entidad siempre y cuando la Z actual sea igual a la del vértice. Durante la restitución, debes tener activo el interruptor Z\_fija al engancharte, o puedes descubrir si la curva existente se creó con el interruptor Z\_fija activo. En los aparatos analíticos, cuando fijas una Z con Z\_fija, el sistema busca, dentro del ámbito de búsqueda del cursor, la curva de nivel cuya Z coincida con la Z fijada y se engancha a uno de los extremos de esa curva. |
| 7 | Dos puntos: 1º XY, 2º Z | Se toman las coordenadas X,Y del último punto registrado como coordenadas planimétricas para el siguiente punto de datos. La coordenada Z será el valor de Z cuando indiques el punto. No tienes que indicar ninguna entidad. Este modo suele utilizarse para realizar volúmenes. |
| 8 | XYZ en el punto medio del segmento | Se engancha en X, Y, Z en el punto medio del segmento seleccionado con el cursor. |
| 9 | Vértice en XY | Igual que el modo 2 pero tomando sólo las coordenadas X, Y del vértice más próximo. El valor de Z se toma del valor de la Z actual. |
| 10 | Vértices extremos de la entidad en XY | El programa busca entre los vértices primero y último de las entidades el vértice más próximo y toma sus coordenadas X, Y. La coordenada Z conserva el valor activo. |
| 11 | Intersección | El programa busca el punto de intersección de dos entidades. |
| 12 | Busca la Z | El programa busca en la línea sobre la que se realiza el tentativo el punto cuya Z coincide con la Z activa. Permite hacer pasar una curva de nivel por ríos, caminos, etc. |
| 13 | Centro de la entidad en XY | El programa se engancha en X, Y en el punto medio del segmento seleccionado. La coordenada Z será la activa en ese momento. |
| 14 | Centro de la entidad en XYZ | Se engancha en X, Y, Z en el punto medio del segmento seleccionado. |
| 15 | Primer vértice de la entidad en XY | Se engancha en X, Y en el primer vértice digitalizado de la entidad seleccionada. |
| 16 | Primer vértice de la entidad en XYZ | Se engancha en X, Y, Z en el primer vértice digitalizado de la entidad seleccionada. |
| 17 | Último vértice de la entidad en XY | Se engancha en X, Y en el último vértice digitalizado de la entidad seleccionada. |
| 18 | Último vértice de la entidad en XYZ | Se engancha en X, Y, Z en el último vértice digitalizado de la entidad seleccionada. |
| 19 | Vértice con coordenada Z menor en XY | El programa se engancha en X, Y, en el vértice de menor Z de la entidad seleccionada. La Z de la nueva entidad será la activa en ese momento. |
| 20 | Vértice con coordenada Z menor en XYZ | Se engancha en X, Y, Z en el vértice de menor Z de la entidad seleccionada. |
| 21 | Vértice con coordenada Z mayor en XY | El programa se engancha en X, Y, en el vértice de mayor Z de la entidad seleccionada. La Z de la nueva entidad será la activa en ese momento. |
| 22 | Vértice con coordenada Z mayor en XYZ | Se engancha en X, Y, Z en el vértice de mayor Z de la entidad seleccionada. |

### Observaciones

El ámbito de búsqueda de una entidad está determinado por el tamaño del cursor y el factor de zoom de pantalla.

Esta orden permite pasar de un modo de búsqueda al siguiente. Para especificar un modo de búsqueda, usa [MODOB](/digi3d-ai/referencia/ventana-de-dibujo/variables/m/modob.md).

La orden recorre los modos 0 a 22: después del modo 22 vuelve al modo 0. Para activar un modo concreto, usa [MODOB](/digi3d-ai/referencia/ventana-de-dibujo/variables/m/modob.md). Si hay varios modos de búsqueda activos a la vez, la orden deja activo solo el modo 0.

### Características de la orden

| Tipo de orden | [Orden inmediata](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | [MODOB](/digi3d-ai/referencia/ventana-de-dibujo/variables/m/modob.md) — modo de búsqueda |
| Órdenes relacionadas | [AUTOMODOB](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/automodob.md)<br>[AUTOMODOB\_EXHAUSTIVO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/automodob-exhaustivo.md)<br>[PARAMETROS\_AUTO\_MODOB](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-auto-modob.md) |
| Nombre interno | {5740AB44-D47E-42f6-A4F5-B5906967D30A} |

