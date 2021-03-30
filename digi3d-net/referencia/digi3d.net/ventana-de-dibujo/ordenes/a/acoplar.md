# ACOPLAR

Genera un archivo raster idéntico al/los cargado/os mediante la orden [CARGA\_RASTER](CARGA_RASTER.html), pero con los vectores insertados en el propio raster.

## Parámetros

No admite parámetros.

## Observaciones

La orden _ACOPLAR_, sólo se podrá ejecutar si se ha cargado previamente un archivo raster georreferenciado \(una orto o georreferenciando la imagen mediante la orden [AFIN\_RASTER](AFINRASTER.html), a continuación y con los vectores superpuestos podremos ejecutar la orden _ACOPLAR_.

Admite diferentes tipos de archivos raster, .tif, .tiff ó .bmp, pero el archivo que genera siempre será .tif.

Esta opción nos será de gran utilidad a la hora de plotear, por ejemplo ortos, ya que el archivo generado se podrá plotear en un plotter que no disponga de ripper.

## Características de la orden

| Tipo de orden | [Orden interactiva]() |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesRaster.dll |
| Variables relacionadas | No tiene variables relacionadas |

