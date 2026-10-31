# Geometry types in command parameters
<!-- id: tipos-de-geometria -->
<!-- origen: e9871253ff74f7373585c15b1e05e5cb3e1c308a -->

Some commands accept a parameter containing letters. Each letter specifies a geometry type affected by the command: for example, `ON_TYPE=020101 LP` enables lines and points with code `020101`.

Uppercase and lowercase letters are equivalent. The command ignores unrecognized characters.

## Letters

All commands assign the same meaning to each letter:

| Letter | Geometry type |
| :--- | :--- |
| `L` | Lines |
| `P` | Points and point-based complex entities |
| `C` | Lines, points, and point-based complex entities |
| `T` | Text |
| `H` | Polygons |
| `G` | Complex entities |
| `B` | Images \(bitmaps\) |
| `*` | All types in the table |

`C` groups lines and points because classic `.bin` files store both types with the same `C=código` header: an entity with one vertex is a point, and one with more vertices is a line.

A point-based complex entity has an insertion point, such as those created by [INS\_COMPLEX](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-complejo.md) or cells in DGN files. Commands treat it as a point: `P` includes it and `G` does not.

A command that cannot handle a geometry type ignores its letter. The "Command-specific behavior" section lists these cases and letters specific to individual commands.

## Parameter formats

Depending on the command, enter letters in one of these ways:

* **Letter string in a single parameter.** Example: `RENAMCOD=020101 020102 LP`.
* **Letters in one or more parameters.** Example: `COPY=L P` is equivalent to `COPY=LP`.
* **Code/type pairs.** The first item in a pair is a code and the second is a letter string. Example: `DELETE_COD=020101 L 030201 PT`. A code starting with `#` represents all code table codes with that tag. If the last code has no type, the command ignores it.

## Command-specific behavior

### SNAP

* `*` does **not** select all types: it restricts the search to geometries in the active drawing file.
* `@`: if [GOTO\_SNAP](/digi3d-ai/referencia/ventana-de-dibujo/variables/i/ir_tentativo.md) is enabled, move the view to the snap point.
* `-`: deleted geometries only. [DELETED](/digi3d-ai/referencia/ventana-de-dibujo/variables/b/borrados.md) must also be enabled.
* Geometries of other types, such as multipoints, are not filtered by letter.

Many interactive commands run SNAP internally with a fixed string, such as `L*@` to select only lines in the active drawing file.

### PROJECT\_COD, PROJECT\_COD\_TAG, and PROJECT\_BY\_CONDITION

* `B` has no effect.
* For point-based complex entities, the command projects the contained entities and the insertion point.

### RENAMCOD

`*` includes all geometry types, including types without a letter, such as OLE objects.

### DELETE\_COD, RECOVER\_COD, ON\_TYPE, OFF\_TYPE, ONS\_TYPE, OFFS\_TYPE, OND\_TYPE, and OFFD\_TYPE

* `P` also includes oriented points and multipoints.
* `*` includes all geometry types, including types without a letter, such as circles and OLE objects.
* DELETE\_COD deletes the specified types and RECOVER\_COD restores them.
* ON\_TYPE, ONS\_TYPE, and OND\_TYPE show the specified types. OFF\_TYPE, OFFS\_TYPE, and OFFD\_TYPE hide them. Geometries of other types retain their state.

### COPY, COPYP, COPY\_R, DUP, DUPLICATE, MOVE, and MOVE\_Z

If no parameter contains a recognized letter, the command does not allow selection of entities of any type in the table.

Without parameters, each command allows these types:

| Command | Types selectable without parameters |
| :--- | :--- |
| COPY, COPYP, COPY\_R | Lines, points, text, images, polygons, and complex entities |
| DUP | Lines, points, text, and polygons |
| DUPLICATE | Lines, points, and text |
| MOVE, MOVE\_Z | Lines, points, text, images, polygons, and complex entities, from the active drawing file only |

