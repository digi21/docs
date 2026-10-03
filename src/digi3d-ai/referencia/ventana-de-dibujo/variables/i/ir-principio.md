# IR\_PRINCIPIO

Establece las coordenadas a las que se desplazará la ventana fotogramétrica al finalizar una línea.

## Parámetros


| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Ubicación a la que desplazar la ventana fotogramétrica al finalizar una línea |**0**: Permanecer en el sitio.<br>**1**: Ir al principio de la línea.<br>**2**: Ir al principio de la línea sumando a su Z el valor de la equidistancia.<br>**3**: Ir al principio de la línea restando a su Z el valor de la equidistancia.<br>**4**: Ir al último vértice de la línea sumando a su Z el valor de la equidistancia.<br>**5**: Ir al último vértice de la línea restando a su Z el valor de la equidistancia.<br>**?**: Consultar el valor actual en un globo.| Si |

Si se ejecuta sin parámetros, la orden asigna el valor 1 si el valor actual es 0, y el valor 0 en cualquier otro caso. El parámetro se reduce con el resto de dividirlo entre 6, de modo que 6 equivale a 0.


## Observaciones

En ocasiones nos interesa que al finalizar una línea la ventana fotogramétrica se desplace al comienzo de ésta, o que se desplace al comienzo de ésta sumando o restando a la coordenada Z el valor de la [equidistancia](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md).

Con los valores 2 a 5, si [FIJAZ](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/fijaz.md) está activada, la Z fijada pasa a ser la nueva Z.

El valor por defecto es 0.

## Características de la orden


| Tipo de orden | [Variable numérica](../../../ordenes/variables/variables-numericas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden |Dibujar/Al finalizar la línea actual.../Ir al principio de ésta<br>o<br>Dibujar/Al finalizar la línea actual.../Ir al principio de ésta y subir Z<br>o<br>Dibujar/Al finalizar la línea actual.../Ir al principio de ésta y bajar Z|
| Barra de herramientas en la que aparece la orden | Acción al finalizar línea |
| Extensión | DigiNG.OrdenesStandard.dll |
| Nombre interno | {F210493F-EAAD-4eeb-921D-CA828AC4129E} |


