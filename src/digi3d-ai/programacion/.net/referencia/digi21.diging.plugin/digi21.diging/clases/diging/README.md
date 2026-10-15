# DigiNG
<!-- id: diging-2 -->

Espacio de nombres: `Digi21.DigiNG`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Clase estática que da acceso a la ventana de dibujo activa de Digi3D.AI: su archivo de dibujo, sus opciones, la pila de deshacer, la selección y el dibujo de entidades, y los eventos de alta y baja de entidades. Solo funciona dentro de Digi3D.AI, desde una extensión (una orden, un buscador, una propiedad dinámica…).

```csharp
public static class DigiNG
```

## Ventana de dibujo activa

Los miembros de `DigiNG` actúan sobre la ventana de dibujo activa: la última ventana de dibujo que ha recibido el foco. Cada vez que una ventana de dibujo recibe el foco, `DigiNG` crea objetos nuevos para las propiedades `Codes`, `Commands`, `ActiveParameters`, `InputDeviceOptions` y `VisualizationOptions`. Un objeto obtenido antes sigue ligado a la ventana de dibujo en la que se obtuvo; cuando esa ventana se cierra, sus miembros lanzan `ObjectDisposedException`.

Si no hay ninguna ventana de dibujo abierta:

| Miembros | Comportamiento |
| :--- | :--- |
| `DrawingFile`, `ReferenceFiles`, `DigiTab`, `Wkt`, `LockUndo`, `Camera`, `Commands`, `Codes`, `LicenseInfo`, `WindowSize`, `DeviceContextHandle`, `RenderContextHandle`, `Undo`, `NewTransaction`, `FinishTransaction`, `SelectEntity`, `Project`, `GetResultPythonExpression`, `SelectByPythonExpression`, `SendInputDeviceEvent`, `RenderScene`, `SetVisible`, `DrawEntity`, `AnimateEntity`, `DeanimateEntity`, `DeanimateAll`, `GeographicCalculator` | Lanzan `NullReferenceException`. |
| `ActiveParameters`, `InputDeviceOptions`, `VisualizationOptions` | Devuelven `null`. |

Los métodos no comprueban si sus argumentos son `null`: un argumento `null` produce `NullReferenceException`.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `DrawingFile DrawingFile` | Archivo de dibujo activo de la ventana de dibujo. Consulta [DrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/drawingfile.md). |
| `IReadOnlyDrawingFile[] ReferenceFiles` | Archivos de dibujo cargados en la ventana de dibujo, excepto el archivo activo, como [IReadOnlyDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/). Cada lectura crea un array y objetos nuevos. |
| `DigiTab DigiTab` | [Tabla de códigos](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/) de la ventana de dibujo. Cada lectura crea un objeto nuevo que da acceso a la misma tabla de códigos. |
| `string Wkt` | WKT del sistema de referencia de coordenadas de la ventana de dibujo. |
| `Codes Codes` | Objeto [Codes](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/codes.md): códigos activos, selección de códigos y visibilidad de códigos. |
| `Commands Commands` | Objeto [Commands](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/commands.md): pila de órdenes. |
| `ActiveParameters ActiveParameters` | Objeto [ActiveParameters](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/activeparameters.md): ángulo activo, distancias activas, altura de texto, equidistancia y escala activa. |
| `InputDeviceOptions InputDeviceOptions` | Objeto [InputDeviceOptions](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/inputdeviceoptions.md): dispositivo de entrada, posición del cursor y bloqueos de coordenadas. |
| `VisualizationOptions VisualizationOptions` | Objeto [VisualizationOptions](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/visualizationoptions.md): opciones de visualización de la ventana de dibujo. |
| `GeographicCalculator GeographicCalculator` | Objeto [GeographicCalculator](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/geographiccalculator.md) que calcula áreas, perímetros y distancias según el sistema de referencia de coordenadas de la ventana de dibujo. Cada lectura crea un objeto nuevo. |
| `LicenseInfo LicenseInfo` | Objeto [LicenseInfo](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/licenseinfo.md) con el identificador de la llave de protección. |
| `Camera Camera` | Cámara de la ventana de dibujo. Lee el apartado «Cámara de la ventana de dibujo». |
| `bool LockUndo` | Bloqueo del mecanismo de deshacer. Lee el apartado «Transacciones de deshacer». |
| `Size WindowSize` | Tamaño en píxeles del área cliente de la ventana de dibujo. |
| `IntPtr DeviceContextHandle` | Identificador (*handle*) `HDC` del contexto de dispositivo de Windows de la ventana de dibujo. |
| `IntPtr RenderContextHandle` | Identificador `HGLRC` del contexto de renderizado OpenGL de la ventana de dibujo. |

