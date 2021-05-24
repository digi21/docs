# Pane

Espacio de nombres: [Digi21.DigiNG.Plugin](../../)  
Ensamblado: [Digi21.DigiNG](../../../digi21.diging/)

Esta clase representa un panel añadido al interfaz de usuario del programa.

```csharp
public class Pane
```

## Eventos

|  |  |
| :--- | :--- |
| SplitterResized | Cambio de tamaño del panel de acoplamiento |
| SplitterResizing | El divisor del panel de acoplamiento ha cambiado de tamaño |
| Unpinned | El panel de acoplamiento se ha desanclado. Esto ocurre cuando el panel de acoplamiento ha terminado de anclarse. |
| Unpinning | El panel de anclaje está actualmente anclado. Esto ocurre cuando se hace clic en el botón "anclar". |
| Dragging | El panel de acoplamiento ha sido arrastrado |
| Detaching | Eliminación del panel de acoplamiento del contenedor con pestañas |
| Deactivated | Panel de acoplamiento desactivado |
| Activated | Panel de acoplamiento activado |
| Expanded | El panel de acoplamiento se expande, esto es cuando el panel se muestra completamente desde la posición de ocultación automática. |
| Expanding | El panel de acoplamiento se está expandiendo. Esto ocurre cuando un panel se está mostrando desde su posición de ocultación automática. Si un panel está oculto y el ratón se posiciona sobre la pestaña para mostrar el panel, el panel se está expandiendo, cuando el ratón se mueve fuera del panel comienza a colapsar. |
| Collapsed | El panel de acoplamiento se ha colapsado. Esto ocurre cuando el panel de acoplamiento ha terminado de colapsar. |
| Collapsing | El panel de acoplamiento se está colapsando \(ocultando\). Esto ocurre cuando un panel vuelve a su posición de ocultación automática. Si un panel está oculto y el ratón se posiciona sobre la pestaña para mostrar el panel, el panel se está expandiendo, cuando el ratón se mueve fuera del panel comienza a colapsar. |
| Pinned | El panel de acoplamiento se ha anclado. Esto ocurre cuando el panel de acoplamiento ha terminado de fijarse. |
| Pinning | El panel de acoplamiento se está anclando \(ocultando\). Esto ocurre cuando se hace clic en el botón "anclar". |
| Attached | El panel de acoplamiento se ha unido. Esto ocurre cuando el panel de acoplamiento ha terminado de acoplarse a otro panel. |
| Attaching | El panel de acoplamiento está en proceso de acoplarse a otro panel. |
| Docked | El panel de acoplamiento se ha acoplado. Esto ocurre cuando el panel de acoplamiento ha terminado de acoplarse. |
| Docking | El panel de acoplamiento está en proceso de acoplamiento. |
| Closed | El panel de acoplamiento se ha cerrado. Esto ocurre cuando el panel de acoplamiento ha terminado de cerrarse. |
| Floated | El panel de acoplamiento se ha acoplado, y actualmente está flotando. |
| Floating | El panel de anclaje está flotando. Esto ocurre cuando el usuario hace clic en la barra de título de un panel de acoplamiento y arrastra el panel a otra ubicación. Cuando esto ocurre, se dice que el panel está "flotando". |
| Closing | El panel de acoplamiento se está cerrando. Esto ocurre cuando se hace clic en el botón de cierre del panel. |

## Métodos

|  |  |
| :--- | :--- |
| Close\(\) | Cierra el panel acoplable. |
| DockPane\(PaneDock\) | Acopla el panel. |
| DockSidePane\(PaneDock, Size\) | Acopla el panel al estilo _Microsoft Visio_. |
| FloatPane\(Rectangle\) | Flota el panel. |
| Hide\(\) | Oculta el panel acoplable. |
| Select\(\) | Selecciona el panel acoplable. |
| SetFocus\(\) | Le da el foco al panel acoplable. |
| ToggleDocking\(\) | Acopla/flota el panel. Si el panel ya está acoplado, activa el "pin" de éste. |

## Propiedades

|  |  |
| :--- | :--- |
| MaxTrackSize | Asigna el tamaño máximo del panel. |
| MinTrackSize | Asigna el tamaño mínimo del panel. |
| IsFocus | Indica si el panel tiene el foco. |
| IsTabsVisible | Devuelve verdadero si la barra de tabulación es visible. |
| IsSidePanel | Devuelve verdadero si el panel es un panel lateral. |
| IsFloating | Devuelve verdadero si el panel está flotando. |
| IsSelected | Devuelve verdadero si el panel está seleccionado. |
| IsHidden | Devuelve verdadero si el panel está oculto. |
| IsClosed | Devuelve verdadero si el panel está cerrado. |
| Tooltip | Asigna o devuelve el texto del Tooltip asociado con el panel. |
| TabCaption | Asigna o devuelve el título de la pestaña del panel. |
| Title | Asigna o devuelve el título del panel. |



