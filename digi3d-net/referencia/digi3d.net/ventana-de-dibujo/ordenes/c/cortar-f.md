# CORTAR\_F

Genera un nuevo fichero con los elementos que se encuentren dentro de los límites de una entidad de dibujo elegida por el usuario.

## Parámetros

No admite parámetros.

## Observaciones

Si no existe una entidad cuya geometría sea adecuada para establecer los límites de selección de elementos, tendrás que definir un nuevo elemento con la forma deseada antes de ejecutar esta orden. Este elemento, cuya función equivale a la de una ventana, puede eliminarse una vez que el proceso de cortar ha sido realizado. Puedes elegir una de las siguientes opciones:

* Interior: Se copian sólo los elementos que se encuentren totalmente incluidos dentro de los límites de la entidad.
* Corte: Se copian todos aquellos elementos que se hallen total o parcialmente en el interior de la entidad, cortándolos si rebasan los límites de ésta. Es decir, sólo la parte interior de la entidad se copia en el fichero de salida.
* Solape: El borde de la entidad actúa como límite de separación, copiando todo lo que se encuentre total o parcialmente en su interior.

Si marcas la casilla Cortar por fuera, el nuevo fichero se genera con las entidades que se encuentren fuera de la entidad cerrada que actuará como ventana, conservando la modalidad de copia seleccionada. Tienes que tener en cuenta que:

* Se copian únicamente las entidades de dibujo que estén activas, es decir, aquellas cuyo código se encuentre activo.
* Se copian las entidades de todos los ficheros activos, es decir, del fichero de trabajo y de los ficheros de referencia cargados.

## Características de la orden

| Tipo de orden | [Orden interactiva]() |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Editar/Cortar fichero... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |

