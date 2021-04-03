# ON

Especifica el código \(o códigos\) que se desea visualizar en el dibujo.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Valor numérico | Número real | Si |

### Ejemplo

Z=100

Todas las entidades representadas tendrán 100 como valor de Z

## Observaciones

En el caso de que se quiera activar la visualización en la pantalla de visión estereoscópica, se pueden emplear las órdenes [OND](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/o/OND.html) u [ONS](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/o/ONS.html).

Podemos especificar el tipo de entidad a mostrar, para cada uno de los códigos: Líneas, Puntos ó Textos.

Digi3D nos permite cargar archivos de muestra de códigos o guardar uno que generemos nostros:

* Cargar de archivo...: carga un archivo de muestra de códigos previamente generado y guardado.
* Guardar en archivo...: podemos guardar mediante un nombre, la lista de códigos seleccionada para una posterior utilización. Los archivos generados estarán en formato .xml.

## Características de la orden

| Tipo de orden | [Orden interactiva](on.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesRaster.dll |
| Variables relacionadas | No tiene variables relacionadas |