### Cámara de la ventana de dibujo

El descriptor `get` de `Camera` devuelve un objeto nuevo con la cámara actual: una [ConicCamera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/coniccamera/) si la cámara es cónica y una [OrthographicCamera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/) si no lo es. Las dos copian `Name`, `Position`, `Pitch`, `Yaw` y `Roll` de la cámara actual. La cámara cónica copia además `FieldOfView`, `Near` y `Far`. En la cámara ortográfica, `Left` y `Right` valen la mitad del ancho del volumen de visión con signo negativo y positivo; `Bottom` y `Top`, la mitad del alto; `Near` y `Far`, la mitad de la profundidad.

El descriptor `set` aplica a la ventana de dibujo la cámara que recibe. De una `OrthographicCamera` usa `Right - Left`, `Top - Bottom` y `Far - Near` como ancho, alto y profundidad del volumen de visión; de una `ConicCamera` usa `FieldOfView`, `Near` y `Far`. Con cualquier otra clase derivada de [Camera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/) lanza `Exception`.

## Métodos estáticos

### Deshacer

| Método | Descripción |
| :--- | :--- |
| `bool Undo()` | Deshace la última transacción cerrada. Devuelve `false` si no hay ninguna transacción cerrada. Una transacción que sigue abierta no se deshace. |
| [`void NewTransaction(bool finishCurrentTransaction = true)`](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/metodos-estaticos/newtransaction.md) | Abre una transacción nueva en la pila de deshacer. Con `true`, antes cierra la transacción abierta más reciente. |
| [`void FinishTransaction()`](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/metodos-estaticos/finishtransaction.md) | Cierra la transacción abierta más reciente. |

### Selección, proyección y expresiones

| Método | Descripción |
| :--- | :--- |
| `void SelectEntity(Point3D groundPoint)` | Ejecuta la orden de tentativo y simula una pulsación del botón de tentativo en las coordenadas `groundPoint`. Si el tentativo localiza una entidad, la orden activa la recibe en `OnEntitySelected` (evento `EntitySelected` de [Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/command.md)). |
| `void SelectEntity(Point3D groundPoint, Func<Entity, bool> includeGeometry)` | Igual que la sobrecarga anterior, pero el tentativo solo tiene en cuenta las entidades para las que `includeGeometry` devuelve `true`. |
| `double? Project(Point3D groundPoint)` | Calcula la coordenada Z en las coordenadas X, Y de `groundPoint` con el primer archivo cargado en la ventana de dibujo que admite proyección de coordenadas (por ejemplo, un modelo digital del terreno). Devuelve `null` si ningún archivo devuelve una Z. La Z de `groundPoint` no se usa. |
| `bool GetResultPythonExpression(Entity entity, string expression)` | Evalúa la expresión de Python `expression` con la variable `g` asignada a la entidad y devuelve el resultado convertido a `bool`. Si la evaluación falla, Digi3D.AI muestra el error en un cuadro de mensaje y el método devuelve `false`. |
| `IEnumerable<Entity> SelectByPythonExpression(IEnumerable<Entity> entities, string expression)` | Evalúa la expresión de Python `expression` con cada entidad asignada a la variable `g` y devuelve las entidades para las que el resultado es `true`. Si la evaluación falla, Digi3D.AI muestra el error en un cuadro de mensaje. |
| `void SendInputDeviceEvent(Point3D worldCoordinates, InputDeviceButton button)` | Envía a la ventana de dibujo un evento del dispositivo de entrada en las coordenadas de terreno `worldCoordinates` con el botón `button` ([InputDeviceButton](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/enumeraciones/inputdevicebutton.md)), como si el usuario hubiera pulsado ese botón en esas coordenadas. |

### Visualización

