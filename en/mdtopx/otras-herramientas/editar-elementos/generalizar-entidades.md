# Generalize entities
<!-- id: generalizar-entidades -->
<!-- origen: d39e8df709c3cdead4b955b125ddbf8a8bd1975a -->

[Edit elements](../../fichas-de-herramientas/ficha-de-herramientas-editar/editar-elementos.md)

Generalize a drawing document's graphical entities by removing points that contribute no relevant geometric information at a given scale.

The dialog requests:

* **Scale**: denominator used to determine generalization thresholds. A point important at 1:500 may be irrelevant at 1:1000. Larger denominators remove more points and produce coarser entities. Change thresholds in the [dialog](../../herramientas-mdt/curvado/curvado-avanzado.md) opened with **Advance Settings...**.
* **Linear generalization**: filters points contributing no information to an entity's geometry.
* **Surface generalization**: filters closed entities below a specified area threshold.
* **Delete peaks**: removes spikes caused by a displaced point in a line, resembling a triangle with a very acute angle.

![Contours before generalization](../../../images/ejemplo-generalizacion-curvas-5.jpg)

![After generalization](../../../images/ejemplo-generalizacion-curvas-6.jpg)

* **3 dimensions**: considers point elevations, retaining points whose elevations matter even if their plan positions do not.
* **Entities from LiDAR data**: enables different considerations for files generated from LiDAR, such as extracted boundaries. Requires:
  * _Linear tolerance_: LiDAR measurement tolerance.
  * _Angular tolerance_: angle tolerance between segments for rejecting spikes.
* **Typology**: entity origin, affecting processing decisions:
  * _General_: unspecified general entities.
  * _Buildings_: building boundaries, where artificial construction commonly produces alignment, perpendicularity and parallelism relationships to detect between segments.
  * Treat entities as _contours_: uses additional algorithms to join nearby surfaces or generate new surfaces where the original entity narrows. Can be applied to any entity set representing surfaces.

![Contours before generalization](../../../images/ejemplo-generalizacion-curvas-1.jpg)

![Contour split after generalization](../../../images/ejemplo-generalizacion-curvas-2.jpg)

![Contours before generalization](../../../images/ejemplo-generalizacion-curvas-3.jpg)

![Contours joined after generalization](../../../images/ejemplo-generalizacion-curvas-4.jpg)

* **Algorithm**: generalization methods:
  * _Douglas-Peucker_: widely used for vector generalization. Optional angle checking retains significant points.
  * _One point in every n_: random; removes one point for each specified number of points.
  * _Lang_
  * _Wang-Muller_
  * _Reumann-Witkam_
