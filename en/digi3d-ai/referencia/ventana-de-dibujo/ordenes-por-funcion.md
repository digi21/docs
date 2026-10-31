# Commands by function
<!-- id: ordenes-por-funcion -->
<!-- origen: d2e0f2baea4f35956590ce7347d33b1f558d8c43 -->

This page groups drawing window commands by function, following drawing window menus. Commands without a menu option appear in the group corresponding to their purpose.

The complete alphabetical list is in [Drawing window commands](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/README.md).

## Files

### Opening, importing, and exporting

[CAPTURE\_DRAWING\_WINDOW](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/captura-ventana-dibujo.md): Create a .PNG file containing the drawing window contents.
[LOAD\_P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/carga-p.md): Read an ASCII coordinate file and add one point to the working file for each coordinate set \(X Y Z\) read.
[LOAD\_T](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/carga-t.md): Read coordinates and texts from an ASCII file and insert each text into the working file at the specified coordinates.
[EXPORT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar.md): Export the current file to other formats (BIN, DGN, DWG, GeoMedia, and others).
[EXPORT\_SELECTED\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar-entidades-seleccionadas.md): Export selected entities to a drawing file.
[EXPORTA\_VIRTUAL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar-virtuales.md): Export only virtual entities to a new file.
[DRAWING\_FILE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/fichero-dibujo.md): Select the working drawing file from reference files loaded with LOAD\_F.
[END](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/fin.md): End the work session for the current file.
[IMPORT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/importar.md): Import other formats (BIN, DGN, DWG, GeoMedia, and others) into the drawing file.
[IMPORT\_JOINING\_POLYGONS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/importar-uniendo-poligonos.md): Import one or more files into the drawing file and merge imported polygons that adjoin polygons in the drawing file and have the same codes and database attributes.
[NEW\_PROJECT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/n/nuevo-proyecto.md): Display the dialog box to open a photogrammetric model or drawing file.
[IMPORTATION\_PARAMETERS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md): Specify the parameters sent to the corresponding importer or exporter so that the configuration dialog box does not appear when importing or exporting a file of that type.
[EXIT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/salir.md): Save the active drawing file and close Digi3D.AI.

### Reference files

[CHANGE\_FILES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cambia-ficheros.md): Swap the active drawing file with the reference drawing file.
[LOAD\_F](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/carga-f.md): Display one or more reference drawing files alongside the current drawing file.
[LEAVE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dejar.md): Unload reference files attached to the working file.
[RECARGAR\_ARCHIVOS\_REFERENCIA\_VISTA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/recargar-archivos-referencia-vista.md): Reload reference files supporting an area of interest with entities overlapping the current view.

### File tools

[ASSIGN\_DRAWING\_FILE\_TAGS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-etiquetas-archivo-dibujo.md): Assign tags to a drawing file in the Drawing file pane.
[BAK](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bak.md): Create a backup copy of the active drawing file.
[BININFO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bininfo.md): Display information about entities in loaded drawing files.
[COMPRESS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/comprimir.md): Remove all entities marked as deleted from the drawing file and update loaded topologies in memory.
[P\_FILE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/fichero-p.md): Set or change the point file used by DigiNG without leaving the work session and returning to the application start screen.
[SAVE\_CODE\_TABLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/guardar-tabla-codigos.md): Save the active code table to a file.
[PRODUCTION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/produccion.md): Generate a file containing production information for the currently open drawing file.

## Editing

### Undo, search, and entities of interest

[CLEAR\_ENTITIES\_OF\_INTEREST](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/anula-entidades-de-interes.md): Clear the entities of interest setting to enable all loaded entities for all processes.
[SEARCH](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/buscar.md): Specify entity search criteria.
[ENTITIES\_OF\_INTEREST](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/entidades-de-interes.md): Specify entities of interest for commands that modify entities.
[REDO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/redo.md): Redo the last operation undone with UNDO.
[UNDO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/undo.md): Undo the most recent actions performed by the application.

### Deleting, trimming, and recovering entities

[DELETE\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-cod.md): Delete all entities whose code matches the specified code.
[DELETE\_COD\_W](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-cod-v.md): Delete entities matching the entered code and related to a window by containment, overlap, or intersection.
[DELETE\_E](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-e.md): Delete the specified graphical entities and texts from the drawing.
[DELETE\_LIN1](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-lin1.md): Delete lines recorded with one point and entities whose vertices all coincide.
[DELETE\_LAST](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-ultimo.md): Delete the last entity recorded in the drawing file.
[DELETE\_W](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-v.md): Delete graphic entities inside the boundary of a previously defined entity.
[CUT\_F](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cortar-f.md): Generate a new file with entities inside the boundary of a selected drawing entity.
[CUT\_F\_CENTROID](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cortar-f-centroide.md): Generate a new file with the elements inside the boundary of a drawing entity with a specific centroid.
[CLEAN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/limpia.md): Split entities crossing text or boundary line outlines, then delete or recode interior portions.
[RECOVER](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/recupera.md): Recover entities marked as deleted in the drawing file if DELETED is enabled.
[RECOVER\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/recupera-cod.md): Recover all deleted entities with a code matching the one entered.

### Entity codes and attributes

[UPDATE\_ATTRIBUTES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/actualiza_atributos.md): Update the selected entity's attributes with those active in the Active attributes pane.
[ADD\_CODES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/anadir-codigos.md): Add the active code list to a selected entity.
[CHNG\_ATTRIBUTES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb_atributos.md): Replace the selected entity's attributes with those active in the Active attributes pane.
[CHNG\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-cod.md): Change the code assigned to a graphic entity.
[EDIT\_ATTRIBUTES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar_atributos.md): Edit the attributes of the selected entity.
[EDIT\_CODES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-cod.md): Edit the codes of the selected entity.
[DELETE\_UNKNOWN\_CODES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-codigos-desconocidos.md): Remove all unknown codes from the drawing file.
[PREFIJA\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/prefija-cod.md): Prepend a prefix to codes of each entity selected with a data point, except codes already prefixed.
[RENAME\_UNKNOWN\_CODES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renombrar-codigos-desconocidos.md): Rename unknown codes found in the drawing file.
[RENAMCOD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renomcod.md): Change the code of a set of entities to the active code or a code specified in the command call.
[RENOMCOD\_MANTENIENDO\_ATRIBUTOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renomcod-manteniendo-atributos.md): Replace a code on all entities bearing it while retaining the replaced code's database table and record.
[RENAMCOD\_SEL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renomcod-sel.md): Replace the code of selected entities with another code.
[SEPARATE\_MULTICOD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/separa-multicod.md): Explode entities with multiple codes into multiple entities with a single code.
[REPLACE\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/sustituye-cod.md): Replace codes of the selected entity with the active codes.

### Coordinates: moving, copying, and duplicating

[CHNG\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-z.md): Replace a drawing element's elevation with a new value.
[CHNG\_ACTIVE\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-z-activa.md): Change the Z of one or more elements to the currently active Z.
[COPY\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copia-r.md): Copy a drawing entity and rotate it with a second input point.
[COPYP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copia-2p.md): Copy a drawing entity with translation, scaling, and rotation.
[COPY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copiar.md): Create a copy of a drawing entity.
[DISPLACE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/desplazar.md): Move drawing file entities by the specified X, Y, and Z distances.
[DUP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dup.md): Create a copy of an entity in place.
[DUPLICATE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/duplica.md): Duplicate an entity while retaining its code.
[EDITOR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editor.md): Edit the coordinates of the selected entity.
[MERGE\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/j/juntar-z.md): Assign a digitized point's Z to the nearest vertex of each nearby line.
[MOVE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mover.md): Change the position of one or more entities in X, Y, and Z.
[MOVE\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mover-z.md): Change the elevation of one or more entities.
[ROUND\_COORDINATE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/redondea-coordenada.md): Replace selected line and polygon vertex X or Y coordinates with a given value when they differ from it by no more than a tolerance.
[REWRITE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/reescribe.md): Rewrite selected entities.
[ZFIXED](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zfija.md): Assign all vertices of each selected entity the same Z coordinate, a multiple of the contour interval.

