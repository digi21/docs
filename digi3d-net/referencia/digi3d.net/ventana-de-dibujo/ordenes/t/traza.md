# TRAZA

Crea un gráfico de hojas en forma de traza con centroides para crear con posterioridad hojas con la orden [RECORTA\_TRAZA](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/t/RECORTA_TRAZA.html).

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Tamaño de las hojas en horizontal | Número real | Si |
| 2 | Tamaño de las hojas en vertical | Número real | Si |
| 3 | Código con el que crear las hojas | Código | Si |
| 4 | Prefijo | Texto | Si |
| 5 | Postfijo | Texto | Si |
| 6 | Selección del eje de la traza | Selección manual | Si |

Una vez seleccionado el eje aparecerán las siguientes opciones para ajustar la posición de la traza: mediante la tecla \[-\] desplaza la traza hacia la izquierda, con la tecla \[+\] se podrá desplazar hacia la derecha y mediante la tecla \[espacio\] se guardarían los cambios.

Hasta que el usuario no acepte mediante la tecla espaciadora no se representarán los centroides y no se registrarán las hojas.

## Observaciones

Se puede utilizar para generar hojas en batería.

Antes de ejecutar la orden, tendrá que estar representada la línea que sirve de eje central para las hojas a generar.

## Características de la orden

| Tipo de orden | [Orden interactiva](traza.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Dibujar/Gráfico de hojas/Crear gráfico de hojas \(traza\) |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesRaster.dll |
| Variables relacionadas | No tiene variables relacionadas |

