# IR\_A\_PUNTO\_APOYO

Mueve el restituidor a un punto de apoyo cuyas coordenadas deben aparecer en el archivo de puntos que se especificó en la carátula de entrada [Estereoscópico](CuadroDeDialogoCrearProyectoFotogrametrico.html).

## Parámetros

No admite parámetros.

## Observaciones

La orden al cargar comprueba que hemos entrado en formato estereoscópico y que la relativa y la absoluta están realizadas.  
Después solicita un punto\* y busca dicho punto en el archivo de puntos. Si lo encuentra desplaza el restituidor a dicho punto. \*El punto se puede entrar de dos formas:

* Introduciendo un número de punto \(el programa buscará por la primera columna del archivo de puntos\).
* Introduciendo \*\[nemotécnico\] Ej: \*PK12 \(el programa buscará por el nemotécnico del archivo de puntos\).

## Características de la orden

| Tipo de orden |  |
| :--- | :--- |
| Repite automáticamente |  |
| Opción del menú donde aparece la orden |  |
| Barra de herramientas en la que aparece la orden |  |
| Extensión |  |
| Variables relacionadas |  |

