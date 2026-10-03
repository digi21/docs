# CORTAR\_F

Genera un nuevo fichero con los elementos que se encuentren dentro de los límites de una entidad de dibujo elegida por el usuario.

## Parámetros

No admite parámetros.

## Observaciones

Si no existe una entidad cuya geometría sea adecuada para establecer los límites de selección de elementos, tendrás que definir un nuevo elemento con la forma deseada antes de ejecutar esta orden. Este elemento, cuya función equivale a la de una ventana, puede eliminarse una vez que el proceso de cortar ha sido realizado.

1. Indica en el cuadro de diálogo el nombre y el formato del archivo a generar. En el mismo cuadro de diálogo eliges la condición de inclusión y la opción **Invertir selección**.
2. Selecciona la línea que actúa como límite.

La condición de inclusión puede ser una de las siguientes \(por defecto, Corte\):

* Interior: Se copian sólo los elementos que se encuentren totalmente incluidos dentro de los límites de la entidad.
* Corte: Se copian todos aquellos elementos que se hallen total o parcialmente en el interior de la entidad, cortándolos si rebasan los límites de ésta. Es decir, sólo la parte interior de la entidad se copia en el fichero de salida.
* Solape: El borde de la entidad actúa como límite de separación, copiando todo lo que se encuentre total o parcialmente en su interior.

Si activas la opción Invertir selección, el nuevo fichero se genera con las entidades que se encuentren fuera de la entidad cerrada que actuará como ventana, conservando la modalidad de copia seleccionada. Tienes que tener en cuenta que:

* Se copian únicamente las entidades con algún código visible. Los códigos desactivados \(OFF\) se eliminan de las entidades copiadas.
* Se copian las entidades de todos los ficheros activos, es decir, del fichero de trabajo y de los ficheros de referencia cargados.

## Características de la orden

| Tipo de orden | [Orden interactiva](cortar-f.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Editar/Cortar fichero... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {AA1F6B68-B71D-476a-AF82-66284E4B79DE} |

