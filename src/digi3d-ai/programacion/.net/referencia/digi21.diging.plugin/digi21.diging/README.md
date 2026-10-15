# Digi21.DigiNG
<!-- id: digi21.diging-2 -->

Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Tipos para que una extensión trabaje con la ventana de dibujo de Digi3D.AI: el archivo de dibujo activo, la pila de órdenes y de deshacer, los códigos, las opciones de digitalización y visualización, y los eventos de alta y baja de entidades. El punto de entrada es la clase estática [DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/). Estos tipos solo funcionan dentro de Digi3D.AI.

## Clases

| Clase | Descripción |
| :--- | :--- |
| [ActiveParameters](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/activeparameters.md) | Ángulo activo, distancias activas, altura de texto, equidistancia y escala activa. |
| [AddingEntityEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/addingentityeventargs.md) | Argumentos del evento `DigiNG.AddingEntity`, que se produce antes de guardar una entidad y permite descartarla. |
| [Codes](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/codes.md) | Códigos activos, cuadros de diálogo de selección de códigos y visibilidad de los códigos. |
| [Commands](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/commands.md) | Pila de órdenes: ejecución de órdenes, orden activa y repetición. |
| [DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/) | Clase estática de acceso a la ventana de dibujo activa. |
| [DigitizingLineOptions](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/digitizinglineoptions.md) | Clase estática con las opciones que se aplican a las líneas que se digitalizan. |
| [DrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/drawingfile.md) | Archivo de dibujo cargado en una ventana de dibujo. |
| [EntityEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/entityeventargs.md) | Argumentos de los eventos `DigiNG.EntityAdded`, `DigiNG.EntityDeleted` y `DigiNG.EntityRecovered`. |
| [GeographicCalculator](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/geographiccalculator.md) | Áreas, perímetros y distancias según el sistema de referencia de coordenadas de la ventana de dibujo. |
| [InputDeviceOptions](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/inputdeviceoptions.md) | Dispositivo de entrada, posición del cursor, bloqueos de coordenadas y autocentrado. |
| [LicenseInfo](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/licenseinfo.md) | Identificador de la llave de protección. |
| [SnappingOptions](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/snappingoptions.md) | Clase estática con las opciones del tentativo. |
| [VisualizationOptions](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/visualizationoptions.md) | Opciones de visualización de la ventana de dibujo. |

## Enumeraciones

| Enumeración | Descripción |
| :--- | :--- |
| [DrawingMode](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/enumeraciones/drawingmode.md) | Modo en que `DigiNG.DrawEntity` dibuja una entidad. |
| [InputDevice](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/enumeraciones/inputdevice.md) | Dispositivo de entrada de la ventana de dibujo. |
| [InputDeviceButton](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/enumeraciones/inputdevicebutton.md) | Botón del dispositivo de entrada. |
