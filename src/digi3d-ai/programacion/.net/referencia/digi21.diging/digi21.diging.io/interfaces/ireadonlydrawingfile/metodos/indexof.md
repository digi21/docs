# IndexOf
<!-- id: digi21.diging.io.ireadonlydrawingfile.indexof -->

Espacio de nombres: `Digi21.DigiNG.IO`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Devuelve la posición de una entidad en el archivo de dibujo.

```csharp
int IndexOf(Entity entity);
```

| Parámetro | Descripción |
| :--- | :--- |
| `entity` | [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) que se busca. |

## Valor devuelto

`int`: posición de la entidad, empezando en 0, entre las entidades del archivo. Las entidades eliminadas también cuentan. Devuelve `-1` en estos casos:

- La entidad no pertenece a ningún archivo (`Owner` vale `null`).
- La entidad pertenece a otro archivo (`Owner` es otro objeto).
- La entidad pertenece a este archivo pero no está entre las entidades que el archivo tiene en memoria.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `NullReferenceException` | `entity` es `null`. Las implementaciones no comprueban si el parámetro es nulo. |
