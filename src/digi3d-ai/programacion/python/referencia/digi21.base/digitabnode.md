# DigiTabNode

Módulo: [digi21.base](README.md)

Representa un nodo de una tabla de códigos ([DigiTab](digitab.md)). No se construye
directamente: se obtiene al recorrer o indexar una `DigiTab`.

## Propiedades

| Propiedad | Tipo | Descripción |
|---|---|---|
| `description` | `str` | Descripción del código. |

## Métodos

| Método | Devuelve | Descripción |
|---|---|---|
| `contains_tag(tag)` | `bool` | Indica si el nodo tiene la etiqueta indicada. |

## Ejemplo

```python
for node in digitab:
    if node.contains_tag("curvas"):
        print("Curva de nivel:", node.description)
```

## Véase también

- [DigiTab](digitab.md)
