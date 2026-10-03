# BORRA\_R

Borra códigos por recinto topológico.

## Parámetros

No admite parámetros.

## Observaciones

La orden necesita al menos un archivo de topología cargado; si no lo hay, muestra el aviso «No hay ningún archivo de topología cargado» y termina.

La orden muestra un cuadro de diálogo en el que se eligen:

* Los códigos de las entidades que se van a borrar.
* El **Código del centroide**: solo se procesan los recintos cuyo centroide tiene este código.
* El **Tipo de recorte**, que indica qué entidades se consideran dentro del recinto.

Para cada recinto de las topologías cargadas cuyo centroide tiene el código indicado, la orden borra las entidades del archivo de dibujo activo que tienen alguno de los códigos elegidos y quedan dentro del recinto. No se tienen en cuenta las entidades borradas, las no visibles, las que están fuera de la zona de interés ni las que forman parte de una topología.

## Características de la orden

| Tipo de orden | [Orden inmediata](borra-r.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {A5DDA5DD-4A6A-422F-88CA-386ED660D395} |
