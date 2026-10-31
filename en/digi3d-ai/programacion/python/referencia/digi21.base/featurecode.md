# FeatureCode
<!-- id: featurecode -->
<!-- origen: aea29530798c372261f5845c87de1aef14bbc41c -->

Module: [digi21.base](README.md)

Represents a Digi3D.AI code: code string, associated database table, identifier, attributes, and visibility.

```python
FeatureCode(code)
```

| Argument | Type | Description |
|---|---|---|
| `code` | `str` | Code string (for example `'EDIF'`) |

## Properties

| Property | Type | R/W | Description |
|---|---|---|---|
| `code` | `str` | R | Code string |
| `table` | `int` | R/W | Associated database table number |
| `digitab_index` | `int` | R/W | Corresponding node index in active `digi.tab` |
| `force_record` | `bool` | R/W | Force this record to be used |
| `id` | `int` \| `str` | R/W | Identifier: `int` (record number) or `str` (GUID formatted as `'{...}'`) |
| `id_as_string` | `str` | R | Identifier as a string |
| `attributes` | `dict` | R/W | `{str: valor}` dictionary of database attributes |
| `visible` | `bool` | R/W | Drawing window visibility. Assignable only if the code has a `digi.tab` index |
| `visible_in_photogrammetric_window` | `bool` | R/W | Photogrammetric window visibility |

## Static property

| Property | Type | Description |
|---|---|---|
| `unknown_codes_visible` | `bool` | Whether unknown codes (absent from `digi.tab`) count as visible |

## Methods

| Method | Returns | Description |
|---|---|---|
| `is_id_unassigned()` | `bool` | Whether the identifier is unassigned |
| `has_assigned_table()` | `bool` | Whether a table is assigned |
| `matches(pattern)` | `bool` | Whether the code matches a pattern, supporting `*` and `?` |
| `compose(with_wildcards)` | `str` | Compose the code string with another that may contain wildcards |

Equality (`==`) compares two codes.

## Example

```python
from digi21.base import FeatureCode

code = FeatureCode("PARC")
code.table = 1
code.attributes = {"referencia": "12345", "superficie": 320.5}

if code.matches("PAR*"):
    print(code.code, code.attributes["referencia"])
```

## See also

* [DigiTab](digitab.md) — code table.
* [Geometry](geometry.md) — `codes` property and `has_code`, `add_code`, `remove_code` methods.
