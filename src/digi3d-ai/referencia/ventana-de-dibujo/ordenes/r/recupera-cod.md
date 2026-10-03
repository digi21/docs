# RECUPERA\_COD

Recupera todas aquellas entidades borradas que tengan un código igual al tecleado.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 … N | Código y [tipo de geometría](/digi3d-ai/referencia/ventana-de-dibujo/tipos-de-geometria.md) de las entidades a recuperar. Se pueden indicar varios pares «código tipo» para recuperar entidades de distintos códigos a la vez | Si |

## Observaciones

La llamada a la orden se realiza escribiendo RECUPERA\_COD=&lt;código&gt; &lt;tipo de entidad&gt;. El tipo de entidad es obligatorio en cada par. En esta orden, `P` incluye los puntos y los complejos puntuales, y `B` no tiene efecto.

Si el código empieza por `#`, la orden utiliza todos los códigos de la tabla de códigos que tienen esa etiqueta.

Si no indicas parámetros, la orden muestra un cuadro de diálogo para seleccionar los códigos y recupera las entidades de cualquier tipo con esos códigos.

La orden solo trata las entidades visibles y dentro de la zona de interés. Si una entidad borrada tiene el código indicado y otros más, la orden no recupera la entidad original: crea una copia con solo el código indicado.

La eliminación real de las entidades borradas se produce al ejecutar la orden [COMPRIMIR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/comprimir.md), a partir de ese momento, los registros correspondientes a estas entidades desaparecen del fichero, por lo tanto, no se podrá recuperar níngún código borrado una vez comprimido el fichero.

## Características de la orden

| Tipo de orden | [Orden inmediata](recupera-cod.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Editar/Mas/Recuperar entidades por código |
| Barra de herramientas en la que aparece la orden | Eliminar y recuperar |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [BORRA\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-cod.md)<br>[COMPRIMIR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/comprimir.md)<br>[RECUPERA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/recupera.md) |
| Nombre interno | {958CBD76-54DF-40b1-BEB0-A5ADAEE61A40} |

