# P

Dibuja una paralela a una entidad lineal, automáticamente cuando se termina de registrar la entidad.

## Parámetros


| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Modo de finalización cerrando línea | Si no se especifica ningún parámetro el valor de la variable booleana cambiará de modo *Activado* a *Desactivado* y de *Desactivado* a *Activado*.; **0**: Para desactivar la variable booleana.; **1**: Para activar la variable booleana.; **?**: Para consultar el valor de la variable booleana. Aparecerá un globo indicando si la orden está activada o desactivada. | Si |


## Observaciones

La paralela que se genera, se dibujará con el mismo código que la entidad dibujada.

Conviene fijar la [distancia activa](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md), con su signo:

* Positivo: La paralela se realizará a la derecha en el sentido de avance del dibujo de la entidad.
* Negativo: La paralela se realizará a la izquierda en el sentido de avance del dibujo de la entidad.

No obstante, si no se ha establecido el valor de _DA_ con anterioridad, al ejecutar esta orden se pedirá la distancia activa en ese momento, pues no se pueden dibujar paralelas cuando el valor de _DA_ es cero.

## Características de la orden

| Tipo de orden | [Variable booleana](p.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Dibujar/Al finalizar la línea actual.../Crear automáticamente una paralela \(según distancia activa\) |
| Barra de herramientas en la que aparece la orden | Acción al finalizar línea |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) |
| Nombre interno | {89889DCE-1E5E-4c13-B08E-C66B10DF26BC} |

