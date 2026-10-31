# Cross-section annotations
<!-- id: guitarra-de-perfiles-transversales -->
<!-- origen: 296a7880ff4cb9d57d79bff7647e10d0db8791e3 -->

[Cross sections dialog](perfiles-transversales.md)

This dialog configures each cross-section frame and the additional information displayed in it.

![Cross-section annotation configuration dialog](../../../images/image-53.png)

At the top, select the elements to include in the lower part of the frame, the data bands. These fields are filled automatically from calculated profiles:

* **Cut/fill depth**: difference between design and ground elevations. If design elevation is below ground elevation, the difference represents cut; otherwise, fill.
* **Design/ground elevation**: elevation of the design grade or digital terrain model.
* **Distance from axis**: distance from the cross-section axis, in meters.
* **Points**: profile point number.

Configure the frame's comparison plane and optional vertical scale with these fields:

* **Plane of comparison**: how its elevation is calculated. **Absolute** uses **Height value** directly. **Relative to each profile** subtracts **Height value** from each profile's lowest elevation. **Relative to all profiles** subtracts it from the lowest elevation across all profiles. With **Absolute**, a profile's minimum elevation may fall below the specified value. A [dialog](conflicto-con-el-plano-de-comparacion.md) then lets you resolve the conflict.
* **Height value**: absolute or relative comparison plane elevation, in meters.
* **Include vertical scale**: draws horizontal lines parallel to the comparison plane to aid reading elevations. Specify their spacing in the field below.

Set codes for the annotation frame itself using _Annotation code_ and _Internal line code_.

Finally, select the texts to display inside and around the frame. Enable **Include** below the list for each desired text. Its parameters then appear; except for Information texts, all share:

* **Position**: text position around the profile frame.
* **Text code**: code for recording the text.
* **Text height**: text height in meters.

Available texts:

* **Name**: profile name.
* **Scales**: horizontal and vertical scales specified in the [Cross sections dialog](perfiles-transversales.md).
* **Areas**: if a design grade is available, calculates and displays cut and fill areas.
* **Information**: texts for fields selected at the top, displayed as data bands below the frame. These use different settings:
* **First profile**: starting number for sequentially numbering the remaining profiles.
* **Information**: includes information at every profile change of direction, provided labels do not overlap, or at a specified distance interval.
