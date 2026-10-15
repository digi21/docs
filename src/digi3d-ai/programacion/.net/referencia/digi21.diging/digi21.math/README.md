# Digi21.Math
<!-- id: digi21.math -->

Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Tipos para puntos, segmentos, ventanas (cajas de coordenadas mínimas y máximas), ángulos y comparación de números reales con tolerancia.

## Clases

| Clase | Descripción |
| :--- | :--- |
| [Angles](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/) | Conversión entre radianes, grados sexagesimales y grados centesimales, entre azimutes y ángulos trigonométricos, y entre giros y matrices de giro. |
| [Point2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point2d.md) | Punto o vector en el plano X, Y. |
| [Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md) | Punto o vector en el espacio. |
| [Point3DCollection](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3dcollection.md) | Lista modificable de los vértices de una línea o de un polígono. |
| [Point3DEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3deventargs.md) | Argumento de los eventos de una orden que notifican una coordenada. |
| [Point3DReadOnlyCollection](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3dreadonlycollection.md) | Lista de solo lectura de `Point3D`. |
| [Precision](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/precision.md) | Tolerancia (épsilon) y comparaciones de valores `double` con esa tolerancia. |
| [Segment](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/segment.md) | Segmento entre dos `Point3D` y operaciones con la recta que pasa por sus extremos. |
| [Window2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window2d.md) | Ventana en el plano X, Y. |
| [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md) | Ventana en el espacio. |

## Interfaces

| Interfaz | Descripción |
| :--- | :--- |
| [IDesplazable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/) | Objeto que se desplaza sumando un incremento a sus coordenadas. |
| [IWindow2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/) | Objeto con coordenadas mínimas y máximas en el plano X, Y. |
| [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/) | Objeto con coordenadas mínimas y máximas en el espacio. |

## Enumeraciones

| Enumeración | Descripción |
| :--- | :--- |
| [SegmentRelation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/enumeraciones/segmentrelation.md) | Posición relativa de las rectas de dos `Segment`. |
