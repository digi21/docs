# IR\_A\_PUNTO\_APOYO

Mueve el restituidor a un punto de apoyo cuyas coordenadas deben aparecer en el archivo de puntos que se especificó en la pestaña [Sensores fotogramétricos](/digi3d-ai/referencia/cuadros-de-dialogo/nuevo-proyecto/sensores-fotogrametricos.md) del cuadro de diálogo **Nuevo proyecto**.

## Parámetros

No admite parámetros.

## Observaciones

La orden al cargar comprueba que hemos entrado en formato estereoscópico y que la relativa y la absoluta están realizadas.  
Después solicita un punto\* y busca dicho punto en el archivo de puntos. Si lo encuentra desplaza el restituidor a dicho punto. \*El punto se puede entrar de dos formas:

* Introduciendo un número de punto \(el programa buscará por la primera columna del archivo de puntos\).
* Introduciendo \*\[nemotécnico\] Ej: \*PK12 \(el programa buscará por el nemotécnico del archivo de puntos\).

## Características de la orden

| Tipo de orden | Orden interactiva |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Ventana fotogramétrica/Ir a punto de apoyo |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | Digi3D.CommonCommands.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [IR\_A](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ir-a.md)<br>[IR\_A\_PUNTO\_ORIGEN](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/i/ir-a-punto-origen.md) |
| Nombre interno | {9FCD076A-DD12-42a7-980E-FC2392C95419} |