### MOVE\_Z\_W

* `B` has no effect: the command does not handle images.
* A point-based complex entity is modified if its insertion point lies inside the boundary.

### SELECT\_LAST

* The command reads only the first character of each parameter. To specify multiple types, enter one letter per parameter: `SELECT_LAST=L P`.
* `O` specifies OLE objects. `*` also includes OLE objects.

Without parameters, the command searches for all types in the list.

### CHNG\_AA

Only points and text have an angle. `P` and `C` specify points, `T` specifies text, and `*` specifies points and text. Other letters have no effect.

`P` does not include point-based complex entities: changing their angle does not rotate their contents.

## Commands using these letters

| Command | Parameter form | Effective letters |
| :--- | :--- | :--- |
| SNAP | Letter string | `L` `P` `C` `T` `H` `G` `B` `*` `@` `-` |
| [DELETE\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-cod.md) | Code/type pairs | `L` `P` `C` `T` `H` `G` `B` `*` |
| [RECOVER\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/recupera-cod.md) | Code/type pairs | `L` `P` `C` `T` `H` `G` `B` `*` |
| [ON\_TYPE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on-tipo.md) | Code/type pairs | `L` `P` `C` `T` `H` `G` `B` `*` |
| [OFF\_TYPE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off-tipo.md) | Code/type pairs | `L` `P` `C` `T` `H` `G` `B` `*` |
| [ONS\_TYPE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ons-tipo.md) | Code/type pairs | `L` `P` `C` `T` `H` `G` `B` `*` |
| [OFFS\_TYPE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offs-tipo.md) | Code/type pairs | `L` `P` `C` `T` `H` `G` `B` `*` |
| [OND\_TYPE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ond-tipo.md) | Code/type pairs | `L` `P` `C` `T` `H` `G` `B` `*` |
| [OFFD\_TYPE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offd-tipo.md) | Code/type pairs | `L` `P` `C` `T` `H` `G` `B` `*` |
| [PROJECT\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-cod.md) | Code/type pairs | `L` `P` `C` `T` `H` `G` `*` |
| [PROJECT\_COD\_TAG](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-cod-etiqueta.md) | Code/type pairs starting at the second parameter | `L` `P` `C` `T` `H` `G` `*` |
| [PROJECT\_BY\_CONDITION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-por-condicion.md) | Code/type pairs starting at the third parameter | `L` `P` `C` `T` `H` `G` `*` |
| [RENAMCOD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renomcod.md) | Letter string in the third parameter | `L` `P` `C` `T` `H` `G` `B` `*` |
| [COPY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copiar.md) | Letters in one or more parameters | `L` `P` `C` `T` `H` `G` `B` `*` |
| [COPYP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copia-2p.md) | Letters in one or more parameters | `L` `P` `C` `T` `H` `G` `B` `*` |
| [COPY\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copia-r.md) | Letters in one or more parameters | `L` `P` `C` `T` `H` `G` `B` `*` |
| [DUP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dup.md) | Letters in one or more parameters | `L` `P` `C` `T` `H` `G` `B` `*` |
| [DUPLICATE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/duplica.md) | Letters in one or more parameters | `L` `P` `C` `T` `H` `G` `B` `*` |
| [MOVE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mover.md) | Letters in one or more parameters | `L` `P` `C` `T` `H` `G` `B` `*` |
| [MOVE\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mover-z.md) | Letters in one or more parameters | `L` `P` `C` `T` `H` `G` `B` `*` |
| [MOVE\_Z\_W](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mover-z-v.md) | Letter string | `L` `P` `C` `T` `H` `G` `*` |
| [SELECT\_LAST](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-ultimo.md) | One letter per parameter | `L` `P` `C` `T` `H` `G` `B` `O` `*` |
| [CHNG\_AA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-aa.md) | Letter string in the second parameter | `P` `C` `T` `*` |
