# P
<!-- id: p-3 -->

Dibuja una paralela a una entidad lineal, automáticamente cuando se termina de registrar la entidad.

## Parámetros


| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Modo automático |Si no se especifica ningún parámetro el valor de la variable booleana cambiará de modo *Activado* a *Desactivado* y de *Desactivado* a *Activado*.<br>**0**: Para desactivar la variable booleana.<br>**1**: Para activar la variable booleana.<br>**?**: Para consultar el valor de la variable booleana. Aparecerá un globo indicando si la orden está activada o desactivada.| Si |


## Observaciones

La paralela que se genera, se dibujará con el mismo código que la entidad dibujada.

Conviene fijar la [distancia activa](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md), con su signo:

* Positivo: La paralela se realizará a la derecha en el sentido de avance del dibujo de la entidad.
* Negativo: La paralela se realizará a la izquierda en el sentido de avance del dibujo de la entidad.

La orden no pide la distancia activa: la paralela se calcula con el valor que tenga _DA_ al finalizar la línea. Al iniciar Digi3D.AI _DA_ vale 1. Si _DA_ vale 0, la paralela coincide con la línea original.

La paralela solo se crea al finalizar una línea digitalizada con la orden [LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md).

## Características de la orden

| Tipo de orden | [Variable booleana](../variables-booleanas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Dibujar/Al finalizar la línea actual.../Crear automáticamente una paralela \(según distancia activa\) |
| Barra de herramientas en la que aparece la orden | Acción al finalizar línea |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [DA](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md) |
| Nombre interno | {89889DCE-1E5E-4c13-B08E-C66B10DF26BC} |