### Polylines

[FILLET](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/acuerdo.md): Draw a circular fillet between two segments of an entity sharing a vertex.
[ADJUST\_AREA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/ajusta-area.md): Move the selected segment to adjust the area of the selected closed line to the target area.
[ALIGN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/alinear.md): Move vertices whose distance to the digitized virtual line is no greater than the primary active distance.
[DELETE\_VERTEX](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-vertice.md): Delete a vertex from a linear entity.
[CHNG\_MAXPOINTS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-maxpuntos.md): Split linear entities exceeding the specified vertex count into sections with fewer vertices.
[CHNG\_DIREC](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-sen.md): Reverse the order of recorded points after digitizing a drawing element.
[CHNG\_DOWN\_DIR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-sen-baja.md): Reverse a line to run from its highest endpoint to its lowest.
[CHNG\_UP\_DIR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-sen-sube.md): Reverse a line to run from its lowest endpoint to its highest.
[CLOSE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cierra.md): Close an existing entity in the drawing file.
[CUT\_2P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/corta-2p.md): Split an entity at two points on it.
[CUT\_E](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cortar-e.md): Split an element into two elements.
[CUT\_AND\_DELETE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cortar-y-borrar.md): Split an element into two elements, then delete one of them.
[CONTOUR\_HEIGHTS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cotas-curvas.md): Assign elevations to contour lines globally.
[INTERSECTION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cruce.md): Draw the intersection of an entity with two others, removing the portion of the first between its intersections with the other two.
[DISPLACE\_ORIGIN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/desplazar-origen.md): Change the origin \(start and end\) of a closed line.
[EDIT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar.md): Modify the plan \(X, Y\) position of element vertices.
[EDIT\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-xyz.md): Modify the three-dimensional \(X, Y, Z\) position of element vertices.
[EDIT\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-z.md): Modify the Z coordinate of the selected entity.
[EXTEND\_TRIM\_BY\_TOLERANCE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/estira-recorta-por-tolerancia.md): Extend or trim endpoints of visible lines to meet other lines.
[SPR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/ext.md): Extend or trim an entity to its intersection with another given entity.
[SPR\_M](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/ext-m.md): Extend or trim a group of entities until they intersect another specified entity.
[SPR\_D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/ext-p.md): Extend or trim an entity to intersect another, splitting both at the intersection to create a node.
[SPR\_PLANE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/ext-plano.md): Extend the line endpoint nearest the selection to a selected plane.
[SPR\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/ext-xyz.md): Extend or trim an entity to a boundary, setting the adjusted endpoint's Z to the boundary Z.
[SPR2X](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/ext2x.md): Extend two entities to their intersection.
[EXTEND\_END](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/extiende_extremo.md): Dynamically extend a polyline endpoint.
[GEN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/gen.md): Generalize lines, polygons, and complex entities: remove unnecessary vertices by measuring distances in 3D space (X, Y, and Z).
[GEN\_2D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/gen-2d.md): Generalize lines and polygons using distances in the XY plane, ignoring vertex Z.
[INSERT\_VERTEX](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/inserta-vertice.md): Insert a vertex into a line or polygon.
[INTERPOLATE\_Z\_BETWEEN\_VERTICES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/interpola-z-entre-vertices.md): Interpolate vertex Z coordinates between two selected vertices of a line.
[JOIN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/j/juntar.md): Move all points within an area determined by cursor size to a single point.
[MOD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod.md): Modify the geometry of an entity in XY.
[MOD\_MULTIPLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod-multiple.md): Modify the geometry of multiple entities in XY.
[MOD\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod-z.md): Modify an entity's geometry in XYZ.
[MOD\_Z\_MULTIPLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod-z-multiple.md): Modify the geometry of multiple entities in XYZ.
[MODIFYVERTEX](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/modifica-vertice.md): Change the position of a vertex in a line or polygon.
[STB](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/ret.md): Set back a segment of an entity.
[SMOOTH](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/suaviza.md): Smooth the geometric shape of an existing linear element in the drawing.
[SMOOTH\_SPLINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/suaviza-spline.md): Smooth a line by creating a cubic spline.
[TOL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/tol.md): Set the _tolerance factor_ for generalization.
[TOL\_ANG](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/tol-ang.md): Set the _angular tolerance factor_ for generalization.
[TRIM](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/trim.md): Trim an entity to its intersection with another entity's boundary.
[TRIM\_SIDE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/trim-lado.md): Trim multiple entities by first selecting the boundary line and then digitizing a point on one side.
[TRIM\_M](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/trim-m.md): Trim multiple entities by first selecting the boundary line and then digitizing a virtual boundary.
[CONNECT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/unir.md): Join two selected linear entities into a single drawing entity.
[CONNECT\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/unir-cod.md): Join polylines sharing a code and crossed by a selection line.

### Points

[CHNG\_ACT\_SCALE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-esc-act.md): Assign the active scale to one or more points in the drawing.
[EXPLODE\_POINTS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-puntos.md): Convert each point's symbol in the active drawing file into independent lines with the point's codes, and delete the point.
[ROTATE\_POINT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/r-punto.md): Rotate a point symbol already inserted in the drawing file.

### Text

[DELETE\_TEXT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borrar-texto.md): Delete all text matching any parameter (supports wildcards).
[CHNG\_AA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-aa.md): Assign the active angle to the rotation of one or more texts or points in the drawing.
[CHNG\_TH](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-at.md): Change the height of one or more texts in the drawing.
[CHNG\_CHARACTER](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-caracter.md): Replace a specified text character with another.
[CHNG\_JT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-jt.md): Change the justification of one or more existing texts in the drawing.
[CHNG\_JT2](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-jt2.md): Change the justification of one or more existing texts in the drawing without changing their position.
[CHNG\_TEXT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-texto.md): Replace all matching text with the specified text.
[EDIT\_TEXT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-texto.md): Edit a text entity in the drawing file.
[R\_TEXTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/r-texto.md): Rotate existing text in the drawing file.
[REPLACE\_TEXT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/reemplazar-texto.md): Replace text with other text.

### Polygons

[DELETE\_HOLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borrar-hueco.md): Delete a hole from a polygon.
[CUT\_POLYGON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cortar-poligono.md): Split a polygon into polygons according to its intersections with a cutting line.
[EXPLODE\_POLYGON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-poligono.md): Split a polygon into all its component entities.
[EXPLODE\_POLYGONS\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-poligonos-cod.md): Split multiple polygons into all their component entities.
[INSERT\_HOLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/insertar-hueco.md): Insert a hole in a polygon or a closed line.
[TRIM\_POLYGON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/recortar-poligono.md): Trim a polygon by removing the portion intersecting a boundary.
[TRIM\_POLYGONS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/recortar-poligonos.md): Trim all polygons intersecting a boundary.

### Complex entities

[EXPLOIT\_COMPLEX](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-complejo.md): Explode complex entities into their component line strings.
[EXPLOIT\_COMPLEXES\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-complejos-cod.md): Explode complex entities into their component line strings.
[EXPLOIT\_COMPLEXES\_COD2](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-complejos-cod2.md): Split multiple complex entities by code, without retaining subentity codes.
[TRANSFORMA\_COMPLEJO\_A\_PUNTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/transforma-complejo-a-punto.md): Replace complex entities bearing specified codes with points at their bounding box centers.

