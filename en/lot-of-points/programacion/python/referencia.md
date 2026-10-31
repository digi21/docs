# lop module reference
<!-- id: lot-of-points-python-referencia -->
<!-- origen: 08e97a7bae346524b1ae6fc97060ff08993ccd54 -->

The `lop` module provides the Python application programming interface (API) for the viewer and software development kit (SDK) commands. A script imports it with:

```python
import lop
```

| Member | Type | Description |
|---|---|---|
| `lop.viewer` | `IViewer` | The view: camera, points, selection, edits, spherical images and visual state. |
| `lop.run_command(id)` | function | Launches the command with identifier `id` (`str`), as if its button were clicked. |
| `lop.language` | `str` | Two-letter interface language code, such as `"es"`. |

Each `lop.viewer` and `lop.run_command` call runs on the Lot Of Points interface thread, and the script waits for it to finish. Lists returned by `lop.viewer` are copies: the script does not traverse a collection the application might change meanwhile.

## lop.run_command

`lop.run_command(id)` launches the command like its ribbon button and returns without waiting for completion: an interactive command (measurement, selection) waits for user clicks, and an algorithm continues in the background. The function does nothing when:

* The identifier does not exist.
* The command needs an open cloud and none is open.
* The command button is currently disabled.

| Identifier | Command |
|---|---|
| `lop.view.top`, `lop.view.bottom`, `lop.view.front`, `lop.view.back`, `lop.view.left`, `lop.view.right` | **Top**, **Bottom**, **Front**, **Back**, **Left** and **Right** views. |
| `lop.view.zoom-extents` | **Zoom extension**. |
| `lop.view.origin` | **Go to origin**. |
| `lop.view.deselect` | **Deselect point**. |
| `lop.view.points`, `lop.view.spheres` | **View points** and **View spheres**: toggle point and sphere visibility, respectively. |
| `lop.view.save-viewpoint`, `lop.view.open-viewpoint` | **Save view** and **Open view**. |
| `lop.measure.distance`, `lop.measure.height`, `lop.measure.azimuth`, `lop.measure.angle` | **Draw distance**, **Draw height**, **Draw azimuth** and **Draw angle**. |
| `lop.measure.copy-coordinates` | **Copy coordinates**. |
| `lop.draw.point`, `lop.draw.line` | **Point** and **Line** on **Drawing**. |
| `lop.draw.undo`, `lop.draw.redo` | Drawing **Undo** and **Redo**. |
| `lop.edit.sphere`, `lop.edit.polyline`, `lop.edit.box`, `lop.edit.plumbed-box`, `lop.edit.cylinder` | **Sphere**, **Polyline**, **Box**, **Plumbed box** and **Cylinder selection** tools. |
| `lop.edit.delete`, `lop.edit.classify`, `lop.edit.isolate` | **Delete**, **Classify** and **Isolate**, on a selected region or point selection. |
| `lop.edit.restore` | **Restore**, only on a selected region. |
| `lop.edit.unisolate` | **Show everything**, on **Isolated view**. |
| `lop.edit.undo`, `lop.edit.redo` | Title bar **Undo** and **Redo**. |
| `lop.edit.export` | **Export edited**. |
| `lop.algorithm.` + algorithm identifier | A [tile-based algorithm](../../algoritmos/README.md) button: `lop.algorithm.lop.example.height_classifier` is **Classify by height**. |

## lop.viewer

`lop.viewer` is a .NET object. Its members retain .NET `PascalCase` names. World coordinates are absolute in the cloud's system. Screen coordinates use physical pixels of the drawing area, with the origin at the top left.

### Camera and framing

| Member | Type | Description |
|---|---|---|
| `Camera(position, lookDirection, up)` | method, `Point3D` × 3 | Positions the viewer camera for the next frame. See below. |
| `Fov` | `float`, read/write | Camera vertical field of view, in degrees. |
| `SizeInPixels` | `ValueTuple[Int32, Int32]` | Drawing area width (`Item1`) and height (`Item2`) in pixels. |
| `Domain` | `Box3D` | Open clouds' bounding box. |
| `NavigationReferencePoint` | `Point3D` or `None` | A point from the first cloud's root node for camera positioning, if available. |
| `NearClipDistanceCloudUnits`, `FarClipDistanceCloudUnits` | `float`, read/write | Camera distances to near and far clipping planes, in cloud units. |

