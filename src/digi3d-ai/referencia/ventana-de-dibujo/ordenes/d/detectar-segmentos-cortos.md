# DETECTAR\_SEGMENTOS\_CORTOS

Detecta líneas y polígonos con segmentos de longitud inferior al valor especificado.

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| Longitud | Longitud mínima permitida de un segmento, medida en 2D. Si se detectan segmentos con una longitud inferior a este valor, se considerará como error. |
| Códigos | Código o códigos \(se pueden añadir tantos como se quiera separándolos con espacios\) de las entidades a analizar. Se pueden utilizar comodines como \* y ? y además se pueden especificar todos los códigos que tengan una etiqueta anteponiendo una almoadilla \(\#\) al nombre de la etiqueta, como por ejemplo \#vías\_de\_comunicación |

## Observaciones

Si no indicas al menos la longitud y un código, la orden muestra un cuadro de diálogo para seleccionar los códigos y la longitud.

La orden analiza las líneas y los polígonos \(incluidos sus huecos\) visibles y dentro de la zona de interés. Por cada entidad con segmentos cortos crea una tarea de error, con una subtarea por cada segmento corto situada en su punto medio.

Si el sistema de referencia de coordenadas de la ventana de dibujo es proyectado \(UTM, Lambert, etc.\) el valor indicado en el parámetro de longitud será en las unidades del sistema de referencia de coordenadas. Si por el contrario el sistema de referencia de coordenadas es geográfico, el programa proyectará la geometría en una proyección de tipo oblicua estereográfica con punto de anclaje en el primer vértice de la geometría para calcular la longitud.
## Características de la orden

| Tipo de orden | [Orden inmediata](detectar-segmentos-cortos.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Análisis geométricos/Detectar segmentos cortos |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {C91882C6-2398-4E30-8C3B-39E1BC404237} |

