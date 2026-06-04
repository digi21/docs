# AGREGA

Añade las coordenadas de un punto al fichero de puntos que se haya definido en la pantalla de inicio de DigiNG, o que se haya determinado con [FICHERO\_P](/digi3d-net/referencia/ventana-de-dibujo/ordenes/f/fichero-p.md).

## Parámetros

Esta orden no admite parámetros.

## Observaciones

El número a introducir ha de ser entero, si está activada la función [AUTONUM](/digi3d-net/referencia/ventana-de-dibujo/variables/a/autonum.md), el programa presenta el número de punto automáticamente. También podemos introducir un texto con información referente a ese punto, esta información se almacenará junto con sus coordenadas.

Si activamos la casilla "Si me engancho" con el tentativo en un elemento, prefiero que la descripción se obtenga automáticamente de Digi.tab, se escribirá como texto de información el código y la descripción del elemento "engancahdo" junto a las coordenadas en el fichero de puntos. Se deben indicar numérica \(con la orden [XY](/digi3d-net/referencia/ventana-de-dibujo/ordenes/x/xy.md) o gráficamente las coordenadas del punto. En este último caso, se puede dar el punto con el pulsador de dato o engancharse en una entidad dibujada con el pulsador de tentativo y aceptar la selección.

El número del punto, las coordenadas \(X Y Z\) y el texto de información se añadirán al fichero de puntos. Si se ha realizado un tentativo sobre una entidad al indicar el punto, el código de la entidad se guarda también en el fichero, después de las coordenadas y antes del texto explicativo.

## Características de la orden

| Tipo de orden | [Orden interactiva](agrega.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Inmediato/Agregar... |
| Barra de herramientas en la que aparece la orden | Coordenadas |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [AUTONUM](/digi3d-net/referencia/ventana-de-dibujo/variables/a/autonum.md) |

