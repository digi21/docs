# Digi21.DigiNG.IO
<!-- id: digi21.diging.io -->

Espacio de nombres del ensamblado [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/) con las interfaces de los archivos de dibujo.

Las clases que leen y escriben archivos de dibujo implementan estas interfaces: [Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md), [BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/bindouble.md), [Shp](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.shp/shp.md), [Geomedia](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.geomedia/geomedia.md) y [DrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/drawingfile.md), que representa un archivo de dibujo cargado en Digi3D.AI. Un método que recibe una de estas interfaces sirve para cualquier formato.

## Interfaces

| Interfaz | Descripción |
| :--- | :--- |
| [IReadOnlyDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/) | Archivo de dibujo que se puede recorrer: entidades, ruta, sistema de referencia de coordenadas, base de datos, visibilidad y coordenadas mínimas y máximas. |
| [IDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/) | Archivo de dibujo en el que además se pueden añadir y eliminar entidades. |

## Delegados

| Delegado | Descripción |
| :--- | :--- |
| [DelegateGetWkt](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/delegados/delegategetwkt.md) | Función que devuelve el WKT del sistema de referencia de coordenadas de un archivo de dibujo nuevo. |
