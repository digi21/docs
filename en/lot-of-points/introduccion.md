# Introduction
<!-- id: lot-of-points-introduccion -->
<!-- origen: 42f8f84148523afdf14697a2e1e81eda0f74e70e -->

A point cloud represents an object or terrain through its three-dimensional coordinates. Lot Of Points lets you explore that representation, measure it, draw geometries and correct point classifications. You can work with several clouds at once: they all appear in the same view, each with its own entry in the **Layers** panel.

## Open a cloud

Click **Open point clouds or vector layers** in the **Layers** panel and choose the files to work with. Lot Of Points supports these formats:

| Format | Extension | Contents |
|---|---|---|
| LAS (point cloud interchange format) | `.las` | Point cloud. |
| LAZ (compressed LAS) | `.laz` | Point cloud in compressed LAS format. |
| E57 | `.e57` | Point cloud, which can include spherical images. |
| PTX (gridded scans) | `.ptx` | Point cloud, which can have JPEG images (*Joint Photographic Experts Group*, JPG extension) associated with its scans. |
| PTS (text points) | `.pts` | Point cloud. |
| PCD (*Point Cloud Data*) | `.pcd` | Point cloud. |
| GeoPackage | `.gpkg` | Vector layers, one per table. |
| GeoTIFF (georeferenced TIFF, *Tagged Image File Format*) | `.tif`, `.tiff` | Orthophoto. |
| Object models (OBJ) | `.obj` | Triangle model with textures or diffuse colors. |

If the local cloud has no valid cache, Lot Of Points prepares its **level of detail**, or LOD, when opening it. This point organization allows loading only the points currently needed by the view, without keeping the whole cloud in memory. The result is cached and reused on subsequent openings.

In **Layers**, each cloud's checkbox shows or hides it. Hover over its row to see the source path or uniform resource locator (URL), the level-of-detail point count and its coordinate bounds. GeoPackage files appear in the same panel, with their layers inside.

## Load folders

Drag files or folders from Explorer to **Layers**. The program groups each folder's orthophotos, GeoPackages and models by filename order, without traversing subfolders. Point clouds and individually dropped files appear at the panel root. Files with unsupported extensions are ignored.

A folder's checkbox shows or hides its items. Removing a folder removes its items from the panel and viewer. A folder with no loaded items disappears from the panel.

## Load orthophotos

Open GeoTIFF orthophotos (`.tif` or `.tiff`) from **Layers**, by dragging them to the panel or from the command line. Each orthophoto's **Layers** row shows its image size in pixels, a visibility checkbox and a cross to remove it. GeoTIFF embeds georeferencing in the image.

The viewer places the image using the `ModelTransformationTag` matrix, which supports vertical planes, or using `ModelPixelScaleTag` and `ModelTiepointTag`. In the latter case, the image is placed at the tie point's elevation. The program assumes the orthophoto uses the cloud's reference system: it does not read `.tfw` files or the `GeoKeyDirectory` tag, or apply the half-pixel offset of `RasterPixelIsPoint`.

If the image has an alpha channel, the viewer uses its transparency. Otherwise it uses the numeric value of `GDAL_NODATA`, or 0 if no numeric value is obtained. When this value is an integer from 0 to 255 inclusive, the viewer makes pixels transparent when all three color channels match it.

The viewer retains orthophotos when adding or removing clouds and removes them when closing the document. `.lopview` scenes do not save orthophotos or GeoPackage layers.

## Load models

Open `.obj` models from **Layers**, by dragging them to the panel or inside a folder, or from the command line. Each model's **Layers** row shows a visibility checkbox and the triangle count. The viewer draws models when clouds are open and retains models when adding or removing clouds, until they are removed or the document is closed.

The reader supports vertices (`v`), texture coordinates (`vt`), faces (`f`) and materials (`mtllib` and `usemtl`). It splits polygonal faces into triangles and uses the `map_Kd` texture or, if absent, the material's diffuse color `Kd`. The viewer draws both sides of each triangle. For textured materials, texture pixels with alpha below 0.5 are not drawn. Material and texture filenames are looked up in Unicode 8-bit encoding (UTF-8) and Windows-1252.

