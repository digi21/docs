# RECUPERA\_COD

Recupera todas aquellas entidades borradas que tengan un código igual al tecleado.

## Parámetros

No admite parámetros.

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

La eliminación real de las entidades borradas se produce al ejecutar la orden [COMPRIMIR](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/r/COMPRIMIR.html), a partir de ese momento, los registros correspondientes a estas entidades desaparecen del fichero, por lo tanto, no se podrá recuperar níngún código borrado una vez comprimido el fichero.

## Características de la orden

| Tipo de orden | [Orden inmediata](recupera-cod.md) |
| :--- | :--- |
| Repite automáticamente | Yes |
| Opción del menú donde aparece la orden | Editar/Mas/Recuperar entidades por código |
| Barra de herramientas en la que aparece la orden | Eliminar y recuperar |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/r/REPITE.html) |

