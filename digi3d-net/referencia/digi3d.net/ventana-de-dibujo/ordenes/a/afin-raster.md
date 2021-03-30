# AFIN\_RASTER

Carga imágenes sin orientación asociada.

## Parámetros

Para calcular la transformación AFIN, el programa necesita de al menos 3 puntos. Es recomendable digitalizar un mínimo de 4 puntos para dar al programa redundancia de datos y poder comprobar los residuos mostrados en la barra inferior mediante los valores Rx y Ry.

## Observaciones

Se calcula automáticamente una orientación AFIN ajustando la imagen al rango de coordenadas máximas y mínimas en la pantalla en el momento de la carga de la imagen.

Para cargar la imagen raster debemos utilizar la orden [CARGA\_RASTER](CARGA_RASTER.html).

## Características de la orden

| Tipo de orden | [Orden interactiva]() |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesRaster.dll |
| Variables relacionadas | No tiene variables relacionadas |

