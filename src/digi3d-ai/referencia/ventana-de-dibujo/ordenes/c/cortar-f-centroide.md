# CORTAR\_F\_CENTROIDE
<!-- id: cortar-f-centroide -->

Genera un nuevo fichero con los elementos que se encuentren dentro de los límites de una entidad de dibujo con un centroide específico.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Directorio\_de\_salida | Directorio | No |
| 2 | Extensión | Extensión del archivo | No |
| 3 | Parámetros\_exportador | Parámetros importador/exportador correspondiente | No |
| 4 | Código\_de\_centroide | Código de las líneas límite y de los centroides | No |

Si se indican menos de cuatro parámetros, la orden emite un sonido de error y muestra un mensaje. Si no se indica ningún parámetro, la orden termina sin hacer nada.

### Ejemplo

`CORTAR_F_CENTROIDE="C:\Trabajos\carpeta\" bin "2 0 0 0 0" HOJA`

En este ejemplo:

* C:\Trabajos\carpeta es el directorio de salida en el que quieres generar el archivo.
* bin es la extensión del archivo que se va a generar.
* "2 0 0 0 0 " son los parámetros de exportación, en este caso 2 equivale a cm, 0 0 0 al origen y 0 para no bloquear.
* HOJA es el código con el que se han dibujado los límites y se han escrito los centroides.

## Observaciones

Esta orden permite cortar ficheros desde la línea de comandos. El límite puede ser un polígono irregular y no tienes que seleccionarlo manualmente.

Pueden existir varios límites con la condición de que sus centroides tengan el mismo código, pero un texto diferente en cada caso. Por cada límite, el programa genera un fichero cuyo nombre es el texto del centroide del límite. Si el archivo de una hoja ya existe, se sustituye.

Los límites son las líneas cerradas en 2D, visibles, no borradas y en la zona de interés que tienen el código indicado. El centroide de cada límite es el primer texto con ese código situado dentro del límite. Los límites sin centroide se ignoran. Las entidades que cruzan el límite se recortan y en el archivo solo se guarda la parte interior. Las entidades con el código de los límites (los límites y los centroides) no se guardan en ningún archivo.

## Características de la orden

| Tipo de orden | [Orden inmediata](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [CORTAR\_F](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cortar-f.md) |
| Nombre interno | {5710B5C8-DF11-43c7-AFB6-EF9818C99AE7} |

