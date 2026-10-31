# Fill 3D gaps
<!-- id: rellenar-huecos-3d -->
<!-- origen: d88b88d96686284635e82b0b59238146d5352c16 -->

[TIN edition tab](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-edicion-tin/generar-a-partir-del-tin.md)

Tools for filling gaps in a 3D surface: a digital model obtained with [3D triangulation](../modulo-laser/obtener-modelo-digital/triangulacion-3d.md), a facade DTM, a scanned object, and so on. Unlike TIN [Fill gaps](../fichas-de-herramientas/ficha-de-herramientas-edicion-tin/generar-a-partir-del-tin.md), which retriangulates the specified area's points in plan view, these tools work in 3D, including walls, ceilings, overhangs and closed surfaces.

Each gap is filled as follows:

1. Its boundary is triangulated with triangles that bend as little as possible relative to surrounding triangles.
2. New interior points are added with the same spacing as boundary points.
3. New points are repositioned so the patch follows the surrounding surface's curvature: a hole in a sphere is filled with a spherical cap, not a plane.

Patch points and triangles are **added** to the digital model. Existing ones retain their breaklines, textures and attributes. The operation can be undone.

There are three tools:

* [**Fill 3D gaps**](#fill-3d-gaps-1): all digital model gaps up to a specified size.
* [**Fill one 3D gap**](#fill-one-3d-gap): the clicked gap, regardless of size, or the part of its boundary inside a dragged circle.
* [**Gap-free surface**](#gap-free-surface): from a 3D TIN document (tetrahedra), creates a new digital model containing the surface with its gaps filled.

## Fill 3D gaps

The **Fill 3D gaps** button in the **Other** group of the [TIN edition](../fichas-de-herramientas/ficha-de-herramientas-edicion-tin/generar-a-partir-del-tin.md) tab. Available only with a digital model containing triangles.

The program requests the **maximum gap diameter** in project units. It fills gaps whose diameter, the greatest distance between two boundary points, does not exceed this value. Set 0 for no limit. The last value is remembered and shared with the "Fill gaps up to diameter" field in [3D triangulation](../modulo-laser/obtener-modelo-digital/triangulacion-3d.md). As a guide, about five times the point spacing fills small gaps without closing real openings such as a pipe mouth or an object's base.

The following are not filled:

* **The outer boundary of each surface component**, its longest boundary: a terrain outline or a pipe opening. Use [Fill one 3D gap](#fill-one-3d-gap) to fill it.
* **Gaps larger than the maximum diameter.** An elongated slit's diameter is its length, even if it is narrow.
* **Gaps whose patch would cover more than half their component**, to avoid covering a detached piece with another layer.
* **Gaps touching edges shared by three or more triangles**, found where a surface has double layers, for example maximum-distance 3D triangulation of a cloud with overlapping passes. An [advancing-front surface](../modulo-laser/obtener-modelo-digital/triangulacion-3d.md) has no double layers.
* **An isolated triangle.**

On completion, the results window reports the number of gaps filled out of the surface's total boundaries, how many were too large, outer boundaries, or touched edges shared by three or more triangles, and the new point and triangle counts.

## Fill one 3D gap

The **Fill one 3D gap** button in the **Other** group of the [TIN edition](../fichas-de-herramientas/ficha-de-herramientas-edicion-tin/generar-a-partir-del-tin.md) tab, with a 3 and the red and yellow badge. Fills a gap specified on screen without a size limit. The tool remains active to fill other gaps until another tool is selected. Before using it, rotate the model until the gap is clearly visible: everything is determined from the current screen view and rotation.

There are two ways to specify the gap:

* **Left-click** inside the gap to fill it completely.
* **Click and drag a circle** while holding the button. On release, only the part of the gap boundary inside the circle is filled, closed with straight lines between its endpoints. Use this to fill part of a large or elongated gap, or indentations in the outline. The circle is drawn on screen while dragging; right-click to cancel without filling anything. A drag of less than five pixels counts as a click.

### Click inside a gap

The program finds surface boundaries that surround the clicked point in the screen view and are not behind the surface visible there, then fills the smallest:

* Clicking a gap reveals what is behind it, or nothing, so that gap is filled rather than the outer boundary that also surrounds it.
* Clicking the surface outside any gap fills nothing: the status bar reports that there is no closed gap at the clicked point, and the digital model remains unchanged.
* A gap behind another part of the surface cannot be selected. Rotate the view to expose it.
* A long, narrow gap, such as a pipe's shadow on the ground almost entirely hidden by the pipe, is split at its narrow sections and only the part containing the clicked point is filled.
* A component's outer boundary is filled when clicked inside, such as the mouth of a pipe or hollow object, unless its patch would cover almost the entire component, as with a terrain outline or detached piece.
* A gap between one surface part and another that folds over it and is visible behind it, such as between a pipe wall and a "tooth" of triangles descending to the ground, is not a normal surface boundary. However, it is also filled when clicked inside if the background is visible through it.

### Drag a circle

Only visible boundary points inside the circle count. Points on the part of the boundary passing behind a pipe or the object itself are excluded even if they fall inside the circle on screen.

* If the circle surrounds an entire gap, the gap is filled.
* If it touches only part of a boundary, that part is filled and closed with a straight line between boundary points at the circle's edge. For a slit, the circle touches both sides and fills the portion it covers.
* **Outline indentations**, areas without triangles extending inward from the outer boundary rather than closed gaps, are filled by drawing a circle over them, closing their mouth.
* If the closing line would cross the surface, for example a surface tooth extending into the gap, the longest boundary portion inside the circle that can be closed without crossing the surface is filled. Fill a large opening with many teeth in sections using several circles.

If the circle touches no boundary, or its boundary portion cannot be closed without crossing the surface, the status bar reports this, a warning sounds, and the digital model remains unchanged. Try another circle.

If the gap cannot be filled because it touches edges shared by three or more triangles, is its component's outline, is an isolated triangle, or another reason, the results window explains why, a warning sounds, and the digital model remains unchanged.

### With a View with selection

When other model parts lie in front of or behind the gap, such as ground behind a pipe or the other side of an object, isolate them with [View with selection](../fichas-de-herramientas/ficha-de-herramientas-edicion-tin/vista-tin.md):

1. Select the triangles in the area to fill, for example with [Define fence to select](../fichas-de-herramientas/ficha-de-herramientas-editar/editar-elementos.md), and click **View with selection**. Only those triangles are displayed.
2. If necessary, rotate the model, select again among the visible elements, and click **View with selection** again to isolate fewer elements.
3. Fill gaps with **Fill one 3D gap**, clicking or dragging circles.
4. Click **View with selection** with nothing selected to display the entire model again.

With View with selection, the tool works only with visible triangles. Hidden elements neither occlude gaps nor get filled. The cut between visible and hidden parts is also a boundary that can be filled, for example to complete the underside of a pipe resting on the ground while following the pipe's curvature. Each patch's new points are added to the view. Patch edges touching hidden triangles will have one additional triangle, belonging to the hidden part.

## Gap-free surface

The **Gap-free surface** button in the [Update](../fichas-de-herramientas/ficha-de-herramientas-edicion-tin-3d/actualizar-tin-3d.md) group of the 3D TIN edition tab, with a 3D TIN document: [3D triangulation](../modulo-laser/obtener-modelo-digital/triangulacion-3d.md) without "Generate 2D TIN directly".

Calculates the model points' [advancing-front surface](../modulo-laser/obtener-modelo-digital/triangulacion-3d.md), using the [Show triangles](../fichas-de-herramientas/ficha-de-herramientas-edicion-tin-3d/actualizar-tin-3d.md) distance as the maximum side length. It fills gaps up to the requested diameter, like [Fill 3D gaps](#fill-3d-gaps-1), and opens the result as a new digital model with " (gap-free)" in its title. The 3D TIN document remains unchanged.

## Limits

* A digital model accepts about 50,000 new points after creation or opening. If this limit is reached, remaining gaps are not filled, none are left partially filled, and the results window reports this. Save and reopen the digital model to continue.
* A digital model opened from another program's mesh format, such as OBJ or STL, may not accept new points. Save it as MDT and reopen it.
