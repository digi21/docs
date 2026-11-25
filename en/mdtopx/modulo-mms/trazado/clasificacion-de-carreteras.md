# Road classification
<!-- id: clasificacion-de-carreteras -->
<!-- origen: 5f753ca04e97327eb561c2459bf5b8e56d9076bb -->

[Alignment](./)

Classifies the point cloud of a road captured with a mobile mapping system (MMS) and, if requested, generates its vector data and the database of its inventory. It replaces the [Bare ground](clasificar-suelo-de-trazado.md), [Asphalt](clasificar-lineas-de-vial.md), [Road lines](buscar-lineas-de-vial/) and [Road inventory](buscar-objetos-en-el-trazado.md) tools with a single reading of the point cloud.

It detects the following elements:

* the carriageway, the hard shoulders, the road markings (linear and area markings), the other asphalt (accesses, lay-bys), the median, the ditches, the slopes and the rest of the ground;
* the vehicles on the carriageway;
* the overpasses and the tunnels;
* the sign gantries and cantilever signs, with the pillars that hold them;
* the safety barriers: the W-beams and the walls (New Jersey barriers, parapets);
* the street lights, the signs and the signs on posts;
* the low vegetation and the noise below the ground.

If requested, it fills the gaps that the vehicles leave in the carriageway with synthetic points.

It only changes what has to do with the road: outside the corridor, each point keeps its class.

**Road vector**, the button next to it, only generates the vector data and the database from a point cloud that is already classified, without changing it. It is useful for a point cloud classified with this tool and then corrected by hand, or for one classified with another program with the same classes.

## How to use it

**With a file.** Open the point cloud. On the **MMS** tab, **Car path** group, click **Road classification**. Fill in the dialog box and click **OK**. The point cloud is classified in memory; save it to keep the result.

**With a project.** From the project view, click **Road classification**, fill in the dialog box and choose the files. The corridor is computed with all the files at once, so it continues from one file to the next. Each classified file is saved at the end.

The trajectory of the vehicle, or the axis of the road, is needed, in any format MDTopX reads (for example, a .BIN). Everything is measured along that line: the chainage is the distance along it from its first vertex. A decimated trajectory or an axis drawn with long segments also work.

The MMS module dongle is needed to save the classified point cloud, the vector data and the database.

## What it generates

* **The class of each point**, with the classes of the table below.
* **Synthetic points** (optional) in the gaps of the carriageway behind the vehicles, on the surface of the carriageway. They have the class of the inferred carriageway and the synthetic point flag, so that they are recognised and replaced in another pass.
* **Objects of "Edit objects"**: one per vehicle. In a project, they are saved in the .OBJ next to each file.
* **The vector data** (optional), in a new document:
  * the limits of the carriageway and of the other asphalt;
  * the lane lines, continuous and dashed;
  * the axis;
  * the bottom of the ditches;
  * the top and the toe of the slopes;
  * the axis of each safety barrier and of each wall, with its prism (at its foot at the bottom, and at its top);
  * each street light and each sign, as in the [urban classification](../urbana/clasificacion-urbana/README.md): the prism of its pole, the prism of its head (the arm with the lamp, or the plate) and a point at its foot;
  * each sign gantry, cantilever sign or sign on posts: the prism of each post that reaches the ground (from its foot to
    where the sign board or its arm starts), the prism of its sign board (adjoining panels, a single one) and that of each arm
    or stretch of beam, and a point between its posts;
  * each overpass and each tunnel: its outline in plan, at the height of its underside (it follows the grade); if its edge can
    be seen, the prism of the deck up to the top of its edges (with the parapet, if it has one; with an edge of 3 m or more,
    no prism); and the prism of each pier or side wall that reaches the ground, from its foot to the underside of the deck.
    Thin things left in the overpass class, such as a cable, do not come out; neither does an overpass 1 m wide or less (a very
    narrow footbridge), and one of 1.5 m may not come out. Whatever hangs from the deck without reaching the ground (an edge
    beam, the crosshead of a hammerhead pier) belongs to the deck. The plan of a pier is measured in 0.5 m cells, so it may
    come out shifted by up to 0.25 m. Whatever the classification leaves in the overpass class, such as the crown of a tree
    next to the deck, comes out as part of the overpass.
