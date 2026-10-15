# Delete
<!-- id: delete -->

Espacio de nombres: `Digi21.DigiNG.IO`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Elimina entidades del archivo de dibujo.

## Sobrecargas

| Método | Descripción |
| :--- | :--- |
| `Delete(Entity)` | Elimina una entidad. |
| `Delete(IEnumerable<Entity>)` | Elimina varias entidades. |

Cada implementación decide cómo se elimina la entidad. [Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md), por ejemplo, la marca como eliminada y la vuelve a escribir: la entidad sigue en el archivo con `Deleted` a `true`. Lee la página de cada clase.

## Delete(Entity)

```csharp
void Delete(Entity entity);
```

| Parámetro | Descripción |
| :--- | :--- |
| `entity` | [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) del archivo que se elimina. |

## Delete(IEnumerable&lt;Entity&gt;)

```csharp
void Delete(IEnumerable<Entity> entities);
```

| Parámetro | Descripción |
| :--- | :--- |
| `entities` | Entidades del archivo que se eliminan. |

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `ArgumentNullException` | `entity` es `null`. `Delete(IEnumerable<Entity>)` no comprueba si `entities` es `null` en `Bin` ni en `DrawingFile`. |
| `InvalidOperationException` | La entidad pertenece a otro archivo. También, en las implementaciones que comprueban [CanWrite](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/propiedades/canwrite.md) (por ejemplo `Bin`), el archivo está abierto en solo lectura. |