### Advanced

[BINPLT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/binplt.md): Explode symbology using the scale configured on the Drawing file tab.
[DIVIDE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dividir.md): Insert text or symbols along a linear entity.
[ORDER\_BY\_CODE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ordena-por-codigo.md): Sort the entities in a file by code, grouping them in the file by the code they belong to.
[ARRANGE\_BY\_N\_CODE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ordena-por-codigo-n.md): Sort the entities in a file by numeric code, grouping them in the file by the numeric code they belong to.
[ORDER\_BY\_DIGI\_TAB](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ordena-por-digitab.md): Reorder the entities in a file according to their order in the active code table.
[TAG\_DESCRIPTION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/rotula-descripcion.md): Label point entities with the description of the point code.
[TRANSFORM](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/transforma.md): Perform transformations in the drawing file.

## Displaying codes and entities

[ASSIGN\_REPRESENTATIONS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-representaciones.md): Assign a representation file to modify how geometries are displayed.
[UNKNOWN\_COLOR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/color-desconocido.md): Set the drawing color for entities whose code is unknown.
[OFF](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off.md): Disable the display of one or more codes.
[OFF\_FILE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off-archivo.md): Disable codes in the drawing window for a specific file index.
[OFF\_PYTHON\_EXPRESSION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off_expresion_python.md): Hide geometries returning true for the Python expression supplied as a parameter.
[OFF\_TYPE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off-tipo.md): Disable codes in the orthogonal view.
[OFF\_ALL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off_todo.md): Hide all geometries.
[OFFD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offd.md): Disable codes \(one or more\) in the drawing view, both in DigiNG and in stereo view.
[OFFD\_TYPE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offd-tipo.md): Disable codes in the photogrammetric and drawing views.
[OFFS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offs.md): Disable codes in stereo view.
[OFFS\_FILE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offs-archivo.md): Disable codes in the photogrammetric window for a specific file index.
[OFFS\_TYPE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offs-tipo.md): Disable codes in the photogrammetric view.
[ON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on.md): Enable the display of one or more codes in the drawing window.
[ON\_FILE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on-archivo.md): Enable codes in the drawing window for a specific file index.
[ON\_PYTHON\_EXPRESSION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_expresion_python.md): Show geometries returning true for the Python expression supplied as a parameter.
[ON\_ONLY\_PYTHON\_EXPRESSION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_solo_expresion_python.md): Show only geometries returning true for the Python expression supplied as a parameter.
[ON\_TYPE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on-tipo.md): Enable codes in the orthogonal view.
[OND](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ond.md): Enable codes \(one or more\) in the drawing, both in stereo view and in Digi.NG.
[OND\_TYPE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ond-tipo.md): Enable codes in the photogrammetric and drawing views.
[ONS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ons.md): Enable codes in stereo view.
[ONS\_FILE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ons-archivo.md): Enable codes in the photogrammetric window for a specific file index.
[ONS\_TYPE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ons-tipo.md): Enable codes in the photogrammetric view.
[ONONLY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/onsolo.md): Enable only the specified codes in the drawing and photogrammetric windows.
[SPATTERN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/patrons.md): Show or hide line patterns in stereo view.
[DYNAMIC\_REPRESENTATION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/representacion-dinamica.md): Assign the dynamic representation supplied as a parameter.
[SEE\_ACTIVE\_CODES\_ONLY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/ver-solo-codigos-activos.md): Enable only the active codes and disable all others in both the drawing and stereoscopic views.
[SEE\_ONLY\_CODES\_SELECTED\_ENTITY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/var-solo-codigos-entidad-seleccionada.md): Leave only the selected entity's codes enabled on screen, disabling all others.
[SEE\_ONLY\_WITH\_BBDD\_LINK](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/ver-solo-con-enlace-bbdd.md): Show only entities with at least one database link.
[SEE\_ONLY\_ENTITIES\_WITH\_BBDD\_LINK](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/ver-solo-entidades-con-enlace-bbdd.md): Show only entities in which every code has a database link.
[SEE\_ONLY\_SELECTED\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/ver-solo-entidades-seleccionadas.md): Hide all entities except those selected.
[SEE\_ONLY\_ENTITIES\_WITHOUT\_BBDD\_LINK](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/ver-solo-entidades-sin-enlace-bbdd.md): Show only entities with no codes linked to a database.
[SEE\_ONLY\_TAGS\_ACTIVE\_CODES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/ver-solo-etiquetas-codigos-activos.md): Enable only codes that share at least one tag with the active codes.
[SEE\_ONLY\_TAGS\_SELECTED\_ENTITY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/ver-solo-etiquetas-entidad-seleccionada.md): Enable only codes sharing a tag with the selected entity's codes.
[SEE\_ONLY\_WITHOUT\_BBDD\_LINK](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/ver-solo-sin-enlace-bbdd.md): Show only entities with at least one code without a database link.
[SEE\_ALL\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/ver-todas-entidades.md): Enable the display of all entities.

## Zooms and view

[OPEN\_BING\_MAPS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/abrir-bing-maps.md): Open a Bing Maps window at the drawing window cursor coordinates.
[OPEN\_GOOGLE\_MAPS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/abrir-google-maps.md): Specify a point and open a Google Maps window centered on its coordinates.
[OPEN\_GOOGLE\_STREET\_VIEW](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/abrir-google-street-view.md): Specify a point and open a Google Street View window at its coordinates.
[OPEN\_OPEN\_STREET\_MAP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/abrir-open-street-map.md): Specify a point and open an Open Street Map window at its coordinates.
[OPEN\_SIGPAC](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/abrir-sigpac.md): Specify a point and open the SIGPAC viewer at its coordinates.
[PERSPECTIVE\_CAMERA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camara-conica.md): Set the drawing window camera to a perspective camera.
[ORTHOGRAPHIC\_CAMERA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camara-ortofonal.md): Set the drawing window camera to an orthographic camera.
[ENTER\_SPHERE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/entrar-en-esfera.md): Enter a sphere by selecting a point on the screen.
[SCALE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/escala.md): Report the current drawing file display scale.
[PREVIOUS\_SPHERE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/esfera-anterior.md): Enter the previous sphere.
[NEXT\_SPHERE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/esfera-siguiente.md): Enter the next sphere.
[ROTATE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/girar.md): Rotate the viewing window.
[GO\_TO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ir-a.md): Move the Digi3D stereoplotter mark to the cursor position or a specified point.
[MOVE\_CAMERA\_FPS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mover-camara-fps.md): Move the perspective camera like a first-person game.
[PERSPECTIVE\_CAMERA\_PARAMETERS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-camara-conica.md): Set perspective camera parameters.
[VIEWPOINT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/punto-vista.md): Set the orthographic window viewpoint to one of the predefined views.
[DYNAMIC\_VIEWPOINT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/punto-vista-dinamico.md): Rotate the orthographic window viewpoint dynamically using a rotation sphere.
[REGENERATE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/regenera.md): Refresh the screen to update the drawing file display.
[ROTATE\_CAMERA\_FPS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/rotar_camara_fps.md): Rotate the drawing window camera with mouse movements.
[PREVIOUS\_ZOOM](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoom-anterior.md): Restore the drawing window view from before the last view change.
[ZOOM\_ENTITY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoom-entidad.md): Zoom to the selected entity.
[ZOOM-](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoom-menos.md): Decrease the zoom factor.
[ZOOM+](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoom-mas.md): Increase the zoom factor.
[2PZOOM](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoom2p.md): Pan the DigiNG view with the mouse.
[ZOOMTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zooma.md): Center the view on the current cursor position.
[RGHZOOM](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoomder.md): Move the drawing view right.
[ZOOME](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoome.md): Zoom to drawing extents.
[ZOOME\_E](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoome-r.md): Zoom to the extents of an enclosure by calculating topologies in real time.
[ZOOMIN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoomin.md): Increase the zoom factor.
[LOWERZOOM](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoominf.md): Move the drawing view down.
[LFTZOOM](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoomizq.md): Move the drawing view left.
[ZOOMOUT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoomout.md): Decrease the zoom factor.
[ZOOMP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoomp.md): Center the drawing view on a point you choose.
[ZOOMUP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoomsup.md): Move the drawing view up.
[ZOOMW](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoomv.md): Display the part of the drawing enclosed by a window you define.

