# RECORTA\_TRAZA

Crea una serie de hojas al estilo de la orden [HOJA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/h/hoja.md).

La orden busca las líneas cerradas con el código del marco, como las que crea [TRAZA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/traza.md), y el texto con ese mismo código que hay dentro de cada una. Por cada marco con texto crea un archivo en el directorio de salida, con el texto como nombre y la extensión indicada. Los marcos sin texto se omiten.

El contenido de cada archivo depende del número de vértices del marco:

* Con un marco de 5 vértices (4 esquinas y el cierre), la orden genera la hoja como [HOJA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/h/hoja.md): las entidades recortadas, el marco, las cruces y los rótulos de coordenadas.
* Con cualquier otro marco, el archivo solo contiene las entidades recortadas por el marco, sin marco, cruces ni rótulos.

![RECORTA_TRAZA: tres marcos con los textos H1, H2 y H3 generan los archivos H1.bin, H2.bin y H3.bin; un marco sin texto se omite](../../../../../images/orden-recorta-traza.svg)

## Parámetros


| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Directorio de salida | Indica el directorio en el cual se guardará el resultado | Si |
| 2 | Extensión de los archivos a generar | Tipo de formato de archivo a generar, BIK, BIN, DGN, DWG o DXF | Si |
| 3 | Propiedades del motor de importación/exportación |Precisión: de las coordenadas en el modelo<br>Origen global , Y y Z<br>Tipo de bloqueo: No bloquear, Denegar lectura, Denegar escritura, Denegar lectura y escritura| Si |
| 4 | Propiedades generales |Escala: escala de creación de la hoja<br>Código del marco| Si |
| 5 | Propiedades de las cruces |Código cruces<br>Altura cruces<br>Separación de cruces<br>Medias cruces: Indica si insertar medias cruces en el límite de la hoja| Si |


Puedes ejecutar la orden desde la línea de comandos utilizando el siguiente formato:

RECORTA\_TRAZA=\[directorio de salida\] \[extensión\] \[parámetros importador \(varían según la extensión\)\] \[escala\] \[código del marco\] \[código de las cruces\] \[altura de cruces\] \[separación de cruces\] \[insertar medias cruces\] \[código de coordenadas\] \[altura de coordenadas\] \[número de decimales para coordenadas\]

Los parámetros del importador para archivos .bin son \[precisión\]\[origen global X\]\[origen global Y\]\[origen global Z\]. La precisión 2 para centímetros y 3 para milímetros. Los parámetros del importador se tomán como un único parámetro para la orden RECORTA\_TRAZA, lo que significa que hay que ponerlos entre comillas.

### Ejemplo:

`recorta_traza="c:\trabajo\x" bin "2 0.0 0.0 0.0" 1000 HOJA HOJA 10 100 1 HOJA 7.5 2`

## Características de la orden

| Tipo de orden | [Orden interactiva](recorta-traza.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Dibujar/Gráfico de hojas/Crear hojas a partir de gráfico de hojas |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {B066D261-DFE7-4c27-AFAC-CECD7B76D3C2} |

