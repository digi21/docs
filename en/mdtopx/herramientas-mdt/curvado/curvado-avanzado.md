# Generalization options
<!-- id: curvado-avanzado -->
<!-- origen: 0e65a53f69b2ed5fb11e3090524e0c552f9beb26 -->

![Generalization options dialog](../../../images/image-46.png)

This dialog specifies generalization values different from those recommended for the contour scale:

* **Linear generalization tolerance**: linear tolerance in meters. Any point whose distance from the line joining a line's endpoints does not exceed this value is removed.
* **Area generalization tolerance**: area tolerance in square meters. A closed contour whose area does not exceed this value is not recorded.
* **Automatically change tolerances when the scale factor changes**: lets the program calculate the preceding tolerances automatically from the contour scale. If disabled, the specified tolerances are used to generalize contours.