## Immediate

### Active codes

[CLONE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar.md): Clone properties \(codes, active angle, text height, etc.\) from the selected entity.
[CLONE\_ATTRIBUTES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar_atributos.md): Clone the attributes of the selected entity.
[CLONE\_BBDD\_FIELDS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar-campos-bbdd.md): Clone database fields from the selected entity.
[CLONAR\_CÓDIGOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar-codigos.md): Replace the active code list with the codes of a selected entity.
[CLONAR\_CÓDIGOS+](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar-codigos-mas.md): Add the codes of a selected entity to the active code list.
[COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod.md): Set the code used to draw entities.
[COD\_HEIGHTS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod-cotas.md): Specify a code for digitizing spot elevations.
[CONTOUR\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod-curvas.md): Define index and intermediate contour codes.
[COD\_WITHOUT\_COMMAND](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod-sin-orden.md): Replace the active code list, like COD.
[COD+](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod-mas.md): Add one or more codes to the active code list.

### Z coordinate

[MOVE DOWN\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/baja-z.md): Lower cursor Z by the configured contour interval.
[MOVESUP\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/sube-z.md): Raise Z by the configured contour interval.

### Snaps and search modes

[AUTOSMODE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/automodob.md): Enable or disable automatic search mode.
[EXHAUSTIVE\_AUTOSMODE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/automodob-exhaustivo.md): Enable or disable exhaustive search mode.
[CHNG\_SMODE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-modob.md): Set the search mode for snapping graphically to drawing elements.
[CONFIGURE\_SHOW\_CONTOUR\_PASS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/configurar-mostrar-paso-curvas.md): Configure tolerance and codes used to display contour crossings \(SHOW\_CONTOUR\_PASS variable\).
[AUTO\_SMODE\_PARAMETERS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-auto-modob.md): Load the XML file containing automatic search mode settings.

### Measuring and inspecting entities

[LIST](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/lista.md): Show information about the selected entity.
[LIST\_ATTRIBUTES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/lista_atributos.md): Display the selected entity's attributes in the Results pane.
[LIST\_WKT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/lista-wkt.md): List the selected geometry in WKT format.
[MEASURE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide.md): Calculate and display the distance between two points.
[MEASURE\_LINE\_PERIMETER](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide-perimetro-linea.md): Measure the perimeter of the selected line \(in plan view\).
[MEASURE\_LINE\_XYZ\_PERIMETER](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide-perimetro-linea-xyz.md): Measure the perimeter of the selected line \(in 3D space, including Z\).
[MEASURE\_PERP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide-perp.md): Measure the perpendicular to a selected segment.
[MEASURE\_SEGMENT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide-segmento.md): Measure the selected segment of the selected line \(in plan view\).
[MEASURE\_SEGMENT\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide-segmento-xyz.md): Measure the selected segment of the selected line \(in 3D space, including Z\).
[MEASURE+](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide-mas.md): Calculate horizontal perimeter, spatial perimeter, and area of the polyline defined by a set of vertices.

### Selection

[DESELECT\_ALL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/deselecciona-todo.md): Deselect all selected entities.
[SELECT\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-cod.md): Select all entities having any selected code among their codes.
[SELECT\_INSIDE\_POLYGON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-dentro-poligono.md): Digitize a new polygon and select all entities entirely inside it.
[SELECT\_INSIDE\_WINDOW](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-dentro-ventana.md): Digitize a new window and select all entities entirely inside it.
[SELECT\_PYTHON\_EXPRESSION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona_expresion_python.md): Send geometries matching a Python expression supplied as a parameter or entered in the dialog to the active command.
[SELECT\_OUTSIDE\_POLYGON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-fuera-poligono.md): Digitize a new polygon and select all entities entirely outside it.
[SELECT\_OUTSIDE\_WINDOW](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-fuera-ventana.md): Digitize a new window and select all entities entirely outside it.
[SELECT\_INDEX](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-indice.md): Select an entity by its recording index.
[SELECT\_FLOOD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-inundacion.md): Send entities forming the selected enclosure's boundary to the active command.
[SELECT\_LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-linea.md): Select lines crossing a virtual line you draw.
[SELECT\_MULTIPLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-multiple.md): Select and deselect multiple entities.
[SELECT\_POLYGON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-poligono.md): Digitize a new polygon and select all entities overlapping it.
[SELECT\_ALL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-todo.md): Select every drawing file entity when running commands supporting multiple selection.
[SELECT\_EVERYTHING\_CURSOR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-todo-en-cursor.md): Select all entities intersecting the cursor with one click.
[SELECT\_LAST](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-ultimo.md): Select the last entity recorded in the drawing file when a running command requests entity selection.
[SELECT\_WINDOW](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-ventana.md): Digitize a new window and select all entities overlapping it.

### Virtual keyboards and command execution

[CANCEL\_COMMANDS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/anula-ordenes.md): Stop the current command and any commands it interrupted.
[CANCEL\_REPEAT\_ACTIVE\_COMMAND](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/anula-repite-comando-activo.md): Prevent a repeatable running command from repeating when REPEAT is enabled.
[CHANGE\_KEYS\_MNU](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cambia-teclas-mnu.md): Change the key file.
[ESCAPE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/escape.md): End a command.
[MACRO_INSTRUCTIONS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/macroinstrucciones.md): Run macroinstructions, also called at-sign macros.
[KEY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/tecla.md): Assign Digi3D.AI commands to keystrokes in the active virtual keyboard.

### Other immediate commands

[ADD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/agrega.md): Add point coordinates to the point file defined on the DigiNG startup screen or set with P\_FILE.
[COPY\_COORDINATES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copiar-coordenadas.md): Copy the coordinates of a digitized point to the clipboard.
[CURSOR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cursor.md): Set the cursor size.
[XY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/x/xy.md): Enter coordinates of one or more points.

## Drawing

### Polylines

[CLOSE\_ENT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cierra-ent.md): Close the line being drawn and finish it.
[CONTINUE\_LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/continuar-linea.md): Continue a selected line.
[FIN\_ENT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/fin-ent.md): Finish defining the geometry of an entity.
[LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md): Draw a line in the current file.
[PERP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/perp.md): Draw lines perpendicular to a drawing entity.
[PERP\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/perp-z.md): Draw lines perpendicular to a drawing entity.
[NEXT\_VERTICAL\_SEGMENT\_DOWNWARDS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/siguiente-segmento-vertical-hacia-abajo.md): Configure the active command so the next segment is vertical and has two points.
[NEXT\_VERTICAL\_SEGMENT\_UPWARDS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/siguiente-segmento-vertical-hacia-arriba.md): Configure the active command so the next segment is vertical and has two points.
[TYPE\_OF\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/tipo-de-z.md): Specify how the program records Z coordinates for vertices of linear entities.
[L](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/u.md): Delete the last vertex of the entity being recorded when you run the command.
[U2](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/u2.md): Delete the last drawn segment of a linear entity without moving the cursor.
[MU](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/um.md): Delete the most recent points of the entity being recorded when you run the command.
[XYLINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/x/xylinea.md): Add vertices to the line being digitized.
[XYZLINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/x/xyzlinea.md): Add vertices to the line you are digitizing.

