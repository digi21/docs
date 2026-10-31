# lop_sdk.h reference
<!-- id: lot-of-points-sdk-referencia -->
<!-- origen: 5eb2d1487eb564ac0a46abfdfd543cb2c672eaf6 -->

`Sdk/include/lop_sdk.h` defines the application programming interface (API) of the Lot Of Points software development kit (SDK). A dynamic-link library (DLL) declares commands through `lop_register_commands`. All strings exchanged by the API use UTF-8 Unicode encoding.

## Registration and execution

```c
LOP_SDK_EXPORT int lop_register_commands(
    uint32_t api_version, char const* language,
    lop_command const** commands, uint32_t* command_count);
```

Lot Of Points passes `LOP_SDK_API_VERSION` (`1`) and the lowercase two-letter interface language code, such as `"es"`. The DLL returns `LOP_OK` and a declaration array remaining valid while the DLL is loaded. Registration is called once per DLL load. Text must match the received language, or English if the DLL does not support that language.

The program preserves array order for each section's buttons. The catalog searches `%AppData%\lop\algorithms` first, then the installation's `algorithms`, with DLLs alphabetically ordered within each folder. Lot Of Points retains the first valid declaration of each identifier.

Clicking an enabled button calls:

```c
int run(lop_command const* command, double const* parameters,
        lop_command_host const* host);
```

`parameters` contains one `double` per declared parameter, in declaration order. `run` returns `LOP_OK`, `LOP_CANCELLED` or `LOP_FAILED`. A failing command must write the reason through `host->log` before returning `LOP_FAILED`. No exception may cross the C interface.

Recompile DLLs querying clouds with the current header: the six reference system and unit fields change the size of `lop_cloud`, although `LOP_SDK_API_VERSION` remains `1`.

## lop_command

| Field | Contract |
|---|---|
| `id` | Stable, unique identifier: ASCII (American Standard Code for Information Interchange) letters, digits, `.`, `_` and `-`. |
| `name`, `description` | Button name and help text. |
| `existing_tab_id` | Existing tab identifier: `lop.tab.view`, `lop.tab.draw`, `lop.tab.edit` or `lop.tab.classification`. |
| `new_tab_title` | New tab title. Exactly one of `existing_tab_id` and `new_tab_title` must contain text. |
| `ribbon_section` | Plugin section title. If empty, the program uses the DLL filename. |
| `icon_png`, `icon_png_size` | PNG (*Portable Network Graphics*) icon bytes and size, up to 1,048,576 bytes; a null pointer and size 0 use the default icon. |
| `parameters`, `parameter_count` | Parameter array and element count. |
| `run` | Required command execution function. |
| `user_data` | DLL pointer; `run` receives it within `command`. |
| `requirements` | Combination of requirements enabling the button. |
| `module` | Licensed module required by the command, `prefijo.nombre` with letters from `a` to `z`, digits, `.` and `-`; a null pointer or empty string if no license is required. If `module` contains text, Lot Of Points only shows and executes the command if a license activated on the computer includes that module. See [Publish in the extension store](../publicar-en-la-tienda.md). |

Commands declaring the same `new_tab_title` share a tab. New tabs appear after the built-in Lot Of Points tabs. Each DLL retains its sections even if another DLL uses the same section title. If `existing_tab_id` specifies a nonexistent or contextual tab, Lot Of Points warns and does not show that command's button.

The icon must be 32 × 32 pixels, with black artwork on a transparent background. The program uses its PNG alpha channel to draw the icon in the theme color.

### Button requirements

| Flag | Condition |
|---|---|
| `LOP_REQUIRES_OPEN_CLOUD` | At least one open cloud. |
| `LOP_REQUIRES_VISIBLE_CLOUD` | At least one visible open cloud; `ask_point` needs this condition. |
| `LOP_REQUIRES_EDITABLE_CLOUD` | At least one open cloud with an edit log and original point indices. |

All combined conditions are required. With `requirements = 0`, the button does not depend on these requirements. The program also prevents keyboard execution when requirements are unmet. These requirements do not select the clouds received by `process_tiles`.

## lop_parameter

Each parameter declares `id`, `name`, `description`, `type`, `default_value`, `minimum`, `maximum`, `unit` and `settings_group`. Controls appear in **Settings**, on the extension section's page. A DLL's sections sharing a title share a page even on different tabs. `settings_group` groups controls within that page; it does not determine the ribbon section.

`type` accepts `LOP_PARAMETER_REAL`, `LOP_PARAMETER_INTEGER` and `LOP_PARAMETER_BOOLEAN`. Limits include both endpoints. Integers are passed as integral `double` values; Booleans use 0 and 1. Saved values are read when the command starts.

## Points and clouds

### lop_point and lop_points

`lop_point` contains `x`, `y`, `z`, `original_point_index`, `cloud_id`, `intensity`, `classification`, `return_number`, `number_of_returns`, `red`, `green` and `blue`.

