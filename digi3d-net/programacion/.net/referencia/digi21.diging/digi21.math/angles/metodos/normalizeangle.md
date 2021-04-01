# NormalizeAngle

Normaliza un ángulo entre 0 y 2π.

```csharp
public static double NormalizeAngle(double radians);
```

## Parámetros

`radians`  
Ángulo en radianes a normalizar.

## Devuelve

Ángulo en el rango \[0, 2π\].

## Ejemplos

El siguiente ejemplo imprime el resultado de normalizar el ángulo 3π:

```csharp
Console.WriteLine(Angles.NormalizeAngle(3*π));
```

