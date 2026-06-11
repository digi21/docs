# FIJAZ

Activa o desactiva la opción de fijar el valor de la coordenada Z al múltiplo más próximo de la [equidistancia](fijaz.md) de curvas de nivel.

## Parámetros


| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Modo automático | Si no se especifica ningún parámetro el valor de la variable booleana cambiará de modo *Activado* a *Desactivado* y de *Desactivado* a *Activado*.; **0**: Para desactivar la variable booleana.; **1**: Para activar la variable booleana.; **?**: Para consultar el valor de la variable booleana. Aparecerá un globo indicando si la orden está activada o desactivada. | No |


## Observaciones

La equidistancia se especifica en la pantalla de inicio de DgiNG o bien con la orden [EQUIDISTANCIA](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md).

El valor de Z queda bloqueado, de forma que no puede ser modificado al variar la altura con el pedal del restituidor.

Esta orden se suele utilizar en el dibujo de curvas de nivel, forzando a que la coordenada Z se registre con un valor constate igual a un múltiplo de la equidistancia.

## Características de la orden

| Tipo de orden | [Variable booleana](fijaz.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Inmediato/Coordenada Z/Fijar la coordenada Z al múltiplo de equidistancia más cercano |
| Barra de herramientas en la que aparece la orden | Coordenada Z |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) |
| Nombre interno | {17B6ECF4-E5F7-4fc6-8030-CE8C698D08B7} |