### Arcs, splines, and circles

[ARC](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/arco.md): Draw an arc in space from three specified points.
[TANGENT\_ARC](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/arco-tangente.md): Draw an arc tangent to the previous segment.
[CIR2P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cir2p.md): Draw a circle using its center and a point on it.
[CIR3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cir3d.md): Draw the circle through three given points in the plane they define.
[CIR3P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cir3p.md): Draw a circle using three given points.
[CIRCR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/circr.md): Draw a circle by defining its center and entering its radius numerically.
[MULTIARC](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/multiarco.md): Draw consecutive, connected arcs.
[SPLINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/spline.md): Draw a figure with arcs, converting them into a flowing curve.

### Parallels

[PARALLEL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/paralela.md): Draw lines parallel to one or more entities at a specified distance.
[PARALLEL\_AD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/paralela-da.md): Draw a parallel with parameters from the Active distance variable.
[DYNAMIC\_PARALLEL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/paralela-dinamica.md): Draw a line parallel to an entity at the specified distance, updating its display as the cursor moves.
[DYNAMIC\_PARALLEL\_WITH\_AXIS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/paralela-dinamica-con-eje.md): Draw a dynamic parallel with active codes and an axis between it and the original line, using axis codes supplied as parameters.
[DYNAMIC\_PARALLEL\_WITH\_AXIS\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/paralela-dinamica-con-eje-z.md): Draw a dynamic parallel with active codes and an axis between it and the original line, using axis codes supplied as parameters.
[DYNAMIC\_PARALLEL\_WITH\_AXIS\_ACTIVE\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/paralela-dinamica-con-eje-z-activa.md): Draw a dynamic parallel with active codes and an axis between it and the original line, using axis codes supplied as parameters.
[DYNAMIC\_PARALLEL\_DRAWING\_PLANE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/paralela-dinamica-plano-dibujo.md): Draw a dynamic parallel in the drawing window plane.
[DYNAMIC\_PARALLEL\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/paralela-dinamica-xyz.md): Draw a line parallel to an entity at the specified distance, using the photogrammetric window Z.
[DYNAMIC\_PARALLEL\_FIXED\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/paralela-dinamica-z-fija.md): Draw a line parallel to an entity at the specified distance and Z.
[PARALLEL\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/paralela-z.md): Draw a parallel to an existing line, assigning the digitized point's Z to every generated vertex.

### Shapes, markings, and fills

[2P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/2/2p.md): Draw a square from two points.
[2P\_AA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/2/2p-aa.md): Draw a rotated rectangle.
[3P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/3/3p.md): Draw a rectangular shape.
[ZEBRA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cebra.md): Draw crosswalks.
[ZEBRA\_4P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cebra-4p.md): Draw pedestrian crossings by specifying only the number of white stripes and four points defining shape and position.
[SQUARES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cuadros.md): Draw segments both parallel and perpendicular to the base.
[SQUARES\_4P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cuadros-4p.md): Draw steps or matrices of four-sided polygons.
[AXIS\_TO\_POLYGON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eje-a-poligono.md): Draw a polygon surrounding an existing line.
[LADDER](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/escalera.md): Draw stairs in 3D space.
[LADDER\_AD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/escalera-da.md): Draw stairs in 3D space, specifying the step width.
[HORIZON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/h/horizon.md): Draw horizontal road markings by inserting symbols \(made of horizontal and vertical segments\) and gaps.
[PERP\_TO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/perp-a.md): Draw segments perpendicular to a given entity.
[POINT_WEAVE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/puntear.md): Fill the interior of a closed area entity with a dot pattern.
[SCRATCH](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/rayar.md): Hatch the interior of a closed area entity with parallel lines.
[RECTANGLE\_2P\_NORTH](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/rectangulo-2p-norte.md): Draw a north-oriented rectangle defined by two diagonally opposite points.
[RECTANGLE\_DR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/rectangulo-dr.md): Digitize a rectangle with the specified dimensions and rotate it as needed.
[SIMB](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/simb.md): Fill the interior of a closed area entity with a symbol pattern.
[WEAVE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/tramar.md): Crosshatch the interior of a closed area entity.

### Points

[POINT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/punto.md): Draw a point in the current file.
[POINT\_2P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/punto-2p.md): Draw a point in the current file with its scale and rotation calculated from the second digitized point.
[R\_POINT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/punto-r.md): Insert a point symbol with a specified rotation.
[EXTRACT\_P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/saca-p.md): Place a point beside each text in the drawing file bearing any specified code.

### Polygons and centroids

[CREATE\_POLYGON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-poligono.md): Create a polygon with holes from existing closed lines.
[EXTRACT\_CENTROID](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/extraer-centroide.md): Draw the centroid of a selected polygon or line.
[EXTRACT\_CENTROIDS\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/extraer-centroides-cod.md): Generate a centroid inside polygons or closed lines having any selected code.
[FORM\_POLYGONS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/formar-poligonos.md): Create or modify polygons by flooding and removing shared segments.
[POL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/pol.md): Draw a polygon.

### Text and labels

[1TEXT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/1/1-texto.md): Insert parameter text \(or text entered in the message bar\) once, regardless of REPEAT.
[HEIGHT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cota.md): Digitize a spot elevation.
[DIBUJA\_TEXTO\_EXTRAIDO\_CALLEJERO\_CATASTRO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja-texto-extraido-callejero-catastro.md): Insert text at the clicked point containing the street and property number returned by the Spanish Cadastre coordinate query service.
[DIBUJA\_TEXTO\_EXTRAIDO\_SERVICIO\_MAPAS\_AZURE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja-texto-extraido-servicio-mapas-azure.md): Insert rotated text containing the street name returned by Azure Maps reverse geocoding for the clicked point.
[TAG\_CONTOURS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/rotula-curvas.md): Label one or more contours at once with their elevations.
[TAG\_CADASTRAL\_REFERENCE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/rotula-referencia-catastral.md): Query the Spanish Cadastre web service for the cadastral reference at the insertion coordinates and insert text with that reference.
[TAG\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/rotula-z.md): Label one or more points with their Z coordinates.
[TEXT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto.md): Insert text in the drawing file.
[EDITABLE\_TEXT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-editable.md): Like TEXT, but parameters do not hide the editing control.
[TEXT\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-r.md): Insert text in the drawing in the direction you specify.
[EDITABLE\_TEXT\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-r-editable.md): Like TEXT\_R, but parameters do not hide the editing control.

### Dimensioning

[AUTOMATIC\_HEIGHT\_LABEL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/acota-h-automatica.md): If the active sensor supports it, project a line downward and upward and dimension its intersection with the model.
[AREA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/area.md): Calculate the area of closed graphic entities and place text with the value at the specified position.
[DRAW\_HEIGHT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_altura.md): Insert text with the height difference \(Z coordinate increment\) between two digitized points.
[DRAW\_DISTANCE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia.md): Insert text with the plan distance \(in two dimensions, 2D\) between two digitized points.
[DRAW\_DISTANCE\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia_3d.md): Insert text showing spatial distance \(in three dimensions, 3D\) between two digitized points, including their elevation difference.
[DRAW\_PERIMETER](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_perimetro.md): Calculate the perimeter \(length\) of a selected drawing entity and place text with this value at the specified position.
[DRAW\_PERIMETER\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_perimetro_3d.md): Calculate the selected graphic entity 3D perimeter \(spatial length including elevation changes\) and place text with the value at the specified position.
[PUT\_HEIGHT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/pone-altura.md): Place text with the height difference between two recorded points.
[PUT\_DISTANCE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/pone-distancia.md): Place text with the distance between two points.
[PUT\_XY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/poner-xy.md): Place two numeric text entities with the X,Y coordinates of the selected point.

