# Projected coordinate reference systems
<!-- id: sistema-referencia-coordenadas-proyectados -->
<!-- origen: 66dd93ef666f7b77b9cd0a1701720243db508261 -->

Projected systems always have an associated geographic coordinate reference system (two-dimensional, _2D_, or three-dimensional, _3D_). They represent a coordinate from the associated geographic system (whose coordinates are always polar, that is, angles) as a rectangular coordinate by applying a projection.

A projected coordinate reference system is always defined by these parameters:

1. Geographic coordinate reference system (_2D_ or _3D_).
2. Projection (_U.T.M._ (Universal Transverse Mercator), _Lambert_, _Polar stereographic_, ...).
3. Projection parameters (_zone_, _hemisphere_, ...).

Projected coordinate reference systems are always two-dimensional (even if the associated geographic system is three-dimensional). Usually, though not necessarily, the first dimension stores _X_ and the second stores _Y_. Both coordinates' units are usually _meters_.

Digi3D.AI does not allow users to select a projected coordinate reference system directly; it can only be selected as part of a [compound coordinate reference system](../sistemas-referencia-coordenadas-compuestos.md).
