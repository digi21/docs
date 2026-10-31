# Digi3D
<!-- id: digi3d-2 -->
<!-- origen: 385d33060b75d4dd20ef05f0e235c40faec3f24e -->

The **Digi3D** extension reads Digi3D.AI's own camera and orientation files. It has no aerial triangulation file type: reads files from the model's work directory.

## Orientations

Searches the model's work directory in this order. `<izquierda>` and `<derecha>` represent image names without extensions:

1. `<izquierda>-<derecha>.rel.xml`: relative orientation (see [Relative orientation files](../../../../../primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/orientacion-de-modelos-fotogrametricos/orientacion-relativa/archivos-orientacion-relativa.md)).
2. `<izquierda>-<derecha>.rel`: relative orientation in the previous format.
3. `<izquierda>.orientation.xml` and `<derecha>.orientation.xml`: both images' exterior orientations. These files make relative orientation unmodifiable.

If the model has **Aerial triangulation file**, Digi3D.AI queries this extension after all others, so these files are used only when no other extension reads the aerial triangulation file (see [Relative orientation](../README.md#relative-orientation)).

Creates relative orientation in a local reference system: does not read `.prj` or display [Model without a coordinate reference system](../sistema-de-referencia-del-modelo.md). Does not provide absolute orientation; the sensor reads it from `<izquierda>-<derecha>.abs.xml` (see [Absolute orientation](../README.md#absolute-orientation)).

## Camera

Creates an image's camera from:

* The model's camera file, if its extension is `.cam`.
* If the camera file is not a `.cam`, `<imagen>.orientation.xml` in the image folder, if present.

### .cam file

A `.cam` is an INI text file with a `[Camara]` or `[Camera]` section. Without either section, the extension does not read it. The camera selection type is **Digi3D camera files** (`*.cam`). Create and edit `.cam` files using [Camera file editor](../../../../cuadros-de-dialogo/editor-archivos-camara.md).

Sections and keys accept Spanish or English names. Digi3D.AI searches each key first in the interface language, then in the other language, so the same file works in both. Lengths are in mm.

| Spanish key | English key | Values |
| --- | --- | --- |
| `Focal` | `Focal` | Focal length, or X and Y focal lengths. Required. |
| `PuntoPrincipal` or `PP` | `PrincipalPoint` or `PP` | Principal point X and Y coordinates relative to the image center, with Y upward. Required. |
| `PPS` | `PPS` | Point of best symmetry. Defaults to the principal point. |
| `Escala` | `Scale` | Overall scale. Defaults to 1. |
| `TipoDistorsionTangencial` | `TypeTangentialDistortion` | `No`, `Brown` or `OpenCV`. Defaults to `Brown`. |
| `p1`, `p2` | `p1`, `p2` | Tangential distortion coefficients. Default 0. |
| `TipoDesortogonalidad` | `TypeDesortogonality` | `No` or `Fraser`. Defaults to `Fraser`. |
| `B1`, `b2` | `B1`, `b2` | Affinity and nonorthogonality. Default 0. |
| `TamanoPixel` | `PixelSize` | Pixel size, one or two values. Identifies a digital camera. |
| `TipoValorDistorsion` | `KindOfDistortionValues` | 1 = correction (measured to ideal), 0 = error (ideal to measured). |
| `Pol` | `Pol` | `K1_R2_K2_R4` or `K1_R3_K2_R5`: radial distortion polynomial powers. |
| `k0`, `k1`, `k2`, `k3` | `k0`, `k1`, `k2`, `k3` | Polynomial coefficients. |
| `OperacionRadial` | `OperacionRadial` | `X_CORRECTION` or `X_PLUS_X_CORRECTION_R`. Defaults to `X_CORRECTION`. |
| `TipoCorreccion` | `TypeCorrection` | `FotoAFiducial` (English: `PhotoToFiductial`): evaluates the polynomial in photo coordinates, in mm. Any other value uses camera coordinates. |
| `Distorsion1`, `Distorsion2`… | `Distorsion1`, `Distorsion2`… | Distortion table radius and distortion. |
| `Fiducial1`, `Fiducial2`… | `Fiducial1`, `Fiducial2`… | Fiducial mark X and Y coordinates. |

Specify radial distortion in either form:

* **Polynomial** (with `Pol`): requires a digital camera (`TamanoPixel`). `TipoValorDistorsion` defaults to 1. With `OperacionRadial=X_CORRECTION`, the polynomial multiplies the coordinate and `k0` defaults to 1; with `X_PLUS_X_CORRECTION_R`, it gives the radius increment and `k0` defaults to 0.
* **Radius and distortion table** (without `Pol`): `Distorsion1`, `Distorsion2`… each with two values (radius and distortion), in any order; `TipoValorDistorsion` is required. Without `TamanoPixel`, the camera is analog and requires at least four fiducial marks in `Fiducial1`, `Fiducial2`… with X and Y coordinates.

#### Digital camera example with a polynomial

Calibration of a Phase One iXM-RS150F with an RS 110 mm lens, calculated with Australis:

```
[Camara]
Focal=108.2782
PuntoPrincipal=0.0351 -0.2000
TamanoPixel=0.00376
Pol=K1_R2_K2_R4
OperacionRadial=X_CORRECTION
TipoValorDistorsion=1
TipoCorreccion=FotoAFiducial
k0=1
k1=-5.04633e-06
k2=7.03636e-10
k3=1.04997e-13
TipoDistorsionTangencial=Brown
p1=-1.34225e-06
p2=2.48277e-06
TipoDesortogonalidad=Fraser
B1=-5.10651e-06
b2=2.72499e-06
```

Australis and this camera type use the same model: corrections are calculated in mm on measured coordinates, with Y upward and the origin at the image center. Copy Australis report values without changing signs: `C` to `Focal`, `XP` and `YP` to `PuntoPrincipal`, `K1` through `K3` to `k1` through `k3`, `P1` and `P2` to `p1` and `p2`, and `B1` and `B2` to `B1` and `b2`.

With English keys, the same file starts:

```
[Camera]
Focal=108.2782
PrincipalPoint=0.0351 -0.2000
PixelSize=0.00376
KindOfDistortionValues=1
TypeCorrection=PhotoToFiductial
```

#### Digital camera example with a distortion table

```
[Camara]
Focal=100.500
PuntoPrincipal=0.010 -0.020
TamanoPixel=0.012
TipoValorDistorsion=1
Distorsion1=10 0.001
Distorsion2=20 0.002
```

### .orientation.xml file

From `cam` in `<imagen>.orientation.xml`, reads focal length (`focal`, or `focalX` and `focalY`), principal point (`xpp`, `ypp`), image size (`imageWidth`, `imageHeight`), distortion table (`distortions/distortion` with `distance` and `error`) and, depending on camera type:

* Digital: `pixelSizeX` and `pixelSizeY`.
* Analog (without pixel size): fiducial marks from `fiducials/fiducial` with `x` and `y`.
