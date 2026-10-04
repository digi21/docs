# FIJAZ
<!-- id: fijaz -->

Activa o desactiva la opción de fijar el valor de la coordenada Z al múltiplo más próximo de la [equidistancia](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md) de curvas de nivel.

## Parámetros


| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Valor que indica si se fija la coordenada Z |Si no se especifica ningún parámetro el valor de la variable booleana cambiará de modo *Activado* a *Desactivado* y de *Desactivado* a *Activado*.<br>**0**: Para desactivar la variable booleana.<br>**1**: Para activar la variable booleana.<br>**?**: Para consultar el valor de la variable booleana. Aparecerá un globo indicando si la orden está activada o desactivada.| Si |


## Observaciones

La equidistancia se especifica en el cuadro de diálogo de nuevo proyecto o bien con la orden [EQUIDISTANCIA](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md).

Al activarse, la orden redondea la Z del cursor al múltiplo de la equidistancia más próximo, desplaza el cursor a esa Z y la bloquea, de forma que no puede ser modificada al variar la altura con el pedal del restituidor. Si la equidistancia no es mayor que 0, no redondea: bloquea la Z actual del cursor. Al desactivarse, la Z queda desbloqueada. Con **?** solo muestra el valor; no mueve el cursor.

Por defecto está desactivada.

Esta orden se suele utilizar en el dibujo de curvas de nivel, forzando a que la coordenada Z se registre con un valor constate igual a un múltiplo de la equidistancia.

## Características de la orden

| Tipo de orden | [Variable booleana](../../../ordenes/variables/variables-booleanas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Coordenada Z/Fijar la coordenada Z al múltiplo de equidistancia más cercano |
| Barra de herramientas en la que aparece la orden | Coordenada Z |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [EQUIDISTANCIA](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md) |
| Nombre interno | {17B6ECF4-E5F7-4fc6-8030-CE8C698D08B7} |

