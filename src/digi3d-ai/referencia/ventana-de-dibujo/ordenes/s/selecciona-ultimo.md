# SELECCIONA\_ULTIMO

Selecciona la última entidad registrada en el fichero de dibujo, cuando se ha ejecutado una orden en la cual se pide seleccionar una entidad.

## Parámetros

Sin parámetros, la orden busca la última entidad de cualquier tipo. Cada parámetro es una letra que limita la búsqueda a un tipo de entidad; se pueden indicar varias, separadas por espacios, y la orden busca la última entidad de cualquiera de los tipos indicados.

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1...n | [Tipo de geometría](/digi3d-ai/referencia/ventana-de-dibujo/tipos-de-geometria.md) a buscar | `l` líneas, `p` puntos, `t` textos, `h` polígonos, `c` entidades complejas, `b` bitmaps, `o` objetos OLE | Si |

## Observaciones

Esta orden permite una mayor velocidad a la hora de restituir o editar.

La orden recorre el archivo de dibujo activo desde el final y toma la primera entidad visible, dentro de la zona de interés y del tipo indicado. Las entidades borradas solo se tienen en cuenta si está activada la variable [BORRADOS](/digi3d-ai/referencia/ventana-de-dibujo/variables/b/borrados.md). Si la orden en ejecución admite selección simple, recibe la entidad como seleccionada en su último vértice; si no, recibe una pulsación del pulsador de datos en el último vértice de la entidad.

### Ejemplo:

Si combinas la orden _SELECCIONA\_ULTIMO_ con la orden [ZOOM\_ENTIDAD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoom-entidad.md), resulta muy útil en caso de que se haya digitalizado un punto en el infinito, ejecutaríamos primero la orden _ZOOM\_ENTIDAD_ y a continuación la orden _SELECCIONA\_ULTIMO_, así nos situaremos más rápido en la entidad y podremos proceder a borrarla.

## Características de la orden

| Tipo de orden | [Orden inmediata](selecciona-ultimo.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Seleccionar última entidad |
| Barra de herramientas en la que aparece la orden | Selecciones |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [BORRA\_ULTIMO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-ultimo.md)<br>[EJECUTA\_ORDEN\_PASANDOLE\_ULTIMA\_GEOMETRIA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/ejecuta-orden-pasandole-ultima-geometria.md)<br>[SELECCIONA\_INDICE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-indice.md) |
| Nombre interno | {86671AB1-AFE0-4af5-8695-8BF8B5BE1E67} |

