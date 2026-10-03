# N

Activa como dispositivo de entrada el fichero ASCII especificado en la pantalla de inicio de DigiNG o mediante la orden [FICHERO\_P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/fichero-p.md).

## Parámetros

No admite parámetros.

## Observaciones

Si no hay ningún fichero de puntos asignado, o el fichero asignado no existe, la orden muestra un cuadro de diálogo para seleccionarlo.

A continuación la orden muestra un cuadro de diálogo con la lista de puntos del fichero. Teclea un número de punto, o haz clic en un punto de la lista, y pulsa _Aceptar_: la orden desplaza el cursor a las coordenadas del punto y las envía como un punto a la orden activa. Si no hay ninguna orden activa, ejecuta antes la orden asociada al código activo. Si tecleas dos números separados por un espacio, la orden envía todos los puntos del rango, en orden ascendente o descendente.

Si la variable [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) está activada, el cuadro de diálogo se vuelve a mostrar tras cada punto.

Cada línea del fichero contiene los datos de un punto, separados entre sí por comas, espacios en blanco o tabuladores. La orden ignora las líneas con menos de cuatro datos:

| Dato | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| Primer dato | Número del punto para identificar de forma unívoca cada uno de los puntos del fichero | Número entero | No |
| Segundo dato | Coordenada X | Número real | No |
| Tercer dato | Coordenada Y | Número real | No |
| Cuarto dato | Coordenada Z | Número real | No |
| Quinto dato | Descripción del punto | Texto sin espacios | Si |

## Características de la orden

| Tipo de orden | [Orden interactiva](n.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Nombre interno | {B4C60C59-89B2-4402-8C5F-307DD0C8EE86} |