`Camera` applies position and orientation to the next frame without updating the camera state used by navigation tools: the next click, wheel turn or command returns the view to their camera position. To change the view persistently, use view commands through `lop.run_command` (`lop.view.top`, `lop.view.zoom-extents`...).

### Points under the cursor

| Member | Type | Description |
|---|---|---|
| `LocatePoint(x, y, radius)` | method → `Point3D` or `None` | Cloud point visible at pixel (`x`, `y`), searched within `radius` pixels. |
| `SelectedPoint` | `Point3D` or `None`, read/write | Point marked in the viewer. `None` removes the mark. |
| `PixelRay(x, y)` | method → `Ray3D` | Ray from the camera through pixel (`x`, `y`). |
| `PixelToCamera(x, y, cameraZ)` | method → `Point3D` | Pixel (`x`, `y`) at depth `cameraZ`, in camera coordinates. |
| `CameraToPixel(point)` | method → `Point3D` | `point` projected onto the screen. |
| `FirstPointInCylinder(p1, p2, radius)` | method → `Point3D` or `None` | Loaded point nearest `p1` inside the cylinder with axis `p1`–`p2` and radius `radius`. |

`LocatePoint` and `FirstPointInCylinder` search points currently loaded in the viewer, rather than every point in the file.

### Selection and edits

