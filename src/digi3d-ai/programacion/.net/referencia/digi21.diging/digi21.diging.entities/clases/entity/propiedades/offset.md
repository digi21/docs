# FilePointer
<!-- id: offset -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Identificador de la entidad en el archivo de dibujo del que se leyó o en el que se guardó.

```csharp
public string FilePointer { get; }
```

## Valor de la propiedad

El identificador que asigna el importador del formato del archivo. El contenido del texto depende del formato.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidOperationException` | La entidad no tiene datos de ningún archivo de dibujo; por ejemplo, una entidad creada con un constructor que no se ha añadido a ningún archivo. |