| Método | Descripción |
| :--- | :--- |
| `void RenderScene()` | Regenera la ventana de dibujo. |
| `void SetVisible(Entity entity, bool visible)` | Marca la entidad como oculta (`visible` a `false`) o visible. La ventana de dibujo muestra el cambio cuando se regenera. |
| `void DrawEntity(Entity entity)` y sus sobrecargas | Dibuja la entidad en la ventana de dibujo sin regenerarla. Lee la tabla de parámetros de este apartado. |
| `void AnimateEntity(Entity entity)`<br>`void AnimateEntity(IEnumerable<Entity> entities)` | Marca las entidades como seleccionadas: Digi3D.AI las dibuja animadas hasta que se llama a `DeanimateEntity` o a `DeanimateAll`. Una entidad que no está en ningún archivo de la ventana de dibujo se ignora. |
| `void AnimateEntity(Entity entity, int seconds)`<br>`void AnimateEntity(IEnumerable<Entity> entities, int seconds)` | Dibuja las entidades animadas durante `seconds` segundos. |
| `void DeanimateEntity(Entity entity)`<br>`void DeanimateEntity(IEnumerable<Entity> entities)` | Quita la marca de seleccionadas que pone `AnimateEntity` sin `seconds`. |
| `void DeanimateAll()` | Quita la marca de seleccionadas de todas las entidades de todos los archivos de la ventana de dibujo y regenera la ventana. No afecta a las entidades animadas con la sobrecarga que recibe `seconds`. |

`DrawEntity` tiene 16 sobrecargas: 8 reciben una `Entity` y otras 8 reciben un `IEnumerable<Entity>` con los mismos parámetros. Las sobrecargas con `IEnumerable<Entity>` dibujan cada entidad de la enumeración. Los parámetros que no aparecen en una sobrecarga toman el valor por defecto:

```csharp
public static void DrawEntity(Entity entity)
public static void DrawEntity(Entity entity, bool allowPattern)
public static void DrawEntity(Entity entity, bool drawInCadWindow, bool drawInPhotogrammetricWindow)
public static void DrawEntity(Entity entity, bool drawInCadWindow, bool drawInPhotogrammetricWindow, bool allowPattern)
public static void DrawEntity(Entity entity, DrawingMode mode)
public static void DrawEntity(Entity entity, bool allowPattern, DrawingMode mode)
public static void DrawEntity(Entity entity, bool drawInCadWindow, bool drawInPhotogrammetricWindow, DrawingMode mode)
public static void DrawEntity(Entity entity, bool drawInCadWindow, bool drawInPhotogrammetricWindow, bool allowPattern, DrawingMode mode)
```

| Parámetro | Valor por defecto | Descripción |
| :--- | :--- | :--- |
| `bool drawInCadWindow` | `true` | Dibuja la entidad en la ventana de dibujo. |
| `bool drawInPhotogrammetricWindow` | `true` | Dibuja la entidad en la ventana fotogramétrica. |
| `bool allowPattern` | `true` | Dibuja la entidad con el patrón de línea de su código. |
| `DrawingMode mode` | `Draw` | Modo de dibujo ([DrawingMode](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/enumeraciones/drawingmode.md)): `Draw` dibuja la entidad, `Hide` la borra de la pantalla y `Xor` la dibuja con el operador XOR. |

## Transacciones de deshacer

Digi3D.AI agrupa los cambios del archivo de dibujo en transacciones. La orden [UNDO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/undo.md) y el método `Undo` deshacen de una vez todos los cambios de la última transacción cerrada.

- Al ejecutar una orden, Digi3D.AI abre una transacción. Cuando la orden termina (en una orden .NET, al llamar a `Dispose`), Digi3D.AI cierra la transacción abierta más reciente. Así, todos los cambios de una orden se deshacen con un solo `UNDO`.
- Las transacciones abiertas forman una pila: cada apertura añade una transacción y cada cierre quita la más reciente. Cada cambio se guarda en la transacción abierta más reciente.
- Una transacción que se cierra sin cambios se descarta.
- Un cambio que se hace sin ninguna transacción abierta (por ejemplo, desde un panel después de que la orden haya terminado) abre una transacción que queda abierta hasta el siguiente cierre. Mientras esa transacción sigue abierta, `UNDO` no la deshace.

`LockUndo` bloquea el mecanismo de deshacer: mientras está bloqueado, las órdenes que se ejecutan no abren una transacción propia (sus cambios se guardan en la transacción abierta) y `DrawingFile.Compress` no comprime el archivo. La propiedad es un contador: asignar `true` lo incrementa, asignar `false` lo decrementa si no vale 0, y el descriptor `get` devuelve `true` mientras el contador no vale 0. Cada asignación de `true` se compensa con una de `false`.

## Eventos