Coordinates are absolute and use the cloud's system. `original_point_index` is the point's position in the original file, starting at 0. If the level of detail does not retain it, the value is `LOP_UNKNOWN_ORIGINAL_POINT_INDEX` (`UINT64_MAX`). `cloud_id` is never 0 and identifies the cloud while it remains open, even when other clouds are opened or closed. Closing and reopening that cloud assigns a new identifier.

Classification includes edits. Intensity retains the original-file value. Returns use 1–15, or 0 if the file does not provide that data. Red, green and blue components use 0–255.

`lop_points` stores these properties in columns of `point_count` elements. `complete` is 0 if a node could not be read or did not arrive within 2 minutes. Memory is retained until `release_points` or the end of `run`. The command must not modify the internal `handle` field.

### lop_cloud and clouds

```c
int clouds(void* context, lop_cloud const** clouds, uint32_t* cloud_count);
```

`clouds` returns open clouds in **Layers** order, or `LOP_CANCELLED` if the user cancels. The array remains valid until the next `clouds` call or the end of `run`.

| Field | Contents |
|---|---|
| `cloud_id`, `name` | Cloud identifier and **Layers** name. |
| `original_path` | Original path or remote cloud URL without the access query. |
| `visible`, `remote` | Visibility and remote reading from Azure indicators. |
| `editable` | The cloud has an edit log. |
| `has_original_point_indices` | The level of detail retains original point indices. |
| `extra_fields` | Available additional attributes: `LOP_FIELD_GPS_TIME` and `LOP_FIELD_POINT_SOURCE_ID`. |
| `box_min[3]`, `box_max[3]` | Cloud bounds in world coordinates. |
| `crs_wkt` | Reference system used for the cloud during the session, in WKT (*Well-Known Text*). |
| `horizontal_unit_name`, `vertical_unit_name` | Unit names of the first axis of the horizontal and vertical components. |
| `horizontal_metres_per_unit`, `vertical_metres_per_unit` | Meters per unit of each component. |
| `vertical_axis_points_down` | 1 if the vertical axis points down and Z represents depth. |

`crs_wkt` contains the cloud's known, nonlocal system or, if absent, the document's system. If neither is available, it contains the cloud's local system or the unknown local system. If retrieving the reference system fails, `crs_wkt` is empty. An absent or local component leaves its unit name empty and meters-per-unit factor at 0. If reading units fails, affected unit names are empty and their factors are 0. An angular unit's factor is also 0.

`gps_time` represents Global Positioning System (GPS) time; `point_source_id` identifies the flight line. Modifying points by tiles requires both `editable` and `has_original_point_indices`.

## Request and select points

### ask_point

```c
int ask_point(void* context, char const* prompt,
    lop_point_acceptance_function accept_point, void* accept_point_user_data,
    lop_point* point);
```

The program waits for a click on a visible cloud point, snapping to the located point. With an acceptance function, candidates are obtained from all open clouds, including hidden ones, within 0.05 cloud units of the clicked point. Candidates are offered nearest first, excluding deleted points and within the current isolation.

```c
lop_point_acceptance accept_point(void* user_data,
    lop_point const* point, lop_cloud const* cloud);
```

The function can filter by `cloud` properties or `point` attributes. `LOP_POINT_REJECTED` requests the next candidate; `LOP_POINT_ACCEPTED` returns the point; `LOP_POINT_ACCEPTANCE_FAILED` ends `ask_point` with `LOP_FAILED`. A value outside the enumeration also produces `LOP_FAILED`. Pointers to `point` and `cloud` are valid only during the acceptance call.

Without an acceptance function, `ask_point` returns the nearest visible-cloud candidate. If there are no candidates or none is accepted, the program displays the corresponding notice and waits for another click. Cancellation returns `LOP_CANCELLED`; acceptance returns `LOP_OK`.

### points_in_sphere and release_points

```c
int points_in_sphere(void* context, double const center[3], double radius,
    uint32_t const* cloud_ids, uint32_t cloud_count, lop_points* points);
void release_points(void* context, lop_points* points);
```

The query returns points whose distance to `center` is at most `radius`, at full cloud detail, excluding deleted points and within the current isolation. Center and radius must be finite; radius must be at least 0. Lengths use cloud coordinate units.

With `cloud_count = 0`, visible clouds are queried and `cloud_ids = NULL` is allowed. With explicit identifiers, specified clouds still open are queried, including hidden ones. A nonzero count with `cloud_ids = NULL` produces `LOP_FAILED`. The function waits for loading and returns `LOP_OK`, `LOP_CANCELLED` or `LOP_FAILED`. Check `points.complete` before treating the result as complete.

### select_points

```c
int select_points(void* context, lop_points const* points,
    uint64_t const* indices, uint64_t index_count);
```

Replaces the selection with specified indices from a `points_in_sphere` result that has not been released. Each point is selected once. With `index_count = 0`, clears selection and allows null pointers.

The selection remains when `run` finishes. The user can apply **Delete**, **Classify** or **Isolate**; **Restore** requires a region selection. Returns `LOP_CANCELLED` if the user cancels or has closed a cloud containing those points, and `LOP_FAILED` if the result is invalid or an index is not less than `point_count`.

