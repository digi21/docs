# Digi21.DigiNG.Plugin.Commands

Proporciona tipos para implementar extensiones que publiquen órdenes en la ventana de dibujo de Digi3D.NET.

## Atributos

|  |  |
| :--- | :--- |
| [CommandAttribute](atributos/commandattribute.md) | Decora una clase para convertirla en una orden de Digi3D.NET asignándole un nombre de orden único. |
| [LocalizableCommandAttribute](atributos/localizablecommandattribute.md) | Decora una clase para convertirla en una orden de Digi3D.NET asignándole un nombre extraído de recursos localizables. |
| [RelatedCommandAttribute](atributos/relatedcommandattribute.md) | Decora una clase para indicarle órdenes relacionadas. |

## Clases

|  |  |
| :--- | :--- |
| [Command](clases/command.md) | Esta clase abstracta sirve como base de órdenes de Digi3D.NET. |
| [EntitySelectedEventArgs](clases/entityselectedeventargs.md) | Esta clase proporciona argumentos de evento cuando el usuario selecciona una geometría. |

## Interfaces

|  |  |
| :--- | :--- |
| [ICommand](interfaces/icommand.md) | Este interfaz define los métodos que debe implementar una orden de Digi3D.NET. |

