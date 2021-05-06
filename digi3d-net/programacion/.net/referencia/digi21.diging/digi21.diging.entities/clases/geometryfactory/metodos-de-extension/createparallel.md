# CreateParallel

Espacio de nombres: [Digi21.DigiNG.Entities](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXR80mySoUUhqygVNjW/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities)   
Ensamblado: [Digi21.DigiNG](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXR80mySoUUhqygVNjW/digi3d-net/programacion/.net/referencia/digi21.diging)​‌

Instancia una nueva [Line ](../../line/)que es una paralela de la [ReadOnlyLine](../../readonlyline/) pasada por parámetros.

## Sobrecargas

|  |  |
| :--- | :--- |
| [CreateParallel\(this ReadOnlyLine, double\)](createparallel.md#createparallel-this-readonlyline-double) | Instancia una nueva [Line ](../../line/)que es una paralela \(en el plano XY\) de la [ReadOnlyLine](../../readonlyline/) pasada por parámetros. |
| [CreateParallel\(this ReadOnlyLine, double, double\)](createparallel.md#createparallel-this-readonlyline-double-double) | Instancia una nueva [Line ](../../line/)que es una paralela \(en el espacio\) de la [ReadOnlyLine](../../readonlyline/) pasada por parámetros. |

## CreateParallel\(this ReadOnlyLine, double\)

Instancia una nueva [Line ](../../line/)que es una paralela \(en el plano XY\) de la [ReadOnlyLine](../../readonlyline/) pasada por parámetros.

```csharp
public static Line CreateParallel(this ReadOnlyLine line, double distance);‌
```

### Parámetros

`line` [ReadOnlyLine](../../readonlyline/)  
Linea para la cual queremos generar una paralela.

`distance` [Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Distancia en el plano X, Y a la cual se generará la paralela. Si es un valor positivo la paralela se creará a la derecha de la geometría existente, y si es negativo a la izquierda.

### Devuelve

[Line](../../line/)  
Nueva línea.

## CreateParallel\(this ReadOnlyLine, double, double\)

Instancia una nueva [Line ](../../line/)que es una paralela \(en el espacio\) de la [ReadOnlyLine](../../readonlyline/) pasada por parámetros.

```csharp
public static Line CreateParallel(this ReadOnlyLine line, double distanceXY, double distanceZ);‌
```

### Parámetros

`line` [ReadOnlyLine](../../readonlyline/)  
Linea para la cual queremos generar una paralela.

`distanceXY` [Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Distancia en el plano X, Y a la cual se generará la paralela. Si es un valor positivo la paralela se creará a la derecha de la geometría existente, y si es negativo a la izquierda.

`distanceZ` [Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Distancia en el plano eje Z a la cual se generará la paralela. 

### Devuelve

[Line](../../line/)  
Nueva línea.