| Member | Type | Description |
|---|---|---|
| `SelectBySphere(center, radius)` | method | Selects points in a sphere, replacing the previous selection. |
| `SelectByCylinder(p1, p2, radius)` | method | Selects points in a cylinder with axis `p1`–`p2` and radius `radius`. |
| `SelectByOrientedBox(origin, u, v, w)` | method | Selects points in an oriented box: vertex `origin` and its three edges `u`, `v` and `w`. |
| `SelectByPolyline(vertices, radius)` | method | Selects points within `radius` of a polyline: one cylinder per segment. `vertices` is a .NET list of `Point3D` ([Lists](#lists)). |
| `ClearSelection()` | method | Clears selection. |
| `HasPointSelection` | `bool`, read | Indicates a point selection left by a command. |
| `LoadedSelectedPointCount` | `int`, read | Selected point count in the loaded level of detail. The drawing thread counts points: immediately after selection, the value may not yet be updated. |
| `ConfirmEdit(eventCode, actionKind, classCode)` | method → `int` | Records selection as an editing event with action `actionKind` (`EditAction`) and class `classCode` (0–255, only for `EditAction.AssignClass`). Returns the number of clouds recorded. Throws if the edit log cannot be written. |
| `IsolateSelection()` | method → `bool` | Isolates the selected region or points and limits subsequent edits to the isolation. |
| `RemoveIsolation()` | method | Removes isolation. |
| `HasIsolation` | `bool`, read | Whether a region or points are isolated. |
| `EditingHistory` | list of `WrittenEvent` | Events written to open clouds' edit logs. |
| `EditableClouds` | list of `str` | Paths or URLs of clouds with edit logs. Exporting the edited original supports local clouds only. |
| `ExportEditedOriginal(originalPath, outputLasPath, percent)` | method → `int` | Writes a LAS file (point cloud interchange format) to `outputLasPath`, applying edits to the original. Returns the point count written. `percent` can be `None`. |

`eventCode` is the log's event code; history translates selection codes and looks up current command names. Lot Of Points selection tools use `"Sphere"`, `"Cylinder"`, `"Box"` and `"Polyline"`.

`ExportEditedOriginal` reads the entire original file. From a script it runs on the interface thread, so the interface does not respond until it finishes.

### Spherical images

| Member | Type | Description |
|---|---|---|
| `SphericalPhotos` | list of `ISphericalPhoto` | Open clouds' spherical images. |
| `LocateSphere(x, y)` | method → `ISphericalPhoto` or `None` | Sphere intersecting the ray of pixel (`x`, `y`). |
| `SphereRadius` | `float`, read/write | Sphere drawing radius in cloud units. |

### Visual state

| Member | Type | Description |
|---|---|---|
| `PointsVisibility` | `bool` | **View points**. |
| `SphericalPhotoVisibility` | `bool` | **View spheres**. |
| `PointSizeScale` | `float` | **Point size** factor. |
| `PointShape` | `int` | **Point shape**: 0 square, 1 round, 2 paraboloid. |
| `MaxProjectedPointSpacingPixels` | `float` | **Level of detail**: maximum projected point spacing, in pixels. |
| `ColorAttribute` | `int` | **Points color**: a `ColorAttribute` value. |
| `ColorRamp` | `int` | **Colour scale**: a `ColorRamp` value. |
| `EdlEnabled` | `bool` | **Depth shading (EDL)**, *Eye-Dome Lighting*: darkens each pixel according to its depth difference from neighboring pixels. |
| `EdlStrength` | `float` | **Shading intensity**. |
| `MinimumMeasurementTextHeightPixels` | `float` | Measurement **Text size (px)**, in pixels. |
| `DimensionLabelFlags` | `int` | Measurement **Labels**, as a sum of values: 1 3D distance, 2 horizontal distance, 4 height difference, 8 coordinates. |
| `SetStretch(automatic, min, max)` | method | Scalar attribute's **Value range for colour**: automatic (`True`), or manual between `min` and `max`. |
| `Stretch` | `ValueTuple[Boolean, Single, Single]` | Last stretch applied with `SetStretch`: automatic, minimum and maximum (`Item1`, `Item2`, `Item3`). |
| `ActualStretchRange(attribute)` | method → `ValueTuple[Double, Double]` | Range automatic stretch would use for `attribute`, measured in the cloud. |
| `HasCloudsWithColor` | `bool`, read | Whether an open cloud has color. |
| `SetBackgroundColor(color)`, `BackgroundColor` | method, `ColorRgba` | Background color and last applied value. |
| `SetSphereColor(color)`, `SphereColor` | method, `ColorRgba` | Sphere color and last applied value. |
| `SetEditingVolumeColor(color)` | method | Selection volume color. |

Properties without “read” are readable and writable. Lot Of Points does not save script changes to visual state in its settings.

| `ColorAttribute` | Value | In the ribbon |
|---|---|---|
| `Rgb` | 0 | RGB (red, green and blue components) |
| `Classification` | 1 | Classification |
| `Intensity` | 2 | Intensity |
| `Elevation` | 3 | Elevation |
| `RgbByIntensity` | 4 | RGB × Intensity |
| `ByCloud` | 5 | By cloud |
| `ReturnNumber` | 6 | Return number |

| `ColorRamp` | Value | In the ribbon |
|---|---|---|
| `Gray` | 0 | Grayscale |
| `Rainbow` | 1 | Rainbow |
| `Viridis` | 2 | Viridis |
| `Turbo` | 3 | Turbo |
| `BlueRed` | 4 | Blue-red |

### Other members

These members are used by Lot Of Points interactive tools:

| Member | Description |
|---|---|
| `TemporaryGeometry` | Active tool preview: a `Geometries` geometry (`Point`, `Polyline`, `Dimension`, `Azimuth`, `Angle`) or `None`. |
| `SelectedGeometry` | Selected geometry, drawn animated in the viewer, or `None`. |
| `ShowEditingGuide(vertices)` | Line following the cursor while the user specifies points delimiting a selection region. |
| `ShowEditingArrows(arrows, highlighted)` | Arrows moving the faces of a selection box. |
| `RequestFirstLevelFraming(onArrive)` | Requests the framing dimensions of the entire cloud; delivers them to `onArrive` in a later frame. |
| `IsolatedExtentOnAxes(right, up, front)` | Isolated region measured along camera axes, or `None` if no isolation. |

## Types

| Type | Import with | Members |
|---|---|---|
| `Point3D` | `from Geometries import Point3D` | `Point3D(x, y, z)`; `X`, `Y`, `Z` and `Length` (vector length). |
| `Box3D` | `from Lop.Core.Services import Box3D` | `Min` and `Max` (`Point3D`). |
| `Ray3D` | `from Lop.Core.Services import Ray3D` | `Origin` and `Direction` (`Point3D`). |
| `ColorRgba` | `from Lop.Core.Services import ColorRgba` | `ColorRgba(r, g, b, a)` with values 0 to 255; `ColorRgba.FromHex("#rrggbb")` or `"#aarrggbb"`; `R`, `G`, `B`, `A`; `ToHex()`. |
| `EditAction` | `from Lop.Core.Services import EditAction` | `EditAction.Delete`, `EditAction.Restore`, `EditAction.AssignClass`. |
| `WrittenEvent` | | `EventId` (identifier in milliseconds since January 1, 1970 at 00:00:00 UTC), `EventCode` (event code) and `Clouds` (cloud count). |
| `ISphericalPhoto` | | `Name`, `WorkingImagePath`, `Coordinates` (`Point3D`), `HasWorkingImages`, `HasThumbnail`, `OriginalPaths` (list of `str`) and `ShowSphere` (`bool`, read/write: whether its sphere is drawn). |
| `ColorAttribute`, `ColorRamp` | `from Lop.Core.Models import ColorAttribute, ColorRamp` | Values in the [Visual state](#visual-state) tables. `int(ColorAttribute.Classification)` gives the number expected by properties. |

## .NET types in Python

`lop.viewer` is a .NET object exposed to Python by pythonnet. Members retain the types declared in `IViewer`, and collections are adapted through `UiProxy`:

### Lists

* A list returned by `lop.viewer` (`EditingHistory`, `EditableClouds`, `SphericalPhotos`) supports `for`, indexing (`h[0]`), `Count` and `list(...)`. Use `.Count` or `len(list(...))` for its count.
* A list parameter (`SelectByPolyline`) does not accept a Python list. Pass a .NET array:

```python
import System
from Geometries import Point3D

vertices = System.Array[Point3D]([Point3D(0, 0, 0), Point3D(10, 0, 0)])
```

### Tuples

`SizeInPixels`, `Stretch` and `ActualStretchRange` return .NET tuples (`ValueTuple`). Read elements through `Item1`, `Item2` and `Item3`.

### Numbers, enumerations and None

* A Python `int` works where .NET expects a `float`, `byte` or unsigned integer.
* `ColorAttribute` and `ColorRamp` properties are integers: assign `int(ColorAttribute.Classification)` or the number.
* `None` works where .NET expects a null object (`SelectedPoint = None`, `percent=None`), and methods that may find nothing return `None`.

### Errors

A Lot Of Points error within a call reaches the script as an exception. If uncaught, **Output** shows its type and message.

## Python commands

### Declaration

```python
@lop.command(id, name, *, existing_tab_id="", new_tab_title="",
             ribbon_section="", description="", parameters=(), icon="",
             requirements=0, module="")
def command_function(host):
    ...
```

Exactly one of `existing_tab_id` and `new_tab_title` must contain text. Existing tab identifiers are `lop.tab.view`, `lop.tab.draw`, `lop.tab.edit` and `lop.tab.classification`. `ribbon_section` determines the plugin section. `icon` is a PNG (*Portable Network Graphics*) path relative to the script folder. The image must be 32 × 32 pixels, with black artwork on a transparent background. Its maximum size is 1,048,576 bytes. An unreadable or invalid icon produces a warning and the button uses the default icon.

`requirements` combines `lop.REQUIRES_OPEN_CLOUD`, `lop.REQUIRES_VISIBLE_CLOUD` and `lop.REQUIRES_EDITABLE_CLOUD`. The program enables the button and permits execution when all declared requirements are met. With 0, the button does not depend on these requirements. An editable cloud for this requirement needs an edit log and original-file indices.

`module` is the licensed module required by the command, `prefijo.nombre` with letters from `a` to `z`, digits, `.` and `-`. With `""`, no license is required. If module contains text, Lot Of Points only shows and executes the command if a license activated on the computer includes it. See [Publish in the extension store](../publicar-en-la-tienda.md).

```python
lop.Parameter(id, name, default, minimum, maximum, unit="",
              description="", settings_group=None, type="real")
```

`type` accepts `"real"`, `"integer"` and `"boolean"`. `settings_group` groups controls in **Settings**; `host.parameter_value(id)` retrieves the value read when the command started.

### lop.Host

The program supplies the host to the command function and keeps it valid during execution. Calls waiting for points or tiles block the command thread while letting the interface handle navigation.

| Method | Result and conditions |
|---|---|
| `log(message)` | Writes a line to **Output**; if contents are hidden, the tab flashes until the user shows **Output**. |
| `status(message)` | Writes to the status bar; an empty string clears the message. |
| `cancelled()` | `True` if cancellation has been requested. |
| `ask_point(prompt, accept_point=None)` | Returns a `Point`, or `None` on cancellation. |
| `points_in_sphere(center, radius, cloud_ids=None)` | Returns `Points`, or `None` on cancellation. |
| `select_points(points, indices)` | Replaces selection; returns `False` on cancellation or if a cloud containing those points has closed. |
| `show_temporary_line(vertices, closed=False)` | Draws a temporary polyline from `(x, y, z)` sequences; an empty list removes it. |
| `class_name(classification)` | Current **Classifications** class name, or empty string; requires an integer from 0 to 255. |
| `clouds()` | List of `Cloud` in **Layers** order, or `None` on cancellation. |
| `process_tiles(cloud_ids, options, process_tile)` | `TilesSummary` on completion, `None` on cancellation; throws `ProcessTilesFailed` on failure. |
| `load_geopackage(geopackage_file_path)` | `True` if loaded as layers; `False` on cancellation or failure. **Output** records failure reasons. |
| `parameter_value(id)` | Parameter value read when the command started; throws `KeyError` if the identifier does not exist. |

`ask_point` waits for a click on a visible cloud and offers `accept_point(point, cloud)` undeleted candidates within 0.05 cloud units of the clicked point. The filter receives candidates from all open clouds, including hidden ones, nearest first. It returns `True` to accept and `False` to try the next; filter exceptions propagate to the command. Without a filter, the nearest visible-cloud point is accepted. If no candidate qualifies, the program waits for another click. The query respects isolation.

`points_in_sphere` accepts a `Point` or `(x, y, z)` sequence as center. Radius must be finite and at least 0, in cloud units. With `cloud_ids=None` or an empty list, visible clouds are queried. Explicit identifiers query specified clouds still open, including hidden ones. The query retrieves full detail, applies edits and isolation, and excludes deleted points.

`select_points` receives integer indices into a `points_in_sphere` result. Use `numpy.flatnonzero(mask)` to convert a Boolean mask to indices. Negative indices or those at least as large as the point count are rejected. Selection remains when the command ends for **Delete**, **Classify** or **Isolate**. An empty index list clears selection.

### Point, Points and Cloud

`Point` contains `x`, `y`, `z`, `original_point_index`, `cloud_id`, `intensity`, `classification`, `return_number`, `number_of_returns`, `red`, `green` and `blue`. The cloud identifier remains valid while open. Original indices start at 0; `lop.UNKNOWN_ORIGINAL_POINT_INDEX` indicates that the cloud does not retain that data.

`Points` exposes those properties as read-only `numpy` columns. `len(points)` returns the count and `points[i]` returns a `Point`. Columns share result memory without copying and retain it while any column or the `Points` object exists. Python releases the result without an explicit `release_points` call. `points.complete` is `False` if a node could not be read or did not arrive within 2 minutes.

`Cloud` is a copy with `cloud_id`, `name`, `original_path`, `visible`, `remote`, `editable`, `has_original_point_indices`, `extra_fields`, `box_min` and `box_max`. Bounds are three-coordinate tuples. The copy remains valid after another `clouds` call, although cloud state can change.

| Additional field | Contents |
|---|---|
| `crs_wkt` | Reference system used during the session, in WKT (*Well-Known Text*). |
| `horizontal_unit_name`, `vertical_unit_name` | Unit names of the first axis of horizontal and vertical components. |
| `horizontal_metres_per_unit`, `vertical_metres_per_unit` | Meters per unit; 0 for angular units or local or absent components. |
| `vertical_axis_points_down` | Indicates a downward vertical axis, where Z represents depth. |

The system used is the cloud's if known and nonlocal; otherwise the document's, if present. If neither is available, the cloud's local system or the unknown local system is used. A local or absent component leaves the unit name empty. If retrieving the system or units fails, affected text fields are empty and affected meters-per-unit factors are 0.

### TileOptions and process_tiles

```python
lop.TileOptions(tile_core_side_length_cloud_units=0.0,
                tile_overlap_width_cloud_units=0.0, required_extra_fields=0,
                point_order=lop.ORDER_ORIGINAL_POINT_INDEX,
                concurrent=False, read_only=False,
                estimated_peak_bytes_per_point=0.0)
```

Core side must be greater than 0 and at most 10,000,000 cloud units. Overlap accepts 0 to 10,000,000 cloud units inclusive. Replace the default side of 0 before running `process_tiles`.

`required_extra_fields` combines `lop.FIELD_GPS_TIME` and `lop.FIELD_POINT_SOURCE_ID`: Global Positioning System (GPS) time and flight line identifier. `point_order` accepts `lop.ORDER_ORIGINAL_POINT_INDEX` and `lop.ORDER_SOURCE_AND_GPS_TIME`; the latter requires both additional attributes.

The command passes identifiers chosen from `clouds()` to `process_tiles`, including hidden clouds. Every cloud must be open and provide requested attributes. Modifying points requires an edit log and original indices for every cloud. With `read_only=True`, neither is required and `result=None` is supplied.

`process_tile(tile, result, host)` receives a `Tile`, `TileResult` and `TileHost`. It returns no status code. An exception causes processing to fail; `KeyboardInterrupt` or host cancellation cancels the tile.

`concurrent=True` permits tiles on different threads, taking turns executing Python under the Global Interpreter Lock (GIL). `estimated_peak_bytes_per_point` estimates peak memory allocated by the calculation per point. The value 0 applies `lop.DEFAULT_PEAK_BYTES_PER_POINT`, which is 1024 bytes per point.

Results appear during processing. A call committing point changes adds one history event. History shows the current command name if available, otherwise the code. `TilesSummary` contains `reclassified_point_count`, `deleted_point_count` and `changed_cloud_count`. Cancellation discards that call's results. A saving failure can leave committed changes in some clouds.

During the call, the user cannot close reserved clouds; others can be opened and unreserved clouds closed. When closing Lot Of Points, the program requests cancellation and waits up to 3 seconds for command threads to end.

### Tile, TileResult and TileHost

`Tile` contains point columns, without a `cloud_id` column, and adds `in_core`, `gps_time` and `point_source_id`. Additional attributes are `None` unless requested in options. `point_count`, `core_min`, `core_max`, `tile_index`, `tile_count` and `cloud_id` identify the tile. `len(tile)` returns `point_count`.

Each `Tile` column is a read-only copy created on first access. A copy already read remains valid when the tile function ends. First reading an existing column of a nonempty tile after the function ends throws `RuntimeError`.

`TileResult.classification` starts with tile classes and `deleted` starts with zeros. The function can modify arrays or replace them with arrays of the same length. Classes must be integers from 0 to 255; a nonzero `deleted` value marks a point for deletion. On normal completion, the program validates and copies read or assigned columns into the native result. Only core-point results are saved.

`TileHost` provides `report_tile_progress(fraction)`, `cancelled()`, `log(message)` and `max_worker_thread_count()`. `report_tile_progress` accepts a progress fraction from 0 to 1 inclusive. After the tile function ends, `cancelled()` returns `True`, progress and logging methods do nothing, and `max_worker_thread_count()` retains its value.