The model origin comes from the last valid `# origen X Y Z` comment in the file. If absent, the reader uses the first noncomment line containing three numbers in `<nombre>_origen.txt`. If neither source provides an origin, it uses `(0, 0, 0)`.

## Cloud reference systems

Before opening clouds, Lot Of Points reads the reference system written in WKT (*Well-Known Text*) in the level-of-detail `.prj` file: in the local cache or alongside the remote cloud's published data. If a remote cloud has no published `.prj`, the program checks the choice saved on the computer. It accepts a valid WKT or one with a local horizontal component; the latter identifies an unknown system.

If a local cloud's cache does not provide an accepted system, the program looks in the original:

| Format | Reference system source |
|---|---|
| LAS or LAZ | WKT in record 2112; if invalid, WKT obtained from GeoTIFF keys. |
| E57 | WKT from `coordinateMetadata` or a system identified by its EPSG (*European Petroleum Survey Group*) code. |
| PTX, PTS or PCD | A `.prj` beside the original, with the same name and only the last extension replaced. |

The program copies the obtained system to the cache's `.prj`. Files beside the original are read only for local PTX, PTS and PCD. The reader supports WKT version 2 from 2019 (WKT2:2019) with datum ensembles (`ENSEMBLE`) and compound systems containing horizontal and vertical components.

If no source provides an accepted system, the program asks for a choice for those clouds and preselects the document's system, if present. The picker allows declaring the system unknown, even when opened with another system preselected. The choice is saved in the local `.prj` or in a file on the computer for a remote cloud. **Cancel** leaves the clouds requiring a choice without an assigned system for the session; the program asks again when reopening them. A `.prj` declaring an unknown system is reused without asking.

The document's system is that of the first **Layers** cloud with a known, nonlocal system. Lot Of Points rejects new clouds whose known, nonlocal system is not equivalent to the document's and displays a notice with one line per cloud. The horizontal components of the new cloud's and document's systems must be equivalent; vertical components are compared only if both systems have one.

Layer information shows **Reference system** with the known system's name or **Unknown**. For an unknown cloud system, the program uses the document's system during the session and shows it in parentheses when available. If the system query fails, the program reports the error in the status bar and continues opening. When applying a startup scene from the command line, it does not ask the user for a system.

## Explore and display points

The **Visualization** tab contains tools to navigate the cloud and change its display. **Move camera** moves the view using a cloud point; **Orbit** rotates around the point you specify, and **Rotate camera** changes the viewing direction. **Zoom extension** frames the visible set or, if a region is isolated, that region.

You can also navigate with mouse buttons. By default, dragging with the left button orbits, the middle button rotates the camera, and the right button moves the view. The wheel moves the camera closer or farther away, and a left double-click moves it toward the indicated point or sphere. These actions can be changed on the **Mouse** page of **Settings**, accessible through the title bar gear.

A 3Dconnexion 3D mouse can also move and rotate the camera.

Press **Esc** to remove focus from the ribbon tab strip.

Point display helps interpret the cloud. **Points color** offers original red, green and blue (RGB) color, classification, elevation, intensity, return number or a color per cloud. **Point size** and **Point shape** adjust appearance. In **Classifications**, you can show or hide classes and change their names and colors.

Save a framing you want to return to with **Save the current view** in **Views**. Each view retains the camera position and orientation to recover that framing later.

Use **Save view** to save the open clouds and display settings as well. This creates a `.lopview` scene file, which you can restore with **Open view**.

## View background

Select **Sky** in the **Background** group of **Visualization** to use one of 28 skies. The drop-down groups skies by category with unselectable headings. The catalog contains 15 low-sun and 13 high-sun skies. The background color picker is in **Background** and stays disabled while a sky is selected. Select **None** in **Sky** to enable it.

