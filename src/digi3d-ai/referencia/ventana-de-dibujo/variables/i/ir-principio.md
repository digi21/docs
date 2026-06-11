# IR\_PRINCIPIO

Establece las coordenadas a las que se desplazará la ventana fotogramétrica al finalizar una línea.

## Parámetros


| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Ubicación a la que desplazar la ventana fotogramétrica al finalizar una línea | **0**: Permanecer en el sitio.; **1**: Ir al principio de la línea.; **2**: Ir al principio de la línea incrementando la coordenada Z al siguiente múltiplo de equidistancia.; **3**: Ir al principio de la línea decrementando la coordenada Z al anterior múltiplo de equidistancia.; **4**: Permanecer en el sitio pero incrementar la coordenada Z al siguiente múltiplo de equidistancia.; **5**: Permanecer en el sitio pero decrementar la coordenada Z al anterior múltiplo de equidistancia. | No |


## Observaciones

En ocasiones nos interesa que al finalizar una línea la ventana fotogramétrica se desplace al comienzo de ésta, o que se desplace al comienzo de ésta pero incrementando o decrementando la coordenada Z al siguiente múltiplo de equidistancia.

## Características de la orden


| Tipo de orden | [Variable booleana](ir-principio.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Dibujar/Al finalizar la línea actual.../Ir al principio de ésta; o; Dibujar/Al finalizar la línea actual.../Ir al principio de ésta y subir Z; o; Dibujar/Al finalizar la línea actual.../Ir al principio de ésta y bajar Z |
| Barra de herramientas en la que aparece la orden | Acción al finalizar línea |
| Extensión | DigiNG.OrdenesStandard.dll |
| Nombre interno | {F210493F-EAAD-4eeb-921D-CA828AC4129E} |


