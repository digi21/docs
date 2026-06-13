# RECUPERA\_COD

Recupera todas aquellas entidades borradas que tengan un código igual al tecleado.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 … N | Código y tipo de geometría de las entidades a recuperar. Se pueden indicar varios pares «código tipo» para recuperar entidades de distintos códigos a la vez | Si |

## Observaciones

La llamada a la orden se realiza escribiendo RECUPERA\_COD=&lt;código&gt;&lt;tipo de entidad&gt;, donde el tipo de entidad puede ser:

| Tipo de entidad | Descripción |
| :--- | :--- |
| c | Entidades gráficas \(puntos y líneas\) |
| l | Sólo entidades lineales |
| p | Sólo entidades puntuales |
| t | Sólo textos |
| b | Para bitmaps \(fotos\) |
| o | Para objetos OLE |
| \* | Para todos los tipos |

La eliminación real de las entidades borradas se produce al ejecutar la orden [COMPRIMIR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/comprimir.md), a partir de ese momento, los registros correspondientes a estas entidades desaparecen del fichero, por lo tanto, no se podrá recuperar níngún código borrado una vez comprimido el fichero.

## Características de la orden

| Tipo de orden | [Orden inmediata](recupera-cod.md) |
| :--- | :--- |
| Repite automáticamente | Yes |
| Opción del menú donde aparece la orden | Editar/Mas/Recuperar entidades por código |
| Barra de herramientas en la que aparece la orden | Eliminar y recuperar |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {958CBD76-54DF-40b1-BEB0-A5ADAEE61A40} |

