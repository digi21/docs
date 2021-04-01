# Xmin

Devuelve la coordenada X mínima de ventana o geometría que implemente esta interfaz.

```csharp
double? Xmin { get; set; }
```

## Valor de la propiedad

_`double?`_

Devuelve el valor X mínima de la ventana o geometría en caso de que la ventana se haya inicializado con al menos un punto.  
Devuelve `null` si la ventana aún no se ha inicializado.

