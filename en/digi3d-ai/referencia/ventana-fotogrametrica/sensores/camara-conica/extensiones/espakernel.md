# EspaKernel
<!-- id: espakernel -->
<!-- origen: 9c69b80764d65ab78019ab5b525a6f8a34fcb9a5 -->

The **EspaKernel** extension reads camera calibration and exterior orientations from EspaKernel `.els` files. Also opens `.esp` stereoscopic pair files in [Photogrammetric project](../../../../paneles/proyecto-fotogrametrico.md).

## Aerial triangulation file

In **Aerial triangulation file**, select **EspaKernel project files** (`*.els`). Reads only `.els` files.

The extension does not provide absolute orientation.

## .els file format

Each image occupies a block beginning with `frame` and ending with `frame_end`. Reads:

* The line after `frame`: its first word is the image name. Compares names without extensions against the model image's file name, ignoring case.
* The line after `geometry`: a single-line XML `geometry` element with projection center (`e`, `n`, `z`) and rotations (`omega`, `phi`, `kappa`) in gradians. Builds the rotation matrix in omega, phi, kappa order.
* The line after that `geometry` line: a single-line XML `camera` element containing calibration.
* The line starting with `ground_mean_height`: its second word is mean ground height.

Block outline, with `…` replacing values:

```
frame
107.tif
geometry
<geometry><e>…</e><n>…</n><z>…</z><omega>…</omega><phi>…</phi><kappa>…</kappa></geometry>
<camera><f>…</f><pp_x_y>… …</pp_x_y><sca>…</sca><aff>…</aff><r_1_2_3>… … …</r_1_2_3><t_1_2>… …</t_1_2><unortho>…</unortho><sen_h_w_pix>… …</sen_h_w_pix></camera>
ground_mean_height …
frame_end
```

## Camera

The file contains camera calibration. Without a model camera file, reads it from the aerial triangulation file (see [Camera](../README.md#camera)). From each image's `camera` element:

| Element | Contents |
| --- | --- |
| `f` | Focal length. |
| `pp_x_y` | Principal point (x, y). |
| `sca` | Scale. |
| `aff` | Affinity. |
| `r_1_2_3` | Radial distortion coefficients K1, K2 and K3. |
| `t_1_2` | Tangential distortion coefficients P1 and P2. |
| `unortho` | Nonorthogonality. |
| `sen_h_w_pix` | Sensor height and width in pixels. |

A missing element produces “Node not found: *element* in file: *file*”.

## Coordinate reference system

Reads the `.prj` with the `.els` file's name (`vuelo.prj` for `vuelo.els`). Without `.prj`, displays [Would you like to assign one?](../sistema-de-referencia-del-modelo.md#horizontal-coordinate-reference-system). Does not ask for the vertical system.

## Photogrammetric project

In [Photogrammetric project](../../../../paneles/proyecto-fotogrametrico.md), select **EspaKernel stereoscopic pairs files** (`*.esp`). Each `.esp` line contains left and right image names without extensions:

```
107 108
108 109
```

* Reads cameras and orientations from the `.els` with the `.esp` file's name and folder.
* Images are *name*`.tif` files in the `.esp` folder. If either is missing, the model cannot load.
* All models form one strip named after the `.esp`. Each model is named *left*`-`*right*.
* Gets the reference system from the `.prj` with the `.esp` file's name or, if that `.prj` is absent, [Would you like to assign one?](../sistema-de-referencia-del-modelo.md#horizontal-coordinate-reference-system).

## Error messages

* “Unable to open the file: *file*”: cannot open `.els` or `.esp`.
* “Unable to find the parameters for the image: *image* in the file: *file*”: no `frame` block matches the image.
* “Unable to find the word \"*word*\" in the file: *file*”: a block lacks `geometry`, `ground_mean_height` or `frame_end`.
* “\"*element*\" has *n* values and *m* were expected in the file: *file*”: `ground_mean_height` has no value, a `camera` XML element (`pp_x_y`, `r_1_2_3`, `t_1_2` or `sen_h_w_pix`) has fewer values than listed under [Camera](#camera), or an `.esp` line has only one image name.
* “Error in the line: *n*, column: *n*” or “Error when loading file: *file*. Line: *n*, column: *n*”: malformed `geometry` or `camera` XML.
