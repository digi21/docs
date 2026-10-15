# Digi21.DigiNG.Plugin.Command
<!-- id: digi21.diging.plugin.commands -->

Espacio de nombres: `Digi21.DigiNG.Plugin.Command`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Tipos para escribir órdenes de Digi3D.AI en una extensión .NET. Una orden es una clase que deriva de [Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/command.md) y tiene el atributo [CommandAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/atributos/commandattribute.md). El [tutorial de extensiones](/digi3d-ai/programacion/.net/tutorial-extension.md) explica cómo se crea y se carga una extensión.

## Atributos

| Atributo | Descripción |
| :--- | :--- |
| [CommandAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/atributos/commandattribute.md) | Marca una clase como orden y le asigna el nombre con el que el usuario la ejecuta. |
| [LocalizableCommandAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/atributos/localizablecommandattribute.md) | Igual que `CommandAttribute`, con el nombre, la descripción y la ayuda leídos de los recursos de la extensión. |
| [RelatedCommandAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/atributos/relatedcommandattribute.md) | Indica el nombre de una orden relacionada. Digi3D.AI no lo lee. |

## Clases

| Clase | Descripción |
| :--- | :--- |
| [Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/command.md) | Clase base de las órdenes: eventos del dispositivo de entrada, parámetros y finalización de la orden. |
| [EntitySelectedEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/entityselectedeventargs.md) | Datos del evento `EntitySelected`: entidad, punto y segmento seleccionados. |
| [MoveEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/moveeventargs.md) | Datos del evento `Move`: coordenadas del cursor y botón pulsado. |

## Interfaces

| Interfaz | Descripción |
| :--- | :--- |
| [ICommand](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/interfaces/icommand.md) | Métodos con los que Digi3D.AI notifica a una orden los eventos de la ventana de dibujo. |