### Interpolation

[DENSIFICA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/densifica.md): Insert vertices into lines and polygons with the specified codes so no segment exceeds a distance.
[INTER](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/inter.md): Interpolate contours.
[INTER\_AXIS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/inter-eje.md): Interpolate an entity between two selected entities.
[INTERPOLATE\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/interpolar-cod.md): Interpolate contours using four points, with entities of a specified code as guide lines.

### Complex entities and blocks

[BLOCK](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bloque.md): Store an entity or set of entities in a new file for later insertion into any drawing.
[BLOCK\_2P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bloque-2p.md): Store an entity or set of entities in a new file for later insertion into any drawing.
[CREATE\_COMPLEX](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-complejo.md): Create complex elements from multiple entities.
[CREATE\_COMPLEXES\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-complejos-cod.md): Create complex elements by grouping entities with the same code.
[INS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins.md): Insert a drawing file into the working file.
[INS\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-3d.md): Insert a 3D block using three points: the first sets its position, the second its orientation, and the third its rotation.
[INS\_AA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-aa.md): Insert a drawing file into the working file, rotated by the active angle.
[INS\_COMPLEX](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-complejo.md): Insert the contents of a drawing file as a single point-based complex element.
[INSR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/insr.md): Insert a block stored in a drawing file at a specified position in the current working file.

### Sheet index

[SHEET](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/h/hoja.md): Create a drawing file with a sheet frame at a specified scale, regularly spaced grid marks, and coordinate labels.
[TRIM\_TRACE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/recorta-traza.md): Create a series of sheets in the same way as SHEET.
[TRACE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/traza.md): Create a sheet index along a trace with centroids, for subsequent sheet creation with TRIM\_TRACE.

### Images

[INS\_PHOTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-foto.md): Insert an image with two points: the first sets its center; the second sets rotation and scale.
[INS\_PHOTO\_2P\_AA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-foto-2p-aa.md): Insert an image with two points and the active angle.
[INS\_PHOTO\_3P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-foto-3p.md): Insert an image into the drawing file using three points.

## DTM

[CREAR\_TRAMOS\_PARA\_UNIR\_CURVAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-tramos-para-unir-curvas.md): Create two-vertex lines joining nearby, unconnected contour line endpoints at the same elevation.
[CREATE\_DEM](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crea-dem.md): Generate a new triangulation from existing mapping inside the selected boundary, project a regular grid of points onto it, and save the results to a LAS file, a GeoTIFF file, or both.
[CURVE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/curvar.md): Generate contours from a triangulation.
[ELIMINA\_CURVAS\_POR\_EQUIDISTANCIA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/elimina-curvas-por-equidistancia.md): Delete contour lines with the specified codes whose Z coordinate is a multiple of the contour interval.
[FILTRAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/filtrar.md): Delete contours not matching an interval and assign index or intermediate contour codes to the rest according to Z.
[DTM\_MOVES\_DIGI3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mdt-mueve-digi3d.md): Set whether loaded digital terrain models change the Digi3D Z coordinate.
[MOVE\_Z\_W](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mover-z-v.md): Change the elevation of entities inside a closed entity.
[PROJECT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta.md): Project selected geometries onto loaded digital terrain models.
[PROJECT\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-cod.md): Project entities onto the digital terrain model (DTM) loaded when the command runs.
[PROJECT\_COD\_TAG](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-cod-etiqueta.md): Project all entities with a specified code onto loaded DTMs bearing the specified tag.
[PROJECT\_BY\_CONDITION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-por-condicion.md): Project vertices of entities bearing a specified code onto loaded DTMs if their Z difference satisfies a condition.
[PROJECT\_TOPOLOGY\_POINTS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-puntos-topologia.md): Project entities forming a topology's enclosures onto loaded DTMs.
[REDONDEA\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/redondea-z.md): Round every vertex Z coordinate of contours bearing the specified codes to an integer.
[TRIANGULATE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/triangular.md): Calculate a digital terrain model \(DTM\) triangulation from geometries in the drawing window.
[TRIANGULATE\_LINES\_EXCEPT\_POINTS\_WITH\_CODE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/triangular-lineas-excepto-puntos-con-codigo.md): Calculate a triangulation excluding nodes reached by lines with specified codes.
[TRIANGULATE\_TOPOLOGY\_POINTS\_EXCEPT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/triangular-puntos-topologia-excepto.md): Calculate a triangulation from a topology's lines, excluding lines bearing specified codes.

## Orthophoto and raster

[MERGE_RASTER](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/acoplar.md): Generate a TIFF file showing, with their symbology, the entities from visible drawing files that fall within a rectangular boundary line.
[CAL\_ORTHO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cal-orto.md): Compute orthophotographs.

## Geometric analysis

