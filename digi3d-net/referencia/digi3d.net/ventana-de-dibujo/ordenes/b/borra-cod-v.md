# BORRA\_COD\_V

Borra todas aquellas entidades que tengan un código igual al teclado por el usuario y que además estén asociadas a una ventana, bien en el interior de la ventana, bien en solape con ella o bien que se corten con la ventana misma.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 0 | Borra sólo los elementos que se encuentren totalmente incluidos dentro de los límites de la entidad. En el caso de que además esté marcada la casilla _Borrar los elementos externos_ no se borran las entidades interiores a la ventana, sino las exteriores a la misma, excepto aquellas que tengan puntos dentro de la ventana | Número real | Si |
| 1 | Borra todos aquellos elementos que se hallen total o parcialmente en el interior de la entidad, cortándolos si rebasan los límites de ésta. Es decir, no se borran los trozos de los elementos que estén fuera de la entidad. Si además está activada la casilla _Borrar los elementos externos_ se borran los elementos externos, de forma total o parcial | Número real | Si |
| 2 | El borde de la entidad actúa como límite de separación, borrándose todo lo que se encuentre total o parcialmente en su interior. Con esta opción se borrarán los elementos que tengan algún punto en el interior de la entidad. Si además está señalada la casilla _Borrar los elementos externos_ se borrarán aquellas entidades exteriores a la ventana que no tengan ningún punto dentro de la misma. | Número real | Si |

## Observaciones

La primera operación que hay que realizar es crear una entidad cerrada a modo de ventana.

No se borrarán aquellos códigos que estén apagados \([OFF](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/b/OFF.html)\).

Ahora tendríamos que elegir los códigos que queremos borrar, para ello podemos utilizar una de estas opciones:

* Cargar de archivo...: carga un archivo de muestra de códigos previamente generado y guardado.
* Guardar en archivo...: podemos guardar mediante un nombre, la lista de códigos seleccioanada para una posterior utilización. Los archivos generados estarán en formato .xml.
* Seleccionar de forma manual los códigos que queremos borrar.

## Características de la orden

| Tipo de orden | [Orden interactiva](borra-cod-v.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Editar/Mas/Cortar por polígono y código... |
| Barra de herramientas en la que aparece la orden | Eliminar y recuperar |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |

