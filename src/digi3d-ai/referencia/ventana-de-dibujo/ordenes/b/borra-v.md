# BORRA\_V

Borra el dibujo de las entidades gráficas que se encuentran dentro de los límites de una entidad, definida previamente por el usuario.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Código de las líneas que actúan como ventana | Código | Si |
| 2 | Tipo de recorte | 0, 1 o 2 (ver la tabla siguiente) | Si |
| 3 | Borrar los elementos externos | 0 = no, 1 = sí | Si |

Si se indican los tres parámetros, la orden no muestra el cuadro de diálogo ni pide seleccionar la ventana: usa como ventana cada línea cerrada del dibujo que tenga el código indicado y que no esté borrada, esté visible y esté dentro de la zona de interés, y termina. Si se indican menos de tres parámetros, la orden ignora los parámetros y funciona de forma interactiva.

Sin parámetros, la orden muestra un cuadro de diálogo con el tipo de recorte y la casilla _Borrar los elementos externos_, y después pide seleccionar la línea que actúa como ventana. Los tipos de recorte son:

| Tipo de recorte | Descripción |
| :--- | :--- |
| 0 | Borra sólo los elementos que se encuentren totalmente incluidos dentro de los límites de la entidad. En el caso de que además esté marcada la casilla _Borrar los elementos externos_ no se borran las entidades interiores a la ventana, sino las exteriores a la misma, excepto aquellas que tengan puntos dentro de la ventana |
| 1 | Borra todos aquellos elementos que se hallen total o parcialmente en el interior de la entidad, cortándolos si rebasan los límites de ésta. Es decir, no se borran los trozos de los elementos que estén fuera de la entidad. Si además está activada la casilla _Borrar los elementos externos_ se borran los elementos externos, de forma total o parcial |
| 2 | El borde de la entidad actúa como límite de separación, borrándose todo lo que se encuentre total o parcialmente en su interior. Con esta opción se borrarán los elementos que tengan algún punto en el interior de la entidad. Si además está señalada la casilla _Borrar los elementos externos_ se borrarán aquellas entidades exteriores a la ventana que no tengan ningún punto dentro de la misma. |

## Observaciones

Antes de ejecutar la orden, tendremos que tener definida una línea que será la que va a actuar como ventana para borrar.

Tenemos la posibilidad de marcar la casilla _Borrar los elementos externos_, para que lo que se borre sean las entidades que quedan fuera de la ventana.

La orden solo borra entidades del archivo de dibujo activo.

### Ejemplo

`BORRA_V=LIMITE 1 0`

Usa como ventana todas las líneas cerradas con el código `LIMITE`, borra las entidades interiores y corta las líneas que cruzan el límite.

Los códigos que estén apagados no se tendrán en cuenta al ejecutar esta orden.

## Características de la orden

| Tipo de orden | [Orden interactiva](borra-v.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Editar/Borra ventana |
| Barra de herramientas en la que aparece la orden | Eliminar y recuperar |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [BORRA\_COD\_V](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-cod-v.md)<br>[BORRA\_E](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-e.md) |
| Nombre interno | {290F947C-CAAD-4945-8524-9E71C9713108} |

