# GeometryType
<!-- id: geometrytype -->

Espacio de nombres: `Digi21.DigiNG.DigiTab`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Tipo de geometría de un código de la tabla de códigos. Es el valor de [NodeDigiTab.Type](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/propiedades/type.md).

```csharp
public enum GeometryType
```

## Valores

| Valor | Número en el ensamblado instalado | Número en el paquete NuGet | Significado |
| :--- | :--- | :--- | :--- |
| `Virtual` | 0 | 2 | Código para dibujar geometrías en la ventana de dibujo que no se guardan en ningún archivo de dibujo. |
| `Point` | 1 | 0 | Código para puntos. |
| `Line` | 2 | 1 | Código para líneas. |

El tipo es orientativo: una orden puede dibujar una línea con un código de tipo `Point`. Lee [Tipo](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/codigos/propiedades-del-codigo.md) en el editor de tablas de códigos.

## Diferencia entre el paquete y el ensamblado instalado

El ensamblado de referencia del paquete NuGet `Digi21.DigiNG` declara los valores en otro orden (`Point`, `Line`, `Virtual`) que el ensamblado que instala Digi3D.AI (`Virtual`, `Point`, `Line`). El compilador de C# guarda en el programa el número del paquete, y Digi3D.AI interpreta ese número con su propio orden:

| En el código fuente | Número compilado | Lo que recibe o compara Digi3D.AI |
| :--- | :--- | :--- |
| `GeometryType.Point` | 0 | `Virtual` |
| `GeometryType.Line` | 1 | `Point` |
| `GeometryType.Virtual` | 2 | `Line` |

Por ejemplo, `código.Type == GeometryType.Point` es `true` con los códigos virtuales. Para que el programa funcione con el paquete, no uses las constantes de `GeometryType`:

- Para leer, compara el nombre: `código.Type.ToString() == "Point"`. `ToString` se ejecuta con el ensamblado instalado y devuelve el nombre correcto.
- Para asignar, convierte el nombre: `código.Type = Enum.Parse<GeometryType>("Point")`.

## Ejemplo

El ejemplo de [NodeDigiTab](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/) asigna el tipo con `Enum.Parse`, y el de [DigiTab](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/) lo muestra con `ToString`.
