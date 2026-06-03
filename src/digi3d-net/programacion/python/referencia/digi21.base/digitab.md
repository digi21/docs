# DigiTab

Módulo: [digi21.base](README.md)

Representa una tabla de códigos (`digi.tab`): una colección de nodos
([DigiTabNode](digitabnode.md)). Se comporta como una secuencia: admite `len()`,
indexación y recorrido.

## Método estático

| Método | Devuelve | Descripción |
|---|---|---|
| `DigiTab.load(path)` | `DigiTab` | Carga una `digi.tab` desde un archivo. |

## Acceso a los nodos

| Operación | Descripción |
|---|---|
| `len(digitab)` | Número de nodos de la tabla. |
| `digitab[i]` | Nodo en la posición `i` (un [DigiTabNode](digitabnode.md)). |
| `for node in digitab:` | Recorre todos los nodos. |

## Ejemplo

```python
from digi21.base import DigiTab

digitab = DigiTab.load("Digi.tab.xml")
print(len(digitab), "nodos")

for node in digitab:
    print(node.description)
```

## Véase también

- [DigiTabNode](digitabnode.md)
- [DrawingView](../../guiones/drawing-view.md) — la propiedad `digitab` da la tabla de códigos
  activa del proyecto, y `find_codes` busca códigos por concepto.
- [Curso: leer un archivo de dibujo](../../curso/leer-un-archivo-de-dibujo.md) — usar una
  tabla al abrir un archivo.
