# ChangeDirection
<!-- id: changedirection -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Invierte el sentido de la entidad: el último vértice pasa a ser el primero. Es un método de [IDirectionable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/idirectionable/).

```csharp
void ChangeDirection()
```

En [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/), el método invierte el orden de los vértices de la entidad nativa. Las coordenadas de los vértices no cambian.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidOperationException` | La línea es de solo lectura (`ReadOnly` es `true`). |

## Ejemplo

El [ejemplo de IDirectionable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/idirectionable/#ejemplo) invierte una línea.
