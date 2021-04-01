# BORRA\_V

Borra el dibujo de las entidades gráficas que se encuentran dentro de los límites de una entidad, definida previamente por el usuario.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 0 | Borra sólo los elementos que se encuentren totalmente incluidos dentro de los límites de la entidad. En el caso de que además esté marcada la casilla _Borrar los elementos externos_ no se borran las entidades interiores a la ventana, sino las exteriores a la misma, excepto aquellas que tengan puntos dentro de la ventana | Número real | Si |
| 1 | Borra todos aquellos elementos que se hallen total o parcialmente en el interior de la entidad, cortándolos si rebasan los límites de ésta. Es decir, no se borran los trozos de los elementos que estén fuera de la entidad. Si además está activada la casilla _Borrar los elementos externos_ se borran los elementos externos, de forma total o parcial | Número real | Si |
| 2 | El borde de la entidad actúa como límite de separación, borrándose todo lo que se encuentre total o parcialmente en su interior. Con esta opción se borrarán los elementos que tengan algún punto en el interior de la entidad. Si además está señalada la casilla _Borrar los elementos externos_ se borrarán aquellas entidades exteriores a la ventana que no tengan ningún punto dentro de la misma. | Número real | Si |

## Observaciones

Antes de ejecutar la orden, tendremos que tener definida una entidad cerrada, que será la que va a actuar como ventana para borrar.

Tenemos la posibilidad de marcar una pestaña, para que lo que se borre sean las entidades que quedan fuera de la ventana.

Los códigos que estén apagados no se tendrán en cuenta al ejecutar esta orden.

## Características de la orden

| Tipo de orden | [Orden interactiva]() |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Editar/Borra ventana |
| Barra de herramientas en la que aparece la orden | Eliminar y recuperar |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |

