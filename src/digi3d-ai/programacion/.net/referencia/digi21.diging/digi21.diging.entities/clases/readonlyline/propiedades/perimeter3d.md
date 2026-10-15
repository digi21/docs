# Perimeter3D
<!-- id: perimeter3d -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Longitud de la línea en el espacio.

```csharp
public double Perimeter3D { get; }
```

## Valor de la propiedad

La suma de las longitudes en X, Y, Z de los segmentos, del primer vértice al último. En una línea abierta no se suma el tramo del último vértice al primero. Una línea con un solo vértice devuelve `0`.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidOperationException` | La línea no tiene vértices. |
