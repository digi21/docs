# Coordinates, distances, angles, and areas for commands running in the drawing window
<!-- id: coordenadas-distancias-angulos-ventana-dibujo -->
<!-- origen: 3fe5ea1c1b6b5bc929e9bff013b5d9a27c03ddec -->

## Coordinates

Commands running in the drawing window work in its coordinate reference system. Assign a geographic coordinate reference system to work with geographic coordinates, or a projected system to work with projected coordinates.

If the assigned coordinate reference system uses meters, commands work in meters; if it uses nautical miles, commands work in nautical miles.

In a geographic system, X is longitude and Y is latitude, both expressed in the system's angular unit. For example, World Geodetic System 1984 (WGS 84, EPSG 4326; EPSG is the European Petroleum Survey Group registry) uses degrees, while Nouvelle triangulation de la France (NTF), with the Paris meridian (EPSG 4807), uses gradians. To calculate distances, perimeters, azimuths, and areas, commands interpret longitude and latitude in the angular unit of the system assigned to the drawing window. For example, in NTF with the Paris meridian, the distance between (0; 54) and (0.1; 54.1) is 12,006 m.

## Distances

How drawing window commands calculate distances depends on the coordinate reference system assigned to the window:

| Coordinate reference system type in the drawing window | Distance calculation formula |
| :--- | :--- |
| Projected |  |
| Geographic | Calculate the distance between two points from their coordinates on the system ellipsoid (the inverse geodesic problem), using Vincenty's algorithm. The result is expressed in meters. |

## Angles

How drawing window commands calculate angles depends on the coordinate reference system assigned to the window:

| Coordinate reference system type in the drawing window | Angle calculation formula |
| :--- | :--- |
| Projected |  |
| Geographic | Calculate the azimuth between two points from their coordinates on the system ellipsoid (the inverse geodesic problem), using Vincenty's algorithm. |

## Areas

How drawing window commands calculate areas depends on the coordinate reference system assigned to the window:

| Coordinate reference system type in the drawing window | Area calculation formula |
| :--- | :--- |
| Projected | Calculate each polygon triangle's area and sum the areas. |
| Geographic | Create a Lambert azimuthal equal-area projection, which preserves areas, centered on the polygon's first vertex. Project polygon vertices into it, then calculate and sum triangle areas of the projected polygon. The result is expressed in square meters. |

Commands constructing geometry in a plane with a geographic system, such as [DENSIFICA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/densifica.md), project vertices using an oblique stereographic projection, which preserves angles, and transform coordinates of the constructed geometry back to longitude and latitude in the system's angular unit.
