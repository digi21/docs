# TransformationOptions
<!-- id: digi21.coordinatesystems.transformationoptions -->

Espacio de nombres: `Digi21.CoordinateSystems`  
Ensamblado: [Digi21.CoordinateSystems](/digi3d-ai/programacion/.net/referencia/digi21.coordinatesystems/)

Opciones de [`CoordinateTransformation.Create`](coordinatetransformation.md#create).

```csharp
public sealed class TransformationOptions
```

Entre dos sistemas de referencia de coordenadas la base de datos de EPSG puede tener varias operaciones; por ejemplo, de ED50 a ETRS89 tiene quince, una por país o región y con exactitudes de 5 cm a 5 m. Y entre dos sistemas verticales puede no tener ninguna. Estas opciones indican qué hacer en los dos casos.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `SelectCoordinateOperation SelectOperation` | Delegado que elige la operación cuando hay varias. Si vale `null` y hay varias, `Create` lanza `TransformationNotFoundException`. |
| `CreateVerticalTransformation CreateVerticalTransformation` | Delegado que crea la transformación vertical cuando la base de datos de EPSG no tiene ninguna, o `null`. |

## Propiedades estáticas

Cada lectura de `BestAccuracy` o de `Interactive` devuelve una instancia nueva, que puedes modificar sin afectar a otras llamadas.

### BestAccuracy

Las opciones de `BestAccuracy` no muestran una interfaz y son las que usa `Create` cuando no recibe opciones:

1. Si marcaste en el cuadro de diálogo de selección de Digi3D.AI que se use siempre la misma operación para los sistemas de origen y destino de la transformación, se elige la operación guardada.
2. Si no hay una operación guardada, se elige la operación con el valor de `Accuracy` más bajo (las operaciones sin exactitud declarada se consideran en último lugar).
3. Si la operación elegida no se puede construir, por ejemplo porque falta el archivo de la rejilla NTv2, se descarta y se elige la siguiente.

La transformación vertical es la que guardaste para los sistemas de origen y destino en el cuadro de diálogo de Digi3D.AI, si hay alguna guardada para esos sistemas.

### Interactive

Las opciones de `Interactive` muestran los cuadros de diálogo de Digi3D.AI para que elijas la operación y el desplazamiento vertical entre dos sistemas sin transformación. Si guardaste la elección de operación o de desplazamiento vertical para los sistemas de origen y destino, el cuadro de diálogo correspondiente no aparece.

Dentro de Digi3D.AI, las opciones de `Interactive` solo se pueden usar desde el hilo principal; desde otro hilo, `Create` lanza `InvalidOperationException`. En una aplicación de consola no hay hilo principal de Digi3D.AI y los cuadros de diálogo se muestran desde el hilo que llama a `Create`. Si cancelas un cuadro de diálogo, `Create` lanza `CoordinateSystemException`.

## Delegados

### SelectCoordinateOperation

```csharp
public delegate int SelectCoordinateOperation(string sourceName, string targetName, IReadOnlyList<CoordinateOperation> operations);
```

Recibe los nombres de los dos sistemas entre los que hay varias operaciones (pueden ser los sistemas geográficos en los que se basan los que se pasaron a `Create`) y la lista de operaciones. Devuelve el código (`Code`) de la operación elegida, que tiene que ser uno de los de la lista.

### CreateVerticalTransformation

```csharp
public delegate VerticalTransformation CreateVerticalTransformation(string sourceName, string targetName);
```

Recibe los nombres de los dos sistemas verticales (o del sistema geográfico 3D y el vertical) y devuelve la transformación vertical, o `null` si no hay ninguna; en ese caso `Create` lanza `TransformationNotFoundException`.

## CoordinateOperation

Operación de coordenadas de la base de datos de EPSG.

| Propiedad | Descripción |
| :--- | :--- |
| `int Code` | Código EPSG de la operación. |
| `string Name` | Nombre, por ejemplo `ED50 to ETRS89 (16)`. |
| `string Type` | Tipo de operación (`transformation`). |
| `string Version` | Versión, por ejemplo `IGN-Esp v3 pen`, o `null`. |
| `int? Variant` | Variante, o `null`. |
| `string Scope` | Ámbito de uso, o `null`. |
| `double? Accuracy` | Exactitud en metros, o `null`. |
| `int MethodCode` | Código EPSG del método, por ejemplo 9615 (NTv2). |
| `string Remarks` | Observaciones, o `null`. |
| `string InformationSource` | Fuente de información, o `null`. |

## VerticalTransformation

Transformación entre dos sistemas verticales.

| Método | Descripción |
| :--- | :--- |
| `static VerticalTransformation Offset(double meters)` | Transformación que suma a la altitud un desplazamiento constante en metros. |

## Ejemplo

El ejemplo siguiente elige una operación del Instituto Geográfico Nacional (IGN) si hay alguna disponible; si no la hay, elige la primera operación de la lista. Si no hay transformación vertical, suma 10 metros a la altitud:

```csharp
var opciones = new TransformationOptions
{
    SelectOperation = (origen, destino, operaciones) =>
        operaciones.FirstOrDefault(o => o.Version?.StartsWith("IGN-Esp") == true)?.Code ?? operaciones[0].Code,
    CreateVerticalTransformation = (origen, destino) => VerticalTransformation.Offset(10.0)
};

using var transformación = CoordinateTransformation.Create(
    CoordinateSystem.FromEpsg(23030),
    CoordinateSystem.FromEpsg(25830),
    opciones);
```
