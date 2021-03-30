# CORTAR\_F\_CENTROIDE

Genera un nuevo fichero con los elementos que se encuentren dentro de los límites de una entidad de dibujo con un centroide específico.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Directorio\_de\_salida | Directorio | Si |
| 2 | Extensión | Extensión del archivo | Si |
| 3 | Parámetros\_exportador | Parámetros importador/exportador correspondiente | Si |
| 4 | Código\_de\_centroide | Código del centroide | Si |

### Ejemplo

`CORTAR_F_CENTROIDE="C:\Trabajos\carpeta\" bin "2 0 0 0 0" HOJA`   

Siendo:

* C:\Trabajos\carpeta, el directorio de salida en el cual quiere el usuario generar el archivo.
* bin, es la extensión del archivo a generar
* "2 0 0 0 0 " son los parámetros de exportación, en este caso 2 equivale a cm, 0 0 0 al origen y 0 para no bloquear.
* HOJA, es el código con el cual se ha dibujado el límite y escrito los centroides.

## Observaciones

Esta orden permite de esta manera cortar ficheros desde la línea de comandos. El límite podrá ser un polígono irregular sin necesidad de seleccionar manualmente el límite.

Pueden existir varios límites con la condición de que su centroide tenga el mismo código pero el texto sea diferente en cada caso. El programa genera un fichero que se llamará igual que el centroide.

## Características de la orden

| Tipo de orden | [Orden interactiva]() |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _sta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |

