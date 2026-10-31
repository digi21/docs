# Compute curves
<!-- id: calcula-curvas -->
<!-- origen: 1a7666635fc770a3712d2efb3f4ffb08e0fcf3d3 -->

[Roads General](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-viales/viales-general.md)

This tool calculates curved elements from two defining parameters, deriving the remaining parameters useful for their definition.

Run it without an open file or from the [curve definition dialog](../trazado/insertar-elemento-curvo.md).

![Circular Curve Calculator dialog](../../../images/image-88.png)

Two curve types can be defined:

![Circular curve elements](../../../images/Circulo.gif)

* **Circular**: defining parameters:
  * _Radius_: radius in meters.
  * _Length_: arc distance between C and F.
  * _Angle_: angle w between radii to C and F, in grads. Fixed when opened from the curved element insertion dialog.
  * _Chord_: straight-line distance between C and F, in meters.
  * _Tangent_: distance between V and F or C, in meters.
  * _Shaft_: maximum distance between arc and chord, in meters.
  * _Dist. to vertex_: distance between O and V, in meters.

Not every combination has a solution, for example Length and Chord.

![Spiral Curve Calculator dialog](../../../images/image-89.png)

![Clothoid elements](../../../images/ClotoideYCirculo.gif)

* **With clothoid**: defining parameters:
  * _Radius_: central circle radius, in meters.
  * _Length_: distance from C to F measured along the curve, in meters.
  * _Tao angle_: angle between the perpendicular to the tangent from the circle center and the radius to tangency point F, in grads.
  * _A parameter_: dimensionless curve constant.

Additional parameters are displayed:

* _Short tangent_: distance from tangency point F to the tangent line, measured along the circle tangent at F, in meters.
* _Long tangent_: distance along the tangent line from C to its intersection with the circle tangent at F, in meters.
* _Incr. Radius_: difference between the central circle radius and its center's ordinate.
* _Point F coordinates_: tangency point F coordinates measured from the tangent line.
* _Center coordinates_: circle center coordinates measured from the tangent line.

When opened from [Curve insertion](../trazado/insertar-elemento-curvo.md), fields in that dialog update automatically.