## Process tiles

```c
int process_tiles(void* context, uint32_t const* cloud_ids, uint32_t cloud_count,
    lop_tile_options const* options, lop_tiles_summary* summary);
```

The command supplies identifiers of clouds to process, including hidden ones. Those clouds are reserved until the call ends: the user can open others and close unreserved clouds. The program does not open a scene removing a reserved cloud.

### lop_tile_options

| Field | Contract |
|---|---|
| `tile_core_side_length_cloud_units` | Core side: greater than 0 and up to 10,000,000 cloud units. |
| `tile_overlap_width_cloud_units` | Overlap width: 0 to 10,000,000 cloud units, inclusive. |
| `required_extra_fields` | Combination of `LOP_FIELD_GPS_TIME` and `LOP_FIELD_POINT_SOURCE_ID`. |
| `point_order` | `LOP_ORDER_ORIGINAL_POINT_INDEX`, or `LOP_ORDER_SOURCE_AND_GPS_TIME`, requiring both additional attributes. |
| `flags` | Combination of `LOP_TILES_CONCURRENT` and `LOP_TILES_READ_ONLY`. |
| `estimated_peak_bytes_per_point` | Estimated peak memory allocated by the calculation, in bytes per point; 0 applies the estimate of 1024 bytes per point. |
| `process_tile`, `user_data` | Processing function and its first argument. |

`process_tiles` fails if a requested cloud is not open or lacks a required attribute. To modify points, every cloud needs an edit log and original indices. With `LOP_TILES_READ_ONLY`, neither is required and `result = NULL` is supplied.

Clouds are divided into plan-view squares on a grid starting at multiples of the core side. Tiles span the full height. Tiles without core points are skipped; points are supplied without deleted points and with edited classes. Point isolation limits supplied points.

### lop_tile, lop_tile_result and lop_tile_host

```c
int process_tile(void* user_data, lop_tile const* tile,
    lop_tile_result* result, lop_tile_host const* host);
```

`lop_tile` contains `point_count` and point columns, plus `in_core`, `core_min[3]`, `core_max[3]`, `tile_index`, `tile_count` and `cloud_id`. `gps_time` and `point_source_id` are null unless requested in the options. `tile_index` starts at 0 and traverses tiles of all clouds in the call, cloud by cloud and in rows of increasing Y.

`lop_tile_result.classification` starts with the tile's classes; `deleted` starts with zeros. Results are saved only for points with `in_core = 1`. The function returns `LOP_OK`, `LOP_CANCELLED` or `LOP_FAILED`.

| `lop_tile_host` member | Function |
|---|---|
| `report_tile_progress(context, fraction)` | Reports the tile's completed fraction, from 0 to 1 inclusive. |
| `cancelled(context)` | Indicates the function must stop and return `LOP_CANCELLED`. |
| `log(context, message)` | Writes a line to **Output**. |
| `max_worker_thread_count` | Maximum concurrent threads the tile calculation should use; at least 1. |

Tile host functions support calls from any thread during `process_tile`. With `LOP_TILES_CONCURRENT`, several tiles' `process_tile` functions can run concurrently with their own data and results. Calculation must protect shared state and respect `max_worker_thread_count`.

### Commit and errors

The viewer displays classes and deletions as tiles are processed. A call committing changes records one editing event the user can undo in one action. The log stores the command identifier; history shows its current name when found, otherwise the code.

With `LOP_OK`, a nonnull `summary` receives `reclassified_point_count`, `deleted_point_count` and `changed_cloud_count`. These counts are valid only with `LOP_OK`. A run without point changes adds no event.

Cancellation returns `LOP_CANCELLED` and discards that call's results. An options, data or calculation error returns `LOP_FAILED` without recording changes. A saving error can leave the event committed in some clouds; **Output** gives the reason.

## Other host operations

| Function | Contract |
|---|---|
| `log(context, message)` | Writes to **Output**. If panel contents are hidden, its tab flashes until the user shows **Output**. |
| `status(context, message)` | Writes to the status bar; an empty or null string clears the message. |
| `cancelled(context)` | Indicates cancellation requested with **Esc** or another command's button. |
| `show_temporary_line(context, xyz, count, closed)` | Draws a polyline of `count` vertices in world coordinates; 0 vertices remove it and `closed != 0` closes it. |
| `class_name(context, classification)` | Returns the current name of `classification` from **Classifications**, or an empty string if unnamed. The string remains valid until `run` ends. |
| `load_geopackage(context, geopackage_file_path)` | Loads the file into **Layers**, one layer per table. Returns `LOP_OK`, `LOP_CANCELLED` or `LOP_FAILED`; **Output** records failure reasons. |

The command host and its functions are valid until `run` ends, including for threads created by the command. The program clears the status message and temporary line when execution ends. Declaration arrays, strings and parameters remain valid while the DLL is loaded.

When closing the window with command threads running, Lot Of Points requests cancellation and waits up to 3 seconds. It prevents commands from starting during this wait and terminates pending threads when the process exits. Commands must check cancellation during lengthy calculations.