| Evento | Descripción |
| :--- | :--- |
| `EventHandler<AddingEntityEventArgs> AddingEntity` | Se produce antes de guardar una entidad que se añade al archivo de dibujo activo, después de los controles de calidad. Si un manejador asigna `true` a `Cancel` ([AddingEntityEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/addingentityeventargs.md)), la entidad se descarta. |
| `EventHandler<EntityEventArgs> EntityAdded` | Se produce después de guardar una entidad añadida al archivo de dibujo activo. No se produce si `AddingEntity` ha descartado la entidad ni si el archivo de dibujo no ha podido guardarla. |
| `EventHandler<EntityEventArgs> EntityDeleted` | Se produce después de eliminar una entidad del archivo de dibujo activo, también al deshacer el alta de una entidad. |
| `EventHandler<EntityEventArgs> EntityRecovered` | Se produce después de recuperar una entidad eliminada, también al deshacer la eliminación de una entidad. |
| `EventHandler<EventArgs> PreRender` | Se produce al principio del dibujo de la ventana de dibujo, con el contexto OpenGL de la ventana seleccionado. El manejador puede dibujar con OpenGL. |
| `EventHandler<EventArgs> PostRender` | Se produce al final del dibujo de la ventana de dibujo, con el contexto OpenGL de la ventana seleccionado. |
| `EventHandler<EventArgs> WindowCreated` | Se produce después de crear una ventana de dibujo. Durante el evento, `DigiNG` ya se refiere a la ventana nueva. |
| `EventHandler<EventArgs> DestroyingWindow` | Se produce al cerrar una ventana de dibujo. |

Notas sobre los eventos:

- Los eventos son estáticos: un manejador sigue suscrito después de que termine la orden que lo suscribió, hasta que se quita con `-=`. El argumento `sender` es siempre `null`.
- `EntityAdded`, `EntityDeleted` y `EntityRecovered` pasan la entidad en la propiedad `Entity` de [EntityEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/entityeventargs.md).
- `AddingEntity`, `EntityAdded`, `EntityDeleted` y `EntityRecovered` se producen en las operaciones sobre una sola entidad: `DrawingFile.Add(Entity)`, `DrawingFile.Delete(Entity)`, `DrawingFile.Undelete(Entity)`, las órdenes que digitalizan o eliminan entidades de una en una, y el deshacer de esas operaciones. Las operaciones en bloque `DrawingFile.Add(IEnumerable<Entity>)` y `DrawingFile.Delete(IEnumerable<Entity>)` no producen ninguno de los cuatro eventos. `DrawingFile.Undelete(IEnumerable<Entity>)` y el deshacer de una eliminación en bloque producen `EntityRecovered` por cada entidad recuperada.
- Si un manejador de `AddingEntity`, `EntityAdded`, `EntityDeleted` o `EntityRecovered` lanza una excepción, Digi3D.AI muestra la excepción en un cuadro de diálogo; en `AddingEntity`, la entidad se guarda. Las excepciones de los manejadores de `PreRender`, `PostRender`, `WindowCreated` y `DestroyingWindow` se descartan sin aviso.
- `DestroyingWindow` no indica qué ventana se cierra. Si la ventana que se cierra es la activa, durante el evento esa ventana ya no tiene documento: los miembros de `DigiNG` que acceden al documento acceden a un puntero nulo, excepto `DrawingFile`, que devuelve la última instancia si el archivo sigue abierto.
## Ejemplo

Esta orden anima durante 5 segundos las líneas cerradas del archivo de dibujo activo y escribe en la ventana de resultados cuántas hay:

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG;
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Plugin.Command;

namespace Ejemplos;

[Command(Name = "ANIMA_LINEAS_CERRADAS")]
public class AnimaLineasCerradas : Command
{
    public AnimaLineasCerradas()
    {
        Initialize += (sender, e) =>
        {
            var cerradas = DigiNG.DrawingFile
                .OfType<ReadOnlyLine>()
                .Where(línea => !línea.Deleted && línea.Closed)
                .ToList<Entity>();

            DigiNG.AnimateEntity(cerradas, 5);

            Digi3D.OutputWindow.Show();
            Digi3D.OutputWindow.WriteLine($"Líneas cerradas: {cerradas.Count}");
            Dispose();
        };
    }
}
```

La orden se compila y se carga como se explica en el [tutorial para crear una extensión](/digi3d-ai/programacion/.net/tutorial-extension.md). Hay más ejemplos en [NewTransaction](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/metodos-estaticos/newtransaction.md) (transacciones de deshacer), [AddingEntityEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/addingentityeventargs.md) (evento `AddingEntity`) y [DrawingMode](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/enumeraciones/drawingmode.md) (`DrawEntity`).
