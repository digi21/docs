# Introduction to coordinate reference systems
<!-- id: introduccion-sistemas-referencia-coordenadas -->
<!-- origen: e58f86db17b92c51cee16b2101ec511129133ef9 -->

## Locating a coordinate on Earth

Examine these coordinate groups, known as tuples: \(_426308.23, 4335635, 640.0_\) and \(_39.166816,-3.853025, 640.0_\).

The values in the two tuples differ, but the numerical difference does not establish that they represent different locations on Earth without knowing each tuple's coordinate reference system.

**Do you know the units of the first point's** _**X**_ **coordinate?**

Are they meters? Feet? Centimeters? Nautical miles? Micrometers?

You do not know. You might guess meters, but no more.

**Can you be certain that the first coordinate in both tuples represents** _**X**_**, the second** _**Y**_ **and the third** _**Z**_**?**

You cannot. The second tuple's first coordinate could be an _X_ coordinate, a geographic point's _longitude_ or a geographic point's _latitude_.

You can guess, but no more (again).

**Is the first point's** _**Z**_ **coordinate ellipsoidal and orthometric?**

You do not know.

**Assuming the first point's** _**Z**_ **coordinate is orthometric, does it refer to the** _**EGM96**_ **or** _**EGM2008**_ **datum?**

You do not know.

**The example's coordinate tuples represent the same point on Earth.**

The example's coordinate tuples refer to _Malagón in Ciudad Real (Spain)_.

## Definition of a coordinate reference system

Coordinates alone cannot locate a point: you need to know their coordinate reference system, so coordinate tuples must be given together with their associated coordinate reference system:

\(_426308.23, 4335635, 640.0_\) in _WGS 84 / UTM Zone 30 N + EGM2008_

\(_39.166816,-3.853025, 640.0_\) in _WGS 84 + EGM 2008_

A coordinate reference system identifies the point on Earth to which a coordinate corresponds.

Coordinate reference systems specify many parameters:

1. Number and names of axes, for example \(_Z_\), \(_X,Y_\), \(_X,Y,Z_\), \(_Latitude, Longitude_\), \(_Latitude, Longitude, Height_\), \(_Longitude, Latitude_\), \(_Longitude, Latitude, Height_\), ...
2. Axis units, for example degrees for _Latitude_ and _Longitude_ and meters for _Height_, or _nautical miles_ for _X_ and _Y_, ...
3. The area where the coordinate reference system is useful (worldwide, between 6º west and 0º west in the northern hemisphere, or valid only for Mauritania, Morocco and Spain, ...).
4. Coordinate type: _2D Cartesian, 3D Cartesian, geographic, vertical_, ...
5. The datum associated with the coordinate reference system (such as _World Geodetic System 1984_). The datum defines the associated ellipsoid, such as _WGS 84_, short for _World Geodetic System 1984_.
6. ...

## List of coordinate reference systems

Digi3D.AI allows you to create your own coordinate reference system. Specify the ellipsoid parameters (semi-major and semi-minor axes), datum parameters, location of the central meridian associated with the datum, coordinate type, axis count and units. In practice, you will use one of the coordinate reference systems provided by Digi3D.AI.

The **Coordinate reference system dialog** provides a list of coordinate reference systems. Its list is taken from the _EPSG_ database.

The Digi3D.AI installer creates a copy of the [OGP Geomatics Committee](http://info.ogp.org.uk/geomatics/) database. This committee provides a database (known as _EPSG_) with thousands of coordinate reference system definitions and algorithms (and their parameters) for transforming coordinates between systems.
