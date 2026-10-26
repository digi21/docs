# CORTAR\_F
<!-- id: cortar-f -->

Genera un nuevo fichero con los elementos que se encuentren dentro de los límites de una entidad de dibujo elegida por el usuario.

## Parámetros

No admite parámetros.

## Observaciones

Si no existe una entidad cuya geometría sea adecuada para establecer los límites de selección de elementos, define un nuevo elemento con la forma deseada antes de ejecutar esta orden. Puedes eliminar el elemento que define el límite una vez terminado el corte.

1. Indica en el cuadro de diálogo el nombre y el formato del archivo a generar. En el mismo cuadro de diálogo, elige la condición de inclusión y la opción **Invertir selección**.
2. Selecciona la línea que actúa como límite.

La condición de inclusión puede ser una de las siguientes \(por defecto, Corte\):

* Interior: se copian solo los elementos que se encuentren totalmente incluidos dentro de los límites de la entidad.
* Corte: se copian los elementos que se encuentren total o parcialmente dentro del límite y se cortan si lo rebasan. El fichero de salida solo contiene las partes situadas dentro del límite.
* Solape: se copian completos los elementos que se encuentren total o parcialmente dentro del límite.

Si activas la opción Invertir selección, el nuevo fichero se genera con las entidades que se encuentren fuera de la entidad cerrada que actuará como ventana, conservando la modalidad de copia seleccionada. Ten en cuenta que:

* Se copian únicamente las entidades con algún código visible. Los códigos desactivados \(OFF\) se eliminan de las entidades copiadas.
* Se copian las entidades del fichero de trabajo y de todos los ficheros de referencia cargados.

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Editar/Cortar fichero... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [CORTAR\_F\_CENTROIDE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cortar-f-centroide.md) |
| Nombre interno | {AA1F6B68-B71D-476a-AF82-66284E4B79DE} |

