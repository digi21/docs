# ABRIR\_BING\_MAPS

Abre una ventana de Bing Maps en las coordenadas donde está el cursor en la ventana de dibujo.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Estilo del mapa (por defecto «a») | Si |

## Observaciones

La orden transforma las coordenadas X e Y del cursor del sistema de referencia de coordenadas del archivo de dibujo a WGS84 (EPSG:4326) y abre Bing Maps en el navegador predeterminado con nivel de zoom 20. Si hay varias transformaciones posibles, muestra un cuadro de diálogo para elegir una.

El parámetro se pasa tal cual a Bing Maps como estilo del mapa (`style`).

## Características de la orden

| Tipo de orden | [Orden inmediata](abrir-bing-maps.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {C4C1DE51-7DE7-46A6-B73A-145B6DEAAEEC} |
