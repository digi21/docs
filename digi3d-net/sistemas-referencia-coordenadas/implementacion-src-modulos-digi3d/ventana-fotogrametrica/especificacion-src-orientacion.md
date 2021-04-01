# Especificación del Sistema de Coordenadas de Referencia de la Orientación

El Sistema de _Coordenadas de Referencia Terreno_ lo especifica la orientación del modelo fotogramétrico. Si no existe una orientación del modelo fotogramétrico, el Sistema de Coordenadas de Referencia Terreno coincidirá con el [Sistema de Coordenadas de Referencia del Sensor](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/sistemas-referencia-coordenadas/implementacion-src-modulos-digi3d/ventana-fotogrametrica/EspecificacionDelSistemaDeReferenciaDeCoordenadasDelSensor.html).

Algunos sensores permiten realizar una orientación del modelo fotogramétrico. Cada sensor permite un tipo determinado de orientación \(algunos realizan orientaciones afines, otros orientaciones absolutas, ...\). Si al cargar el modelo fotogramétrico se localiza una orientación asociada a éste \(orientación afín, orientación absoluta,...\) el Sistema de Coordenadas de Referencia Terreno coincidirá con el sistema de referencia de coordenadas de dicha orientación.

## Comprobación del Sistema de Coordenadas de Referencia Terreno actual

Puedes seleccionar la opción del menú **Ventana fotogramétrica/Ver información**. En el Panel de resultados aparecerá indicado con el título **Sistema de referencia de coordenadas de la orientación.**

