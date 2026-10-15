# Close
<!-- id: close -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Cierra la línea: añade al final una copia del primer vértice.

```csharp
public void Close()
```

Si el último vértice ya tiene las mismas coordenadas X, Y, Z que el primero, el método no hace nada. Si coinciden en X, Y pero no en Z, añade la copia: después de la llamada, `ClosedXYZ` es `true`.

La línea tiene que tener al menos un vértice: el método no lo comprueba.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidOperationException` | La línea es de solo lectura. |

## Ejemplo

```csharp
var línea = new Line(new Code("080100"));
línea.Points.Add(new Point3D(0, 0, 0));
línea.Points.Add(new Point3D(0, 10, 0));
línea.Points.Add(new Point3D(10, 10, 0));
línea.Close();
Console.WriteLine(línea.Points.Count); // 4
```
