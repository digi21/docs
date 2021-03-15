# DETECTAR\_SEGMENTOS\_CORTOS

Detecta entidades que con segmentos con un perímetro inferior al valor especificado.

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| Perímetro | Valor de perímetro mínimo permitido. Si se detectan segmentos con un perímetro inferior al especificado en este valor, se considerará como error. |
| Códigos | Código o códigos \(se pueden añadir tantos como se quiera separándolos con espacios\) de las entidades a analizar. Se pueden utilizar comodines como \* y ? y además se pueden especificar todos los códigos que tengan una etiqueta anteponiendo una almoadilla \(\#\) al nombre de la etiqueta, como por ejemplo \#vias\_de\_comunicacion |

## Observaciones

Si el sistema de referencia de coordenadas de la ventana de dibujo es proyectado \(UTM, Lambert, etc.\) el valor indicado en el parámetro de perímetro será en las unidades del sistema de referencia de coordenadas. Si por el contrario el sistema de referencia de coordenadas es geográfico, el programa proyectará la geometría e una proyección de tipo oblicua estereográfica con punto de anclaje en el primer vértice de la geometría para calcular el perímetro.

## Características de la orden

| Tipo de orden | [Orden inmediata]() |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Análisis geométricos/Detectar segmentos cortos |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | _Esta orden no se ve afectada por ninguna variable_ |
| Nombre interno de la orden | {C91882C6-2398-4E30-8C3B-39E1BC404237} |

