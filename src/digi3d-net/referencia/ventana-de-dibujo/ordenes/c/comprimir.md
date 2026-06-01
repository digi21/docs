# COMPRIMIR

Elimina en el fichero de dibujo todos los elementos que tengan la marca de borrado y actualiza las topologías cargadas en memoria.

## Parámetros

Esta orden admite los siguientes parámetros:

COMPRIMIR=\[eliminar\_vértices\_duplicados\_XYZ\]\[eliminar\_vértices\_duplicados\_XY\]

En el caso de que queramos eliminar los vértices duplicados en XY \(independientemente de la coordenada Z\),

Ejecutaríamos COMPRIMIR=1 1.

## Observaciones

Al ejecutar esta orden se libera una parte de la memoria del ordenador, ya que se elimina el espacio ocupado por los registros del fichero marcados como borrados. El tamaño del fichero de dibujo se reducirá ya que sólo se almacenarán las entidades que no tienen marca de borrado.

Tras ejecutar esta orden, ninguno de los elementos borrados podrá ser recuperado.

## Características de la orden

| Tipo de orden | [Orden inmediata](comprimir.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Archivo/Herramientas/Comprimir |
| Barra de herramientas en la que aparece la orden | Esta orden no tiene asociado ningún botón en ninguna barra de herramientas |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |

