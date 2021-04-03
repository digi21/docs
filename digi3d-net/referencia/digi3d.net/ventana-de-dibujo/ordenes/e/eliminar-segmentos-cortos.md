# ELIMINAR\_SEGMENTOS\_CORTOS

Elimina automáticamente vértices de geometrías para evitar que éstas tengan segmentos cuyo perímetro sea inferior a un valor especificado.

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| Perímetro | Valor de perímetro mínimo permitido. Si se detectan segmentos con un perímetro inferior al especificado en este valor, se considerará como error. |
| Códigos | Código o códigos \(se pueden añadir tantos como se quiera separándolos con espacios\) de las entidades a analizar. Se pueden utilizar comodines como \* y ? y además se pueden especificar todos los códigos que tengan una etiqueta anteponiendo una almoadilla \(\#\) al nombre de la etiqueta, como por ejemplo \#vias\_de\_comunicacion |

## Observaciones

Cuando esta orden decide que tiene que eliminar un vértice, analiza el resto de geometrías, y si localiza alguna que tenga algún vértice con las mismas coordenadas que el vértice que se ha decidido eliminar, modificará las coordenadas de ese vértice por el vértice que no se ha eliminado.

Si el sistema de referencia de coordenadas de la ventana de dibujo es proyectado \(UTM, Lambert, etc.\) el valor indicado en el parámetro de perímetro será en las unidades del sistema de referencia de coordenadas. Si por el contrario el sistema de referencia de coordenadas es geográfico, el programa proyectará la geometría e una proyección de tipo oblicua estereográfica con punto de anclaje en el primer vértice de la geometría para calcular el perímetro.

## Características de la orden

| Tipo de orden | [Orden inmediata](eliminar-segmentos-cortos.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Análisis geométricos/Detectar segmentos cortos |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | _Esta orden no se ve afectada por ninguna variable_ |
| Nombre interno de la orden | {C3857680-4931-4331-AB7C-FFD14D3360E3} |