* **The inventory database** (optional), in the file chosen in the dialog box (a text file or, with extension .html or .htm,
  a web page): one row per safety barrier, wall, street light, sign, sign on posts and overpass or tunnel. See [below](#the-inventory-database).

## The dialog box

| Field | Meaning |
|---|---|
| Trajectory (or axis of the road) | The file with the trajectory of the vehicle or with the axis of the road. |
| Keep what is already classified | The points that already have a class (neither 0 nor 1) are not touched. |
| Synthetic points in the gaps of the carriageway (behind the vehicles) | Adds the synthetic points. Those of a previous pass are replaced. |
| Vector | Generates the vector data in a new document. |
| Inventory database (MMS database) | Writes the inventory database to the file below (choose it with the **...** button): a .txt or, with extension .html or .htm, a web page with the same table. It can be requested without the vector data. |
| LiDAR classes... | The class of each element. See the table below. |
| Vector codes... | The code of each element of the vector data and of the database. See the table below. |
| Default values | Returns the check boxes of the dialog box to their default values (not the classes nor the codes, which have their own button in their table). |

In **Road vector** there are only the trajectory, the database and the buttons of the classes and of the codes.

### The classes

By default, those of the MDTopX class catalogue.

| Element | Class |
|---|---|
| Carriageway | 11 |
| Hard shoulder | 69 |
| Linear road markings | 67 |
| Area road markings | 68 |
| Ditch | 71 |
| Slope | 72 |
| Other asphalt | 66 |
| Median | 70 |
| Other ground | 2 |
| Inferred carriageway (synthetic points) | 11 |
| Vehicles | 82 |
| Overpass or tunnel | 19 |
| Signs and gantries | 84 |
| Low vegetation | 3 |
| Unclassified | 1 |
| Noise (below the ground) | 7 |
| Safety barriers (W-beam) | 83 |
| Walls (New Jersey, parapets) | 91 |
| Street lights | 81 |
| Signs | 85 |

### The vector codes

| Element | Code |
|---|---|
| Carriageway limit | LIMCAL |
| Other asphalt limit | LIMOAS |
| Lane line, continuous | CARCIR |
| Lane line, dashed | CARDIS |
| Road axis | EJECAR |
| Ditch bottom | FONCUN |
| Top of slope | CABTAL |
| Toe of slope | PIETAL |
| Safety barrier (W-beam) | BARRER |
| Wall (New Jersey, parapet) | MURO |
| Street light | FAROLA |
| Sign | SENAL |
| Sign gantry or sign on posts | CARTEL |
| Overpass or tunnel (outline) | PUENTE |

## The street lights, the signs and the signs on posts

They are searched among what, with everything else already classified, would be left unclassified, at 30 m or less from the line. Each one is a separate object with its foot on the ground or on the top of a low safety barrier, like the chainage plates behind the W-beam. It has a thin pole at the bottom and a head at the top:

* **Street light**: 6 m high or more, with an arm of 0.6 m or more in its head; without an arm, 9 m high or more.
* **Sign**: 1.4 m high or more, with a pole of 0.3 m or less and a plate 0.25 m long or more and 0.2 m thick or less. Also a plate hanging next to another pole already recognised, even if it does not reach the ground.
* **Sign on posts**: 2 m high or more, with a panel 1.8 m long or more and 0.3 m thick or less, on one or several posts.

The sign gantries and cantilever signs over the carriageway are recognised by their full plate above the clearance, and their pillars take their class. The cables are not gantries.

A tree, a bush, a plain pole without a plate, the edge of a wall or a standing person are not street lights nor signs.

A few cases still come out wrong:

* a few points of a hedge touching a sign come out as sign;
* a cabinet touching the foot of a street light comes out, in part, as street light;
* two signs less than 0.5 m apart come out as a single one in the vector data.

## The inventory database

A text file with the format of the [MMS database](base-de-datos-mms.md) of vector data: a header and one row per object, with the following columns. With extension .html or .htm, a web page with a table of the same columns and the same values, to open with the browser or with a spreadsheet.

| Column | Meaning |
|---|---|
| CODIGO | The code of the object in the vector data (FAROLA, PUENTE, BARRER, CARTEL, SENAL, MURO...). |
| PK_INI, PK_FIN | What it covers along the line, in "km + m": its start and its end. |
| LADO | The side of the line: **Izq** (left), **Der** (right) or **Ambos** (both; a gantry that crosses it). Less than 0.5 m from the line, **Centro**. The side of a street light or a sign is that of its foot. |
| X_UTM_INI, Y_UTM_INI, X_UTM_FIN, Y_UTM_FIN | Its points at the chainage of its start and at that of its end. |
| Z_BAJA | The height of its foot (the ground under it; for an overpass or a tunnel, the lowest ground under its plan, without the stray points). |
| ALTURA | How high it rises above its foot. For a safety barrier or a wall, the median along it; for an overpass or a tunnel, how high it rises above the ground under each point (in a sloping tunnel, without the slope). |
| LONGITUD | In plan: the length of its axis for a safety barrier or a wall; the long side of its plan for a post (the arm of a street light, the plate of a sign); what it covers along the line for an overpass or a tunnel. |
| AREA | In plan: the length of its axis times its width for a safety barrier or a wall; the area of its plan for a post, an overpass or a tunnel. |
| DIST_EJE | The distance in plan to the line: the mean along it for a safety barrier or a wall; that of its foot for a street light or a sign; the mean of that of its points for a sign on posts, a gantry, an overpass or a tunnel. |

The rows are grouped by type of object, in this order: street lights, overpasses and tunnels, safety barriers, signs on posts, signs and walls. Within each type they are sorted by chainage. They are the same objects as in the vector data.