The program downloads the six images forming the sky's cube background when they are absent from `%LOCALAPPDATA%\lop\Skyboxes` and reuses the saved files when loading the same sky again. If downloading fails, the viewer shows the background color and reports the error in the status bar. The sky stays selected and the color picker remains disabled until **None** is selected. If a face cannot be decoded, the viewer shows the background color.

The program retains the sky between documents and retries loading the saved sky at startup. `.lopview` scenes save the selected sky; opening a scene without that information retains the current sky.

## Open maps at the indicated point

The **Map** group in **Visualization** contains **Google Maps**. Clicking its arrow opens a menu with **Google Street View**, **Bing Maps**, **OpenStreetMap** and **SIGPAC** (Spain's geographic information system for agricultural parcels). The button and entries are enabled only if the document has a known, nonlocal reference system.

1. Click **Google Maps**, or click its arrow and choose another service.
2. Indicate and confirm a cloud point.

The program converts the point to latitude and longitude in degrees in the World Geodetic System 1984 (WGS 84) and opens the position in the default browser. **Bing Maps** uses the aerial view. Coordinates in the URLs use six decimal places and a decimal point. If transformation fails, the status bar shows the system name and reason.

## View spherical images

Spherical images let you look at the surroundings from a photograph's capture position. **Spheres** shows images associated with open clouds, and **View spheres**, on **Visualization**, displays their positions in the view. With default mouse settings, a left double-click on a sphere enters its image. You can also use **Go to the nearest photo on this side** and indicate a cloud point: the program finds the closest capture to that point among those on the same side as the camera.

Inside the image you can rotate the view and zoom with the wheel. To return to the cloud, press **Esc** or **Exit** above the view.

E57 files can contain spherical panoramas or captures made of six cube faces (*cubemaps*), with JPEG or PNG (*Portable Network Graphics*) images. For PTX, photographs are read from JPG files beside the point file: `<nombre>.jpg` for one scan, or `<nombre>.0000.jpg`, `<nombre>.0001.jpg`, etc. for several. LAS, LAZ, PTS and PCD do not supply spherical images.

## Measure and draw

The **Drawing** tab measures distances, heights, azimuths and angles by indicating cloud points. For example, **Draw distance** requests two points and creates a measurement with the three-dimensional distance, plan distance and height difference. **Copy coordinates** copies a point's coordinates to the clipboard.

Drawing points and lines requires a compatible vector layer. Open an existing GeoPackage or create one with **New layer from a schema** in **Layers**. The schema defines tables and their fields; when choosing a table for drawing, **Attributes to digitize** sets the values accompanying new geometries. **Geometries** shows the geometries in the selected table.

Measurement and new-layer GeoPackages declare the document's reference system. If the program can create the file's system from an EPSG code, it uses that code and a WKT version 1 definition. For other systems, the file uses the document definition with `srs_id = 100000`. If the document has no system, the file declares an unknown Cartesian system with `srs_id = -1`.

### Schema values

The schema editor saves each allowed value's stored value and each field's initial value or macro. Numeric and Boolean schema values are stored as text.

The **+** button in the possible-values list creates `value` as the stored value and label. If it already exists in the field, it creates the first available among `value 2`, `value 3` and subsequent values. **Save** checks all schemas before writing files. If a field repeats a stored value, the editor saves no schemas and does not change the active schema. The message beside **Save** identifies the schema, table, field and duplicate value.

Layer creation also rejects duplicate stored values in a field, including in manually edited schemas. The program reports the error in the status bar and attempts to delete the incomplete GeoPackage.

## Edit a cloud

Begin editing by delimiting the work area. **Selection tools** offers five tools: **Sphere**, **Polyline**, **Box**, **Plumbed box** and **Cylinder selection**. Completing a region selection displays **Actions**. **Delete** records deletion of points in the selected region; **Classify** assigns a class to those points, and **Restore** recovers deleted points in the region. Extension commands can also leave a point selection: it supports **Delete**, **Classify** and **Isolate**; **Restore** requires a region.

Selection radii, depths and margins use cloud units. The distance between the camera and selected point uses cloud units. Keyboard movement and SpaceMouse translation speeds also use the cloud's length unit: feet if the cloud uses feet.

**Isolate** limits the view to the region or selected points. The program activates the contextual **Isolated view** tab within **Isolation tools**. Click **Show everything** there to show the hidden points again. Subsequent edits are limited to the isolated region or points.

The program saves local changes in `<nube>.edits.log` beside the original, including its extension: for example, `terreno.las.edits.log`. When an edit uses a per-point table, Lot Of Points saves `<nube>.edits.<identificador>.table` beside the log. The original retains its contents.

The title bar contains **Undo**, **Redo** and **History**, to the left of **Settings**. **Undo** and **Redo** are disabled when no edit can be undone or redone. **History** shows “No edits recorded yet.” if there are no events. If an edit assigns a class absent from **Classifications**, that class is added to the panel.

Click **Export edited** to obtain a LAS file with changes to a local cloud. Export reads the original file; remote clouds are excluded from its options.

[Tile-based commands](algoritmos/README.md) can also change classes and delete points. Each chooses which clouds to process and can include hidden ones. During `process_tiles`, the user cannot close reserved clouds, but can open others and close unreserved clouds. Built-in command buttons requiring a document are disabled when no cloud is open.

## Open clouds published on Azure

[Lot Of Points Studio](../lot-of-points-studio/README.md) prepares and publishes point clouds and spherical images on Azure. To open them in Lot Of Points, click **Add remote point clouds (Azure)** in **Layers** and enter the catalog path or URL: a `.json` file listing published clouds.

These clouds are streamed: the viewer requests level-of-detail nodes as needed, without downloading the whole cloud first. Image thumbnails are downloaded when opening the catalog; each original photograph is retrieved when entering it.

Remote clouds support local edits when they have an edit log and original indices for every point. Lot Of Points saves these logs in `%AppData%\edits\<nube>_<huella>\cloud.edits.log` and tables in `cloud.edits.<identificador>.table` in the same folder. The folder depends on the cloud URL without its authorization query; renewing access authorization does not change the edit folder. Local edits do not modify data published on Azure.

Tile-based commands can choose remote clouds. Read-only mode requires neither an edit log nor original indices. To regenerate the level of detail of a remote cloud lacking indices, prepare and publish it again with Studio.

## Automate tasks

The [Python](programacion/python/README.md) panel lets you write and run scripts inside the program. With `lop`, you can query and modify viewer properties, work with selections and edits, or launch commands by identifier. To add commands requesting points, selecting points or processing tiles, see the [C and C++ software development kit (SDK)](programacion/c-cpp/README.md) or [Python commands](programacion/python/referencia.md#python-commands).

## Level of detail

Each local file's cache is stored in a subfolder of `%TEMP%\LOP\LiDAR`. Its name includes the file modification date and the level-of-detail format version. If the file changes, the program creates a new cache next time you open it.

| Cache file | Contents |
|---|---|
| `<nombre>.index` | Header and node tree (*octree*). |
| `<nombre>.index.points` | Points in each node. |
| `<nombre>.index.atributos` | Each point's original record number and, for LAS and LAZ, additional attributes such as Global Positioning System time (GPS, `gps_time`) and the flight line identifier (`point_source_id`). |
| `<nombre>.prj` | Cloud reference system in WKT. |

Exact duplicate points are discarded when creating the level of detail, so the count can be smaller than the original header's count.

Commands modifying points by tiles need the original indices in `.index.atributos`. Read-only commands can work without them. If a local cloud lacks this file, close it, delete only its subfolder in `%TEMP%\LOP\LiDAR` and reopen the original to regenerate the level of detail.

## Close the program

When closing Lot Of Points with extension command threads running, the program requests cancellation, displays “Cancelling the extension commands before closing Lot Of Points…” and waits up to 3 seconds for the threads to finish. Commands cannot start during this wait.
