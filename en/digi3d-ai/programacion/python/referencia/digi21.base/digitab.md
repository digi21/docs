# DigiTab
<!-- id: digitab-2 -->
<!-- origen: 1559b17ba821626059773d026b08636d84f9523c -->

Module: [digi21.base](README.md)

A code table (`digi.tab`) containing [DigiTabNode](digitabnode.md) nodes. Supports sequence operations: `len()`, indexing, and iteration.

## Static method

| Method | Returns | Description |
|---|---|---|
| `DigiTab.load(path)` | `DigiTab` | Load a `digi.tab` from a file |

## Accessing nodes

| Operation | Description |
|---|---|
| `len(digitab)` | Node count |
| `digitab[i]` | [DigiTabNode](digitabnode.md) at position `i` |
| `for node in digitab:` | Iterate over every node |

## Example

```python
from digi21.base import DigiTab

digitab = DigiTab.load("Digi.tab.xml")
print(len(digitab), "nodos")

for node in digitab:
    print(node.description)
```

## See also

* [DigiTabNode](digitabnode.md)
* [DrawingView](../digi3d/drawing-view.md) — `digitab` provides the active project code table; `find_codes` searches by concept.
* [Course: reading a drawing file](../../aplicaciones-de-consola/ejemplos/leer-un-archivo-de-dibujo.md) — using a table when opening a file.
