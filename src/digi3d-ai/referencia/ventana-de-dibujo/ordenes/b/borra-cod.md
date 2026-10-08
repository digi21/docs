# BORRA\_COD
<!-- id: borra-cod -->

Borra todas aquellas entidades que tengan un código igual al indicado por el usuario.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 … N | Pares «código tipo». El código puede ser `#etiqueta` para indicar todos los códigos con esa etiqueta. El tipo es una cadena de letras de [tipos de geometría](/digi3d-ai/referencia/ventana-de-dibujo/tipos-de-geometria.md) | Si |

En esta orden, `P` incluye los puntos y los complejos puntuales, y `B` no tiene efecto.

Si se indican al menos dos parámetros, la orden borra sin mostrar el cuadro de diálogo. Si no se indican, o se indica uno solo, la orden muestra el cuadro de diálogo de selección de códigos.

### Observaciones

La orden actúa solo sobre las entidades del archivo de dibujo activo que no estén borradas, estén visibles y estén dentro de la zona de interés.

Esta orden también permite borrar códigos secundarios. Si la entidad solo tiene el código indicado, se borra la entidad. Si tiene más códigos, la orden quita el código indicado y conserva la entidad con el resto de códigos.

Los códigos se eligen en el cuadro de diálogo [Selecciona códigos](/digi3d-ai/referencia/cuadros-de-dialogo/selecciona-codigos.md). En la parte inferior del cuadro se indica si se quieren borrar líneas, puntos, textos, complejos o polígonos. La selección se aplica a todos los códigos elegidos.

## Características de la orden

| Tipo de orden                                    | [Orden inmediata](borra-cod.md)                                              |
| ------------------------------------------------ | ---------------------------------------------------------------------------- |
| Repite automáticamente                           | No                                                                           |
| Opción del menú donde aparece la orden           | Editar/Elimina entidades por código...                                       |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión                                        | DigiNG.OrdenesStandard.dll                                                   |
| Variables relacionadas                           | No tiene variables relacionadas                                              |
| Órdenes relacionadas                             | [BORRA\_COD\_V](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-cod-v.md)<br>[BORRA\_E](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-e.md)<br>[RECUPERA\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/recupera-cod.md) |
| Nombre interno | {5ED4CD51-E4DB-4365-8522-F82BBC7813A2} |
