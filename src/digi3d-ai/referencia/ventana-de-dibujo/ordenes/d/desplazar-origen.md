# DESPLAZAR\_ORIGEN

Cambia la localización del origen \(comienzo y final\) de una línea cerrada.

![HOJA, TRAZA, RECORTA_TRAZA, DESPLAZAR_ORIGEN, EJE_A_POLIGONO y SIGUIENTE_SEGMENTO_VERTICAL: resultado de cada orden](../../../../../images/hojas-origen-eje-vertical.svg)

## Parámetros

No admite parámetros.

## Observaciones

Si necesitas cambiar la geometría de una entidad cerrada y el origen de dicha entidad coincida justo con la zona a modificar, esto hace imposible la modificación. La solución a este problema es la utilización de la orden _DESPLAZAR\_ORIGEN_.

1. Selecciona la línea cerrada, o el contorno o un hueco de un polígono. Aparece una cruz en el origen actual.
2. Pulsa **+** o **−** para mover la cruz al vértice siguiente o al anterior.
3. Pulsa **espacio**. La línea pasa a empezar y terminar en el vértice de la cruz; su forma no cambia.

## Características de la orden

| Tipo de orden | [Orden interactiva](desplazar-origen.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {DEB8EC05-421D-4e7f-B3A4-ED5BF9CC7331} |

