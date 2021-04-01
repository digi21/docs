# SELECCIONA\_ULTIMO

Selecciona la última entidad registrada en el fichero de dibujo, cuando se ha ejecutado una orden en la cual se pide seleccionar una entidad.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Sin parámetros | Selecciona todo tipo de elementos, líneas, puntos, textos, bitmaps u objetos OLE. | Si |
| 2 | l | Selecciona la última línea registarada | Si |
| 3 | p | Selecciona el último punto | Si |
| 4 | c | Selecciona lineas y puntos | Si |
| 5 | t | Selecciona el último texto | Si |
| 6 | b | Selecciona bitmaps | Si |
| 7 | o | Selecciona objetos OLE | Si |

## Observaciones

Esta orden permite una mayor velocidad a la hora de restituir o editar.

Si combinas la orden _SELECCIONA\_ULTIMO_ con la orden [ZOOM\_ENTIDAD](ZOOM_ENTIDAD.html), resulta muy útil en caso de que se haya digitalizado un punto en el infinito, ejecutaríamos primero la orden _ZOOM\_ENTIDAD_ y a continuación la orden _SELECCIONA\_ULTIMO_, así nos situaremos más rápido en la entidad y podremos proceder a borrarla.

### Ejemplo:

En el caso de haber digitalizado la línea límite para generar un modelo digital del terreno por correlación, y después de dar la orden [MDTPC](MDTPC.html) podremos ejecutar la orden _SELECCIONA\_ULTIMO_ para hacer una selección automática de la entidad limitadora.

## Características de la orden

| Tipo de orden | [Orden interactiva]() |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Seleccionar última entidad |
| Barra de herramientas en la que aparece la orden | Selecciones |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |

