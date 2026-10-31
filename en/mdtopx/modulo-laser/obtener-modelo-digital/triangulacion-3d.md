# 3D triangulation
<!-- id: triangulacion-3d -->
<!-- origen: 68c8445b3b6565adf77f8b599d8c18581b437ad3 -->

[Generate digital model](/mdtopx/modulo-laser/obtener-modelo-digital/)

Generates a TIN digital terrain model using Delaunay tetrahedralization. Breaklines are not supported, restricting its use to laser point file triangulation.

![3D Triangulation dialog](../../../images/image-120.png)

Required parameters:

* **Select point source**: source point types used to calculate the digital model.
* **Maximum distance among points**: maximum distance for neighboring terrain points, based on density. Excessively large values connect distant points and remove potential concave areas. Small values may leave gaps where point spacing exceeds the limit. At 0, point distance is ignored and model concavities are not generated.
* **Only in the selection**: processes only currently selected points.
* **Generate directly TIN 2D**: outputs a 2D model containing the outer faces of generated tetrahedra. If disabled, outputs a 3D tetrahedral model; later change displayed tetrahedron size with [Show triangles](../../fichas-de-herramientas/ficha-de-herramientas-edicion-tin-3d/actualizar-tin-3d.md) on the 3D TIN edition tab, and obtain a [Gap-free surface](../../herramientas-de-edicion-de-la-triangulacion/rellenar-huecos-3d.md#gap-free-surface).
* **Advancing-front surface (no double layers)**: available only with Generate directly TIN 2D. Changes how surface triangles are selected, described below. Maximum point distance becomes solely an edge length limit.
* **Fill gaps up to diameter**: available only with Generate directly TIN 2D. After calculation, fills surface gaps whose diameter does not exceed the specified value in project units, 0 for no limit, like [Fill 3D gaps](../../herramientas-de-edicion-de-la-triangulacion/rellenar-huecos-3d.md). The value is remembered.

## Surface gaps

Without Advancing-front surface, a triangle belongs to the surface when all three sides are shorter than the maximum point distance. Scanner cloud points lie close together along each scan line but farther apart between lines, especially on oblique or distant surfaces. If the maximum distance is below that spacing, strips without triangles remain between lines. Increasing it fills strips but loses detail and creates double layers where passes overlap, with edges shared by three or more triangles.

With **Advancing-front surface**, the surface grows from its smallest triangles. At each boundary, it adds the most plausible neighbor: the smallest triangle among those that do not bend excessively relative to the existing one, using Cohen-Steiner and Da's advancing-front algorithm. The result adapts to cloud density, with small triangles in dense areas and larger ones only where needed, without double layers. Maximum distance only prevents longer sides, so a larger value than with the usual method, above scan line spacing, can retain detail. At 0 there is no limit and the front can span real gaps with enormous triangles; specify a limit.

Fill remaining gaps with Fill gaps up to diameter or later with [Fill 3D gaps](../../herramientas-de-edicion-de-la-triangulacion/rellenar-huecos-3d.md).

See also:

* [Triangulation](/mdtopx/desde-linea-de-comando/linea-de-comando-triangulacion.md)
* [2D triangulation](/mdtopx/modulo-laser/obtener-modelo-digital/triangulacion-2d.md)
