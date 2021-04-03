# COD\_COTAS

Permite indicar un código con el que se digitalizarán cotas altimétricas.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código con el que se digitalizará el punto de la cota altimétrica. | Si. Si no se especifica este parámetro se digitalizará el punto con el conjunto de códigos activos en el momento de ejecutar la orden |
| 2 | Código con el que se digitalizará el texto de la cota altimétrica. | Si. Si no se indica este parámetro se le asignará al texto el mismo código que al punto de la cota altimétrica |

## Observaciones

Esta orden permite digitalizar áutomáticamente cotas altimétricas por el mero echo de tener como código activo el código indicado como primer parámetro de esta orden.  
Los valores almacenados en esta variable únicamente se tienen en consideración si está activa la [variable booleana](cod-cotas.md) [AUTOMATICO](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/c/da1f6fd1-4521-40bb-98e0-be6c6f62d1c6/README.md).  
Además nos va a permitir indicar opcionalmente el código con el que se digitalizará el texto asociado a la cota.

Puedes añadir esta orden a tu archivo de órdenes de inicio para que se ejecute cada vez que abres una ventana de dibujo, de esta manera, con seleccionar como código activo el código indicado en el primer parámetro podrás digitalizar cotas altimétricas.

## Características de la orden

| Tipo de orden | [Orden interactiva](cod-cotas.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Inmediato/Códigos especiales/Código de cotas |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [AUTOMATICO](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/c/AUTOMATICO.html) |

## Tutorial

Sigue las siguientes instrucciones para digitalizar automáticamente cotas altimétricas si tu código activo es 020401:

1. Asegúrate de que el programa está en [modo preparado](cod-cotas.md) pulsando la tecla **Esc** varias veces si es necesario para cancelar las distintas órdenes que se estuvieran ejecutando.
2. Ejecuta la orden **COD\_COTAS=020401**.
3. Selecciona como código activo un código lineal, como or ejemplo: _010123_ mediante la orden **COD=010123**.
4. Digitaliza dos puntos, comprobarás que como el código _010123_ es lineal, el programa digitaliza una línea.
5. Selecciona como código activo el código _020401_ nediante la orden **COD=020401**.
6. Digitaliza un punto. Comprobarás que se digitaliza una cota altimétrica, pues el código activo _020401_ coincide con el código del primer parámetro de la orden **COD\_COTAS**.

Sigue las siguientes instrucciones para digitalizar automáticamente cotas altimétricas si tu código activo es 020401 asegurándote de que el texto de la cota altimétrica se digitalizará con el código 020402:

1. Asegúrate de que el programa está en [modo preparado](cod-cotas.md) pulsando la tecla **Esc** varias veces si es necesario para cancelar las dístintas órdenes que se estuvieran ejecutando.
2. Ejecuta la orden **COD\_COTAS=020401 020402**.
3. Selecciona como código activo un código lineal, como por ejemplo: _010123_ mediante la orden **COD=010123**.
4. Digitaliza dos puntos, comprobarás que como el código _010123_ es lineal, el programa digitaliza una línea.
5. Selecciona como código activo el código _020401_ mediante la orden **COD=020401**.
6. Digitaliza un punto. Comprobarás que se digitaliza una cota altimétrica, pues el código activo _020401_ coincide con el código del primer parámetro de la orden **COD\_COTAS**. El código del punto será _020401_ y el código del texto asociado será _020402_.

