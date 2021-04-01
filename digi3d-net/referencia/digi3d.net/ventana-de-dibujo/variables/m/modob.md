# MODOB

Establece el modo de búsqueda o enganche gráfico a elementos del dibujo.

## Observaciones

El ámbito de búsqueda de una entidad está determinado por el tamaño del cursor y el factor de zoom de pantalla.

| Valor | Tentativo | Descripción |
| :--- | :--- | :--- |
| 0 | Vértice o proyección en XY | Trata de encontrar los vértices de la entidad, si no encuentra ninguno en su ámbito de búsqueda, calcula la proyección del punto \(correspondiente a la posición del cursor\) sobre el segmento de la entidad que se encuentre en este ámbito. El enganche se realiza en coordenadas X, Y sobre la proyección calculada. El elemento que se engancha toma estas coordenadas planimétricas pero mantiene su cota. |
| 1 | Proyección o vértice en XY | Primero prueba a calcular las proyecciones sobre el segmento y en caso de no poder buscará el vértice más cercano. Se toma como punto proyectado, aquel que se encuentre dentro del ámbito de búsqueda. El enganche se realiza en coordenadas X, Y sobre este punto. |
| 2 | Vértices extremos de la entidad en XYZ | Sólo considera los vértices primero y último de las entidades. Por tanto, el enganche se realizará únicamente con uno de los extremos de la entidad, y en coordenadas X, Y, Z. |
| 3 | Vértice o proyección en XYZ | Igual que el modo 0 pero se engancha también en Z. |
| 4 | Vértice en XYZ | Busca el vértice de la entidad más próximo y se engancha con él en X, Y, Z. |
| 5 | Proyección o vértice en XYZ | Primero prueba a proyectar y en segundo lugar busca el vértice en X, Y, Z. |
| 6 | Vértices extremos si coincide la Z | Se engancha en X, Y, Z al vértice extremo más próximo de una entidad siempre y cuando la Z actual sea igual a la del vértice. Esto es útil para restitución ya que obliga a que se tenga la misma Z al engancharse a una curva de nivel ya existente. De esta forma, nos obligará a llevar activo el interruptor Z\_fija al querernos enganchar, o nos permitirá descubrir si la curva existente fue hecha con el interrruptor Z\_fija activo. En los aparatos analíticos cuando fijamos una Z con Z\_fija el sistema nos buscará, dentro del ámbito de búsqueda del cursor, la curva de nivel que tenga esa Z, y engancharemos en uno de los extremos de esa curva. |
| 7 | Dos puntos: 1º XY, 2º Z | Se toman las coordenadas X,Y del último punto registrado, como coordenadas planimétricas para el siguiente punto de datos. La coordenada Z será el valor de Z cuando se de el punto. No hay que indicar ninguna entidad. Suele utilizarse para realizar volúmenes |
| 8 | XYZ en el punto medio del segmento | Se engancha en X, Y, Z en el punto medio del segmento seleccionado con el cursor. |
| 9 | Vértice en XY | Igual que el modo 2 pero tomando sólo las coordenadas X, Y del vértice más próximo. El valor de Z se toma del valor de la Z actual. |
| 10 | Vértices extremos de la entidad en XY | Igual que el modo 2 pero tomando sólo las coordenadas X, Y del vértice más próximo. El valor de Z se toma del valor de la Z actual. |
| 11 | Intersección | Busca el punto intersección de dos entidades. |
| 12 | Busca la Z | Busca la Z que lleva el operador en la línea en la que se está realizando el tentativo. Es muy útil para hacer pasar una curva de nivel por ríos, caminos, etc... |
| 13 | Centro de la entidad en XY | Se engancha en X, Y en el punto medio del segmento seleccionado, la coordenada Z será la activa en ese momento. |
| 14 | Centro de la entidad en XYZ | Se engancha en X, Y, Z en el punto medio del segmento seleccionado. |
| 15 | Primer vértice de la entidad en XY | Se engancha en X, Y en el primer vértice digitalizado de la entidad seleccionada. |
| 16 | Primer vértice de la entidad en XYZ | Se engancha en X, Y, Z en el primer vértice digitalizado de la entidad seleccionada. |
| 17 | Último vértice de la entidad en XY | Se engancha en X, Y en el último vértice digitalizado de la entidad seleccionada. |
| 18 | Último vértice de la entidad en XYZ | Se engancha en X, Y, Z en el último vértice digitalizado de la entidad seleccionada. |
| 19 | Vértice con coordenada Z menor en XY | Se engancha en X, Y, en el vértice de menor Z de la entidad seleccionada, la Z de la nueva entidad será la activa en ese momento. |
| 20 | Vértice con coordenada Z menor en XYZ | Se engancha en X, Y, Z en el vértice de menor Z de la entidad seleccionada. |
| 21 | Vértice con coordenada Z mayor en XY | Se engancha en X, Y, en el vértice de mayor Z de la entidad seleccionada, la Z de la nueva entidad será la activa en ese momento. |
| 22 | Vértice con coordenada Z mayor en XYZ | Se engancha en X, Y, Z en el vértice de mayor Z de la entidad seleccionada. |

**Ejemplos**

Si nos encontramos la situación de tener activado el modo de búsqueda 12 y tenemos que tentativar en una entidad en la cual la Z no es coincidente, en este caso se admite ejecutar la orden [MODOB](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/variables/m/MODOB.html) con un tipo de modo de búsqueda secundario secundario.

`modob=12 1`

De esta forma en caso de llegar a un elemento en el cual no es posible enganchar con el modo 12 por defecto el programa engancharía con el modo de búsqueda 1.

## Características de la orden

| Tipo de orden | Orden inmediata |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | Tentativo |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/variables/m/REPITE.html) |

