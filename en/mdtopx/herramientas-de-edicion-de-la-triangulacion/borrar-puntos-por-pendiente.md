# Delete points by slope
<!-- id: borrar-puntos-por-pendiente -->
<!-- origen: 363a8d97a9bcc5974d75f3ec6b97f909abf458b8 -->

[Delete TIN vertices](../fichas-de-herramientas/ficha-de-herramientas-edicion-tin/borra-vertices-del-tin.md)

This tool removes [digital model](../como/como-triangulacion.md) points that contribute no elevation information or have an incorrect elevation. Specify a minimum slope below which points can be removed and a maximum slope above which a point can be considered erroneous.

The tool displays a dialog requesting the maximum and minimum slopes. To retain all points in flat areas, set Minimum slope to 0. To retain all points on steep slopes, set Maximum slope to 90.

Slope values are entered in degrees.
