# Delete TIN triangles
<!-- id: borrar-triangulos-del-tin -->
<!-- origen: a463ab516f5e59fe4472633491f944c93a10ac8d -->

[TIN edition tab](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-edicion-tin/)

This group contains tools for deleting triangles from a TIN digital model. Deleting triangles leaves the surface undefined in those areas, creating gaps when the triangles were inside the model. To delete information without this effect, delete points and let the program retriangulate the area without them. Those tools are described in [Delete TIN vertices](borra-vertices-del-tin.md).

The following triangle deletion tools are available:

* [**Delete in limits**](../../herramientas-de-edicion-de-la-triangulacion/borrar-fuera-o-dentro-de-limites.md): deletes triangles inside or outside boundaries defined by breaklines or drawing files.
* [**Delete by size**](../../herramientas-de-edicion-de-la-triangulacion/tamano-de-los-lados.md): automatically deletes triangles according to side length. Removes triangles too large for their points to be considered neighbors. Useful for removing triangles generated in concave mapping areas that join points far apart in reality.
* [**Delete by slope**](../../herramientas-de-edicion-de-la-triangulacion/borrar-triangulos-por-pendientes.md): deletes triangles outside the slope range specified by the user.
* [**Delete by height dif.**](../../herramientas-de-edicion-de-la-triangulacion/borrar-triangulos-por-diferencia-de-cota.md): automatically deletes triangles according to the elevation difference between their vertices. Removes triangles too steep for their points to be considered neighbors. Useful for removing triangles generated between elements belonging to different surfaces.
