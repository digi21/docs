# Especificación del Sistema de Coordenadas de Referencia de la Orientación
<!-- id: especificacion-src-orientacion -->

El Sistema de _Coordenadas de Referencia Terreno_ se define en la orientación del modelo fotogramétrico. Si no existe una orientación del modelo fotogramétrico, el Sistema de Coordenadas de Referencia Terreno coincidirá con el [Sistema de Coordenadas de Referencia del Sensor](/digi3d-ai/sistemas-referencia-coordenadas/implementacion-src-modulos-digi3d/ventana-fotogrametrica/especificacion-src-sensor.md).

Algunos sensores permiten realizar una orientación del modelo fotogramétrico. Cada sensor permite un tipo determinado de orientación \(algunos realizan orientaciones afines, otros orientaciones absolutas, ...\). Si al cargar el modelo fotogramétrico se localiza una orientación asociada a éste \(orientación afín, orientación absoluta,...\) el Sistema de Coordenadas de Referencia Terreno coincidirá con el sistema de referencia de coordenadas de dicha orientación.

## Comprobación del Sistema de Coordenadas de Referencia Terreno actual

Selecciona la opción del menú **Ventana fotogramétrica/Ver información del modelo**. El sistema de referencia de coordenadas terreno aparecerá en el Panel de resultados bajo el título **Sistema de referencia de coordenadas de la orientación.**

