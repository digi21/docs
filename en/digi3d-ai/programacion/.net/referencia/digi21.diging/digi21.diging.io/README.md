# Digi21.DigiNG.IO
<!-- id: digi21.diging.io -->
<!-- origen: bddbe8f63527490e9915a54bf4336989c83f6dca -->

Namespace in the [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/) assembly containing drawing file interfaces.

Classes that read and write drawing files implement these interfaces: [Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md), [BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/bindouble.md), [Shp](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.shp/shp.md), [Geomedia](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.geomedia/geomedia.md) and [DrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/drawingfile.md), which represents a drawing file loaded in Digi3D.AI. A method taking one of these interfaces works with any format.

## Interfaces

| Interface | Description |
| :--- | :--- |
| [IReadOnlyDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/) | Drawing file that can be iterated: entities, path, coordinate reference system, database, visibility and minimum and maximum coordinates. |
| [IDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/) | Drawing file to which entities can also be added and deleted. |

## Delegates

| Delegate | Description |
| :--- | :--- |
| [DelegateGetWkt](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/delegados/delegategetwkt.md) | Function returning the coordinate reference system's WKT for a new drawing file. |
