# DigiTabNode
<!-- id: digitabnode -->
<!-- origen: 21bdec6ed2321cd5da1f0fba3282230f37bc8878 -->

Module: [digi21.base](README.md)

A [DigiTab](digitab.md) code table node. Not constructed directly: obtained by iterating or indexing a `DigiTab`.

## Properties

| Property | Type | Description |
|---|---|---|
| `description` | `str` | Code description |

## Methods

| Method | Returns | Description |
|---|---|---|
| `contains_tag(tag)` | `bool` | Whether the node has the specified tag |

## Example

```python
for node in digitab:
    if node.contains_tag("curvas"):
        print("Curva de nivel:", node.description)
```

## See also

* [DigiTab](digitab.md)
