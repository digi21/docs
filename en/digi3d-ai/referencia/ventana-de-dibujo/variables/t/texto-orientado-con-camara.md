# CAMERA\_ORIENTED\_TEXT
<!-- id: texto-orientado-con-camara -->
<!-- origen: 682f94f9d953da894ce2e7c73144537cf03d37f7 -->

If enabled, [TEXT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto.md) places text perpendicular to the camera viewing direction and upright on the screen, and [TEXT\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-r.md) places text in a vertical plane, with the baseline (the line on which the characters sit) aligned with the direction defined by the two points you enter. If disabled, both commands place text in the XY plane.

## Parameters


| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Variable value |If no parameter is specified, the Boolean variable toggles from *Enabled* to *Disabled* or from *Disabled* to *Enabled*.<br>**0**: Disable the Boolean variable.<br>**1**: Enable the Boolean variable.<br>**?**: Display the value of the Boolean variable in a balloon showing whether it is enabled or disabled.| Yes |


## Notes

Any nonzero number enables the variable. If the parameter does not start with a number or **?**, the command interprets it as 0 and disables the variable.

The variable affects five commands. [TEXT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto.md), [1TEXT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/1/1-texto.md), and [EDITABLE\_TEXT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-editable.md) orient text to the camera. [TEXT\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-r.md) and [EDITABLE\_TEXT\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-r-editable.md) orient text to the two points you enter.

### Text oriented to the camera

TEXT, 1TEXT, and EDITABLE\_TEXT place text using the three camera axes: the viewing direction, the right axis (the horizontal screen direction), and the up axis (the vertical screen direction). The text plane is perpendicular to the viewing direction, and its readable face points toward the camera. The baseline follows the camera right axis, and the vertical text axis follows the up axis, so the text appears upright on the screen.

The text plane depends on the camera viewing direction:

| Viewing direction | Text plane |
| :--- | :--- |
| Horizontal | Vertical plane. |
| Vertically downward (top view) | XY plane. The text is stored as XY-plane text, without a spatial orientation, and with its baseline aligned with the horizontal screen direction rather than the active angle AA. |
| Vertically upward | Horizontal plane. The text is read from below. |
| Inclined | Inclined plane, perpendicular to the viewing direction. |

TEXT, 1TEXT, and EDITABLE\_TEXT do not use the active angle [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) when calculating camera-based orientation. If the camera viewing direction or right axis cannot be calculated, the text is placed in a vertical plane with a horizontal baseline aligned with the active angle AA.

Text orientation is calculated whenever the cursor moves and when you enter the insertion point, using the camera orientation at that moment.

The camera used depends on the photogrammetric window:

* If the photogrammetric window displays a model from a sensor with a first-person camera, that sensor camera is used. A first-person camera moves and rotates freely through the model. The sensors with a first-person camera are [PointCloud](/digi3d-ai/referencia/ventana-fotogrametrica/sensores/point-cloud.md) and [Stereoscopic Orthophoto](/digi3d-ai/referencia/ventana-fotogrametrica/sensores/ortofoto-estereoscopica.md). The sensor camera axes are in model coordinates: they are converted to the drawing coordinate reference system and, if conversion fails, used without conversion.
* If the photogrammetric window is not open, does not display a model, or displays a model whose sensor has no first-person camera, the active drawing-window camera is used. Select this camera in the [Cameras](/digi3d-ai/referencia/paneles/camaras.md) pane.

### Text oriented to two points

TEXT\_R and EDITABLE\_TEXT\_R place text in a vertical plane with a horizontal baseline, without using the camera. Until you enter the first point, the baseline follows the active angle AA. After you enter the first point, the baseline follows the direction in the XY plane from that point to the cursor. The Z difference between the first point and the cursor does not change the text orientation.

### Other characteristics

Enabling or disabling the variable does not change existing text. The variable only affects text inserted while it is enabled.

If [FORCE\_ACTIVE\_AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/forzar-aa-activa.md) is enabled, oriented text is stored with a rotation around the Z axis that aligns the XY projection of its baseline with the active angle AA. The text retains its plane inclination. The text preview shown while the cursor moves does not take FORCE\_ACTIVE\_AA into account.

The variable is disabled when Digi3D.AI starts.

In Python, read and change the variable through the `camera_oriented_text` property of [DrawingView](/digi3d-ai/programacion/python/referencia/digi3d/drawing-view.md).

### Text orientation in drawing files

Oriented text stores its spatial orientation as well as its rotation around the Z axis. These formats read and write the orientation:

| Format | Where orientation is stored |
| :--- | :--- |
| [Double-precision Digi files](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/bin-doble-precision.md) (`.bind`) | In a `Digi21.DigiNG.Text2` record. Digi3D versions that do not recognize `Digi21.DigiNG.Text2` records skip oriented text. |
| [Digi ASCII files](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/ascii-de-digi.md) (`.asc`) | In four numbers at the end of the rotation line. |
| [DGNv8 files](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dgn.md) (`.dgn`) | In the rotation quaternion of the text element in 3D models. A 2D model stores only the rotation. |
| [AutoCAD DWG files](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dwg.md) (`.dwg`, `.dxf`) | In the normal and rotation of each TEXT. When reading the file, also in the normal and direction of each MTEXT. |
| [Geomedia Datawarehouse files](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/geomedia.md) (`.mdb`) | In the normal and rotation of each `TextPointGeometry`. The axis from which Digi3D.AI measures rotation has not been checked with files created by GeoMedia. |

Other formats do not retain orientation: oriented text is written as XY-plane text.

| Format | Text angle in the file |
| :--- | :--- |
| BIN, VEC, and GeoJSON | The rotation. GeoJSON writes it in the point `rotation` property. |
| PDF | The rotation: the text is drawn in plan view from its insertion point, using that rotation and its text height. If the page size is derived from the drawing extents, the page includes the plan-view rectangle of the text. |
| SHP, GeoPackage, FileGDB, PostGIS, and WKT | None: text is written as a point at its insertion point. |
| SVG | None: text is written as a `text` element at the X and Y of its insertion point. |
| KML | The KML exporter does not write text. |

For text created by TEXT, 1TEXT, EDITABLE\_TEXT, TEXT\_R, and EDITABLE\_TEXT\_R, the rotation is the angle of the baseline projection in the XY plane. In formats that write the rotation, the text baseline retains its direction in plan view.

Read and assign text spatial orientation through the [`orientation`](/digi3d-ai/programacion/python/referencia/digi21.base/text.md#spatial-orientation) property of `Text` in Python and the [`Orientation`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/orientation.md) property of `Text` in .NET. In .NET, `ReadOnlyText` has a read-only [`Orientation`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/propiedades/orientation.md) property.

## Command characteristics

| Command type | [Boolean variable](/digi3d-ai/referencia/ordenes/variables/variables-booleanas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — active angle<br>[FORCE\_ACTIVE\_AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/forzar-aa-activa.md) — store text at the active angle |
| Related commands | [1TEXT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/1/1-texto.md)<br>[TEXT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto.md)<br>[EDITABLE\_TEXT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-editable.md)<br>[TEXT\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-r.md)<br>[EDITABLE\_TEXT\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-r-editable.md) |
| Internal name | {C2543B3F-39AF-43AA-9084-F1F579FE2473} |