[GROUP\_TOGETHER\_DUPLICATE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/agrupar-entidades-duplicadas.md): Group all duplicate entities into a single entity per code.
[GROUPS\_TOGETHER\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/agrupar-entidades-visibles-duplicadas.md): Group all visible duplicate entities into a single entity.
[ADJUST\_DRAWING\_FILE\_LIMITS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/ajusta-limites-archivos-dibujo.md): Group and insert vertices by tolerance on shared model boundary lines, moving entity vertices coinciding with modified boundary vertices.
[ASSIGN\_MAX\_Z\_NODE\_VERTICES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-z-maxima-vertices-nodo.md): Find all vertices reaching a node and set their Z to the maximum Z.
[ASSIGN\_MAX\_Z\_NODE\_VERTICES\_TOL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-z-maxima-vertices-nodo-tol.md): Find all vertices reaching a node and set their Z to the maximum if they differ from it by less than the tolerance.
[COMPARE\_Z\_DTM](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/comparar-z-mdt.md): Compare entity vertex Z with the loaded digital terrain model Z, adding entities exceeding a difference tolerance to the Tasks pane.
[UNGROUP\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/desagrupar-entidades.md): Ungroup entities with more than one code into multiple entities with a single code each.
[DETECT\_LOOPS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-bucles.md): Detect loops \(self-intersections\) in Line and Polygon entities.
[DETECT\_LOOPS\_VISIBLE\_LINES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-bucles-lineas-visibles.md): Detect loops in visible lines.
[DETECT\_LINE\_CROSSING](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-cruce-lineas.md): Create an error task for each detected line intersection, by code.
[DETECT\_VISIBLE\_LINES\_CROSSING](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-cruce-lineas-visibles.md): Create an error task for each detected intersection of visible lines.
[DETECT\_LINE\_CROSSING\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-cruce-lineas-z.md): Detect line crossings and flag those whose Z difference exceeds a tolerance.
[DETECT\_DUPLICATES\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-entidades-duplicadas.md): Detect duplicate entities by code.
[DETECT\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-entidades-visibles-duplicadas.md): Detect all visible duplicate entities.
[DETECT\_BBDD\_ATTRIBUTE\_ERRORS\_CASES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-errores-atributos-bbdd-cases.md): Detect lines and polygons in two different drawing files with geometric continuity but differing database attributes.
[DETECT\_LINE\_CONTINUITY\_ERRORS\_CASES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-errores-continuidad-lineas-cases.md): Detect continuity errors where lines end at the boundary between two models without continuing into the next.
[DETECT\_INTERSECTION\_DIRECTION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-interseccion-sentido.md): Detect lines and polygons meeting at a node with incompatible digitizing directions.
[DETECT\_NO\_CONNECTED\_LINES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar_lineas_no_conectadas.md): Create an error task for each line endpoint not connected by code to another entity.
[DETECT\_NO\_CONNECTED\_LINES\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-lineas-no-conectadas-3d.md): Create an error task for each line endpoint not connected by code in 3D.
[DETECT\_NO\_CONNECTED\_VISIBLE\_LINES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-lineas-visibles-no-conectadas.md): Create an error task for each unconnected end of a visible line.
[DETECT\_NO\_CONNECTED\_VISIBLE\_LINES\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-lineas-visibles-no-conectadas-3d.md): Create an error task for each end of a visible line that is not connected in 3D.
[DETECT\_SHORT\_SEGMENTS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-segmentos-cortos.md): Detect lines and polygons with segments shorter than the specified value.
[DETECT\_ZIGZAG](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-zigzag.md): Analyze lines for zigzags at their vertices.
[DELETE\_CODES\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-codigos-entidades-visibles-duplicadas.md): Remove common codes from all visible duplicate entities.
[DELETE\_DUPLICATE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-entidades-duplicadas.md): Remove duplicate entities by code, retaining only the one whose code appears earlier in the command line.
[DELETE\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-entidades-visibles-duplicadas.md): Delete visible duplicate entities, retaining only the one with a code appearing earlier in the code table.
[REMOVE\_DUPLICATE\_POINTS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-puntos-dobles.md): Remove duplicate points from active drawing file entities.
[REMOVE\_SHORT\_SEGMENTS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-segmentos-cortos.md): Automatically remove geometry vertices to avoid segments shorter than a specified value.
[DELETE\_ALL\_DUPLICATE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-todas-entidades-duplicadas.md): Delete all duplicate entities, by code.
[DELETE\_ALL\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-todas-entidades-visibles-duplicadas.md): Delete all visible duplicate entities.
[INSERT\_VERTEX\_INTERSECTION\_LINE\_POINT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/insertar-vertice-interseccion-linea-punto.md): Insert a vertex at intersections of lines with points.
[INSERT\_VERTEX\_LINES\_INTERSECCION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/insertar-vertice-interseccion-lineas.md): Insert a vertex at intersections of lines with the codes supplied as parameters.
[INSERT\_VERTEX\_INTERSECTION\_VISIBLE\_LINES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/insertar-vertice-interseccion-lineas-visibles.md): Insert a vertex at intersections of lines visible in the orthogonal view.
[JOIN\_NEARBY\_VERTICES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/j/juntar-vertices-cercanos.md): Join nearby vertices within a tolerance.
[SPIT\_LINES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/partir-lineas.md): Split lines at their intersections, by code.
[SPLIT\_VISIBLES\_LINES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/partir-lineas-visibles.md): Split visible entities at their intersections.
[JOIN\_LINES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/unir-lineas.md): Join visible lines sharing any specified code.
[JOIN\_LINES\_TABLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/unir-lineas-tabla.md): Join lines on screen by code when they have the same code and geometric continuity, provided no more than two entities with that code meet at the node.
[JOIN\_VISIBLE\_LINES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/unir-lineas-visibles.md): Join visible lines that have the same code and geometric continuity.
[JOIN\_VISIBLE\_LINE\_TABLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/unir-lineas-visibles-tabla.md): Join visible lines with the same code and geometric continuity, provided no more than two entities with that code meet at the node.
[JOIN\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/unir-xyz.md): Join lines bearing codes specified as parameters when they have the same Z at the joining node.
[JOIN\_XYZ\_TABLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/unir-xyz-tabla.md): Join lines bearing codes specified as parameters when they have the same Z at the joining node and only two entities meet there.

## Quality control

[QUALITY\_CONTROL\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/control-calidad-cod.md): Perform quality control analysis by code.
[QUALITY\_CONTROL\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/control-calidad-entidades-visibles.md): Run quality checks on visible entities.
[QUALITY\_CONTROL\_SELECTION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/control-calidad-seleccion.md): Run quality checks on selected entities.

## Flooding

[ADD\_ACTIVE\_CODES\_AND\_CENTROID](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/anade-codigos-activos-y-centroide.md): Add active codes to entities forming the boundary of selected enclosures in the temporary topology, optionally inserting a centroid.
[SEARCH\_CENTROID\_F](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/buscar-centroide-i.md): Find the centroid of the topological polygon being worked on, by flooding.
[UNLOAD\_FLOOD\_TOPOLOGY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/descargar-topologia-inundacion.md): Remove the flooding topology from memory.
[DRAW\_E\_F](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja-r-i.md): Draw topological enclosures by flooding.
[EDIT\_CODES\_E](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-codigos-r.md): Edit codes of entities forming the selected topological enclosure.
[GENERATE\_FLOOD\_TOPOLOGY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion.md): Generate a topology for subsequent flooding commands.
[GENERATE\_FLOOD\_TOPOLOGY\_WITHOUT\_ISLANDS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion-sin-islas.md): Generate a topology for subsequent flooding commands.
[SHOW\_COD\_F](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mostrar-cod-i.md): Display all codes of the segments forming a topological enclosure by flooding.
[PUT\_ATR\_E](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/poner-atr-r.md): Add the active codes to entities forming the boundaries of enclosures selected in the temporary topology.

## Topology

[ADD\_CODES\_TOPOLOGY\_POLYGON\_BORDERS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/anadir-codigos-bordes-poligonos-topologia.md): Add active codes to polygon boundary lines with a specified centroid in a specified topology.
[ASSIGN\_CENTROID\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-z-centroide.md): Assign the centroid Z coordinate to the lines forming each polygon in the specified topologies.
[BINTOP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bintop.md): Calculate the active drawing file topology and find polygon and centroid formation errors.
[BINTRAM](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bintram.md): Automate drawing file editing.
[DELETE\_COD\_E](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-cod-r.md): Delete a code (attribute) from entities forming the boundaries of selected enclosures in the temporary topology.
[DELETE\_ENCLOSURE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-r.md): Delete codes by topological enclosure.
[SEARCH\_CENTROID](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/buscar-centroide.md): Locate the centroid inside an enclosure after loading one or more topologies.
[CHNG\_COD\_E](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-cod-r.md): Change codes by topological enclosure.
[CHANGE\_CODE\_LINES\_INSIDE\_TOPOLOGY\_POLYGONS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cambia-codigo-lineas-dentro-poligonos-topologia.md): Change codes of line portions inside topology polygons.
[TOPOLOGICAL\_CONTROL\_CASES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/control-topologico-cases.md): Detect neighboring polygons with different centroids across drawing files.
[COPY\_CENTROID\_F](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copiar-centroide-i.md): Copy an enclosure centroid from the temporary topology into other enclosures without centroids.
[CREATE\_CENTROIDS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-centroides.md): Create centroids for polygons in loaded topologies.
[CREATE\_TOPOLOGIES\_VISIBLE\_CODES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-topologias-codigos-visibles.md): Create topologies from codes visible in the drawing window.
[LEAVE\_TOP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dejar-top.md): Unload a currently loaded topology file generated with BINTOP.
[DETECT\_POLYGONS\_WITHOUT\_CENTROID\_LOADED\_TOPOLOGIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-poligonos-sin-centroide-topologias-cargadas.md): Flag polygons without centroids when forming a topology from all enclosures of loaded topologies.
[DETECT\_POLYGONS\_ONE\_TOPOLOGY\_INSIDE\_POLYGONS\_OTHER\_TOPOLOGY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-poligonos-una-topologia-dentro-poligonos-otra-topologia.md): Flag topology polygons inside polygons of any selected topology.
[DETECT\_NEIGHBOR\_POLYGONS\_SAME\_CENTROID](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-poligonos-vecinos-mismo-centroide.md): Flag adjacent polygons with the same centroid.
[DETECT\_ENCLOSURES\_WITHOUT\_NEIGHBORS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-recintos-sin-vecinos.md): Analyze enclosures in all loaded topologies and flag segments belonging to only one enclosure, excluding those with any specified boundary code.
[DETECT\_OVERLAPS\_ALL\_LOADED\_TOPOLOGIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-solapes-todas-las-topologias-cargadas.md): Flag overlaps between polygons of all loaded topologies.
[DETECT\_TOPOLOGY\_OVERLAPS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-solapes-topologias.md): Flag overlaps between one topology and topologies selected from the loaded topology list.
[DRAW\_E](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja-r.md): Draw topological enclosures from a loaded topology.
[REMOVE\_3D\_POLYGON\_WALLS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-muros-poligonos-3d.md): Analyze polygons created from 3D topologies and remove walls exceeding a specified height.
[ERR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/err.md): Display errors found by BINTRAM in the file loaded as a reference.
[ERR-](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/err-menos.md): Go back to the preceding BINTRAM error.
[ERR+](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/err-mas.md): Advance to the next BINTRAM error.
[EXPORT\_TOPOLOGY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar-topologia.md): Export selected loaded topologies to a file as polygons.
[GENERALIZE\_TOPOLOGY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generalizar-topologia.md): Remove centroids and lines to merge adjacent polygons sharing a centroid in the topology supplied as a parameter.
[PUT\_COD\_ENCLOSURE\_CENTROID](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/poner-cod-recinto-centroide.md): Add the enclosure code to entities forming the boundaries of selected topological enclosures and insert text with the centroid code at the enclosure centroid.
[RENAMCOD\_E](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renomcod-r.md): Rename codes by topological enclosure.
[TOPOLOGY\_FROM\_POLYGON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/topologia-a-poligono.md): Generate polygons from the topology specified as a parameter.
[SEE\_TOPOLOGIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/ver-topologias.md): Show or hide a topology and change its drawing order.

