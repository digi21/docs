# Alignment information
<!-- id: informacion-del-trazado -->
<!-- origen: 1c967cb545002562b11252fae3a7c446950a55a0 -->

[Horizontal tab](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-trazado.md)

This dialog displays an alignment's general characteristics and the coordinates defining its geometry.

![Alignment information dialog](../../../images/image-105.png)

General characteristics:

* **Name**: identifies the alignment in lists.
* **Start**: road starting chainage, in meters.
* **Code**: recording code determining its display color or thickness.

The point list contains the straight alignment vertices and curve tangent points. Each has:

* **Point**: point number.
* **X and Y coordinates**: plan coordinates, in meters.
* **Radius**: radius in meters.
* **A parameter**.

Use **Add**, **Edit** or **Erase** to manage points.

The program checks alignment consistency during these operations to prevent overlapping elements, usually curves. Deleting an important point, adding one in an unsuitable location or editing it incorrectly can produce an error stating that overlapping elements prevent the operation.

**Add** inserts the new point after the currently selected point.

**Erase** on a Vertex or entry/exit Tangent point deletes the entire curved element it represents.

**Close** closes the alignment by appending a point with the first point's coordinates. Disabled if already closed.

**Export ASCII...** generates a file listing the displayed road's alignment elements. Windows Explorer requests the output name and folder. The resulting file looks like this:

```text
Punto X Y Radio A Tipo
1 424621.570 4495199.270 0.000 0.000
2 424652.540 4495243.044 50.000 0.000 TE
3 424676.480 4495276.880 50.000 0.000 V
4 424714.168 4495259.628 50.000 0.000 TS
5 424751.789 4495242.408 -30.000 0.000 TE
6 424779.310 4495229.810 -30.000 0.000 V
7 424791.663 4495257.441 -30.000 0.000 TS
8 424812.380 4495303.780 0.000 0.000
9 424807.330 4495213.000 0.000 0.000
```
