# Centroid
<!-- id: centroide -->
<!-- origen: 5bc4a040ae1be02421acc1ddf56c2d2beb41330c -->

A centroid is text inside a [topological polygon](poligonos-topologicos.md).

> Centroids identify polygon types.\
> \
> For example, in a crop type topology, “Fr” may identify fruit trees and “Mb” scrubland.

## Holes

[Configure](anadir-topologia.md#centroid-for-holes) topology text identifying hole centroids.

Usually an asterisk (\*). A topological polygon containing a centroid with the hole text is not formed.

## Value dictionary

Centroids may have an associated value dictionary in the [topology](./).

The dictionary contains `clave=valor` pairs. For example, assign this dictionary to “Fr”:

```
tipo=1
descripción=Frutal
```

And this one to “Er”:

```
tipo=2
descripción=Erial
```

Use it to store database information when exporting topology to a drawing file through [%CENTROID_VALUE=\[valor\]%](../base-de-datos/macros-de-base-de-datos.md).

### Example:

When exporting to a format with an associated database, assign this default to a field in the generated polygon code's table:

```
%CENTROID_VALUE=descripción%
```

Centroid “Fr” stores “Frutal” in the database field; “Er” stores “Erial”.