## Database

[ADD\_ACTIVE\_ATTRIBUTE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/anade_atributo_activo.md): Add an attribute to the Active attributes pane.
[ASSIGN\_ATTRIBUTE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asigna-atributo.md): Assign a value to an attribute in the active attribute list in the database dockable pane.
[ASSIGN\_FIELD\_VALUE\_BBDD\_ENTITY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asigna-atributo-bbdd-entidad.md): Assign a new database field value for an entity.
[ASSIGN\_ANGLE\_ATTRIBUTE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-angulo-atributo.md): Digitize two points and assign the trigonometric angle of the second relative to the first to the database field supplied as a parameter.
[ASSIGN\_AZIMUTH\_ATTRIBUTE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-azimut-atributo.md): Digitize two points and assign their azimuth to the database field supplied as a parameter.
[ASSIGN\_DISTANCE\_ATTRIBUTE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-distancia-atributo.md): Digitize two points and assign their distance to the database field supplied as a parameter.
[BORRA\_ATR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-atr.md): Remove database links from all entities in the drawing window.
[CHANGE\_DDBB\_VALUES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cambiar-valores-bbdd.md): Change database values associated with the drawing file.
[COPY\_BBDD\_ENTITY\_ATTRIBUTE\_TO\_ENTITY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copia-atributo-bbdd-entidad-en-entidad.md): Copy a database field value from one entity to a field of another entity.
[CREATE\_BBDD\_VIEW](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-vista-bbdd.md): Create a virtual drawing file displaying database fields from a specified drawing file.
[DELETE\_ACTIVE\_ATTRIBUTES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/elimina_atributos_activos.md): Remove all attributes from the Active attributes pane.
[RESET\_BBDD\_ATTRIBUTES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/resetea-atributos-bbdd.md): Set the code table's database attributes for a code as the active attributes.
[SELECT\_BBDD\_EDITOR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-editor-bbdd.md): Select drawing entities linked to the records selected in a database editor.
[SELECT\_GEOMETRY\_BBDD\_PANEL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-geometria-panel-bbdd.md): Select the corresponding entity in database editor panes for the selected drawing entity.
[SELECT\_BY\_ATTRIBUTE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-por-atributo.md): Send a selection by database attributes to the active command.
[SQL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/sql.md): Run the SQL queries in the file passed as a parameter.

## Windows, tasks, and results

[DELETE\_OUTPUT\_BAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-barra-salida.md): Clear the contents of the output bar.
[DELETE\_TASKS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borrar-tareas.md): Delete the tasks currently displayed in the tasks window.
[LOAD\_LAYOUT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/carga-disposicion.md): Load a previously saved window and display layout in DigiNG.
[LOAD\_TASKS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cargar-tareas.md): Load a task file previously generated with SAVE\_TASKS into the Tasks window.
[LOAD\_TASKS\_FILE\_FORMAT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cargar-tareas-fichero-formato.md): Load a text file in any format containing point coordinates.
[CREA\_TAREAS\_CON\_AREAS\_INFERIOR\_A\_VALOR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crea-tareas-con-areas-inferior-a-valor.md): Add a task to the [Tasks pane](/digi3d-ai/referencia/paneles/tareas.md) for each polygon or line closed in plan whose absolute area is below the specified value.
[SAVES\_LAYOUT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/guarda-disposicion.md): Save the window and display layout of the DigiNG drawing file.
[SAVE\_RESULTS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/guardar_resultados.md): Save the contents of the results panel to a TXT file.
[SAVE\_TASKS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/guardar-tareas.md): Save the tasks in the Tasks pane to an XML file.
[LOCATE\_TASK](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/localizar-tarea.md): Digitize a point and locate and select the task there, if any.
[MENU](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/menu.md): Launch a numbered Digi3D user menu.
[TAREA-](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/tarea-menos.md): Move to the coordinates of each task currently displayed in the tasks window, in descending order.
[TAREA+](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/tarea-mas.md): Move to the coordinates of each task currently displayed in the tasks window, in ascending order.

## Configuration, devices, and variables

[DIGI3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/digi3d.md): Link the **DigiNG** cursor to **Digi3D** movements.
[INPUT\_DEVICE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dispositivo-entrada.md): Set the drawing window input device (for example, a GPS), disabling the mouse.
[LIMIT\_0](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/limite-0.md): Deactivate a working area defined by LMIT\_1.
[LMIT\_1](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/limite-1.md): Set a working area bounded by the geometry of a line.
[N](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/n/n.md): Activate the ASCII file specified on the DigiNG startup screen or with P\_FILE as the input device.
[SAVE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/salvar.md): Set the interval, in minutes, between automatic backups of the active drawing file.

## Programming and macros

[LOAD\_ASSEMBLY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/carga-ensamblado.md): Load the assembly passed as a parameter.
[RUN\_COMMAND\_PASSING\_LAST\_GEOMETRY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/ejecuta-orden-pasandole-ultima-geometria.md): Allow macroinstructions and key command assignments to run a command that waits for a geometry selection.
[ORDEN\_ATOMICA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/orden-atomica.md): Run the commands passed as parameters as atomic commands.
[PROGRAM](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/programa.md): Run an external application or open a file with its associated application.
[PROHIBIT\_COMMAND](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/prohibe-orden.md): Prevent the command specified as a parameter from running.
[PYTHON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/python.md): Run a Python script, optionally passing arguments to it.

## Help

[HELP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/ayuda.md): Open Digi3D.AI help.
[SHOW\_HELP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/muestra-ayuda.md): Display an HTML document in the application help panel.
