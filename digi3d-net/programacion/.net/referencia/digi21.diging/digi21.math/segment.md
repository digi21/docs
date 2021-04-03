# Segment

Espacio de nombres: [Digi21.Math](./)  
Ensamblado: [Digi21.DigiNG](../)

Esta clase implementa un segmento, así como operaciones con segmentos.

```csharp
public static class Segment
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → Segment

## Observaciones

Un segmento es una recta definida entre dos puntos \(origen y destino\).

## Constructores

|  |  |
| :--- | :--- |
| Segment\(Point3D, Point3D\) | Inicializa una nueva instancia de un [Segment ](segment.md)que va del origen al destino especificados en los parámetros. |

## Propiedades

|  |  |
| :--- | :--- |
| Origin | Asigna o devuelve el [Point3D](point3d.md) con las coordenadas del origen del [Segment](segment.md). |
| Destination | Asigna o devuelve el [Point3D](point3d.md) con las coordenadas del destino del [Segment](segment.md). |
| DirectionVector | Devuelve un [Point3D ](point3d.md)con las componentes del vector que van del origen al destino de [Segment](segment.md). |
| Window | Devuelve un [Window3D ](window3d.md)con las máximas y mínimas del [Segment](segment.md). |

## Métodos

|  |  |
| :--- | :--- |
| Distance\(Point3D\) | Calcula la distancia de un [Point3D ](point3d.md)al [Segment](segment.md). |
| Distance2D\(Point3D\) | Calcula la distancia en el plano X,Y de un [Point3D ](point3d.md)al [Segment](segment.md). |
| Perpendicular\(Point3D\) | Calcula las coordenadas de la intersección una línea perpendicular al [Segment ](segment.md)que pase por el [Point3D ](point3d.md)especificado. |
| Intersection\(Segment, Segment\) | Calcula las coordenadas de la intersección entre dos [Segment](segment.md). |
| InterpolatedZ\(Point2D\) | Calcula la coordenada Z que tiene el [Segment ](segment.md)en el [Point2D ](point2d.md)especificado. |

## Métodos estáticos

|  |  |
| :--- | :--- |
| AnalyzeRelation\(Segment, Segment\) | Devuelve un [SegmentRelation ](segmentrelation.md)indicando la relación entre los dos [Segment](segment.md). |
| AnalyzeRelationPlaneXY\(Segment, Segment\) | Devuelve un [SegmentRelation ](segmentrelation.md)indicando la relación en el plano XY entre los dos [Segment](segment.md). |
| CalculateAngle\(Segment, Segment\) | Calcula el ángulo en radianes entre los dos [Segment](segment.md). |

