# Forest inventory
<!-- id: inventario-forestal -->
<!-- origen: b59d9d67f1b4a0ecae724f1345ce9150df0a9ff7 -->

[Forestry](./)

Takes the inventory of the trees in a forest point cloud. It finds each tree with its stem, its diameter at breast height (DBH), its height and its crown, classifies its points, and generates a vector drawing with the trees' attribute table, a DTM with objects and a report with the stand parameters. Given a field inventory, it compares the trees in the cloud with the measured trees.

Works with a terrestrial-only cloud (terrestrial scanner or SLAM), a drone-only cloud or a fusion of both.

It is on the **LiDAR classification** tab, **Forestry** panel, **Forest inventory** button. It will replace the [Trees](clasificar-arboles.md) and [Trunks](clasificar-troncos.md) tools of the same panel, which remain available while it is being validated.

## Before you start

* The cloud must have its ground classified (class 2 by default; change it in **LiDAR classes...**), for example with the [Magic surface](../../modulo-laser/buscar-puntos/superficie-magica/README.md). Without ground points, no tree is found.
* Works with an open point cloud file or with a project. The whole cloud is processed; the selection is ignored.
* In a project, the files are chosen after the dialog and are processed together, as a single cloud: the trees on the border between two files come out whole and only once. Each file is saved with the class of its points and with its objects (in the .OBJ next to it), which requires the Laser module license. The vector drawing, the DTM with objects and the report cover all the files. The points of all of them must fit in memory at the same time.
* Everything that is not ground and lies more than 0.3 m above it is treated as vegetation, whatever its class. If the cloud has buildings, fences, vehicles or noise next to the trees, crop the cloud or delete those points first.
* To tell the drone from the terrestrial sensor in a fusion, the points must have GPS time. See [Sensors](#sensors-terrestrial-drone-or-fusion).

## How to use it

Open the point cloud and click **Forest inventory**. Fill in the dialog and click **OK**. The tree search can be canceled from the progress bar.

When it finishes:

* The results window reports how many trees were found (and how many are doubtful), out of how many detected stems, how many points changed class, the main stand parameters of each zone and, with a field inventory, how many field trees were detected.
* The report opens in the browser.
* The vector drawing and the DTM with objects open in new, unsaved documents named *Forest inventory of …*. Saving them requires the Laser module license.
* The point classification and the objects can be undone (except in very large clouds, of which MDTopX keeps no copy). Not in a project: the files have already been saved.

## Output

Each output has its check box in the dialog. All are checked by default.

* **Point classification**: each tree point's class according to its component: stem (93), crown (5) or understory (3).
* **One object per tree**: the points of each tree form a point cloud object.
* **Vector with attribute table**: for each tree, the base, the DBH section, the axis, the crown footprint, the top and its number, with an attribute table of the trees.
* **DTM with objects**: the ground and, per tree, an object with its stem and its crown.
* **Report (HTML and CSV)**: a page with the results for the stand, for each tree and for the field inventory, and the same tables in CSV.

See [Output in detail](#output-in-detail).

## Dialog

<!-- screenshot pending: Forest inventory dialog -->

Numbers can be typed with a decimal comma or point. The dialog values are kept for next time.

### Field inventory (optional)

The trees measured in the field, to compare the trees in the cloud with them and to give each tree its species. Empty: no field inventory.

* **Trees**: a point file (for example, a .shp with its .dbf table) or a .csv. See [Field inventory](#field-inventory).
* **Species field**: the field of the .shp table that holds the species. Required with a .shp.
* **Only the 1st word**: only the first word of that field is used ("Sylvestris" from "Sylvestris 123").
* **Exclude**: the "species" that are not trees (vertices, setting-out bases…), separated by semicolons. For example, `Vertice;Base`. Case-insensitive.

**Only the 1st word** and **Exclude** apply only to a .shp, not to a .csv.

### Zones (optional)

The polygons of the inventory zones (quadrants, plots, stands). With zones, the stand parameters are given per zone and in total, and the field comparison is made only inside them.

* **Polygons**: a file with the closed polygons of the zones (for example, a .shp).
* **Name field (of a .shp)**: the field of the .shp table with each zone's name. Empty: the line code, if it has one, or *Zona 1*, *Zona 2*…

### Species and volume

* **Species of the trees without field tree**: the species of the trees that have no matched field tree (or of all of them, if there is no field inventory). Empty: those trees have no species and no species volume.
* **Volume equations (.csv; empty: the built-in ones)**: the volume equations per species. Empty: the volume tables of the IFN IV (Spanish National Forest Inventory) for Lugo. See [Species volume](#species-volume).

### Parameters

| Parameter | Default | Meaning |
|---|---|---|
| Minimum tree height (m) | 3 | A lower tree is **doubtful** (a stump, a broken tree, a duplicated stem or a tree whose crown was taken by another): it is reported apart and does not count in the stand. Up to 50 m. |
| Voxel (m) | 0.15 | The side of the voxels used to distribute the points among the trees. Up to 1 m. |
| Minimum slices | 2 | The slices with a circle a stem needs to be a tree (1 to 11). With fewer, more trees come out, but also more shrubs and branches taken for trees; with more, fewer false trees and some real tree is lost. |

* **Sensors**: how trees are searched for depending on the cloud's sensors: **Automatic (from the data)**, **Terrestrial or fusion (stems)** or **Drone only**. Automatic by default.
* **Add drone trees where there is no terrestrial data (mixed)**: in a fusion, adds the trees only the drone sees, at the edges of the terrestrial sensor's route. Checked by default. It cannot be checked with **Drone only**.

See [Sensors](#sensors-terrestrial-drone-or-fusion).

### Outputs

* **Point classification**, **One object per tree**, **Vector with attribute table**, **DTM with objects** and **Report (HTML and CSV)**: what is generated (see [Output](#output)). If none is checked, **OK** cannot be clicked.
* **Report folder**: where the report is written. Empty: in the `inventario_forestal` folder next to the cloud (or next to the project). Enabled only with the report checked.

### LiDAR classes..., Vector codes... and Default values

* **LiDAR classes...**: the class of each component. **Ground (input)** is the class of the cloud's ground points; the tool does not change it. **Stem**, **Crown** and **Understory** are the classes written. All four must be different from each other.

  | Component | Default |
  |---|---|
  | Ground (input) | 2 |
  | Stem | 93 |
  | Crown | 5 |
  | Understory | 3 |

* **Vector codes...**: the code of each vector element. See [Vector](#vector).
* **Default values**: restores the default values of the parameters, the sensors and the outputs. It does not change the files (field inventory, zones, equations and folder), nor the classes or the codes, which have their own button in their table.

## Sensors: terrestrial, drone or fusion

A terrestrial scanner or a SLAM measures many points on the trunks: almost every trunk gives circles in the slices. A drone measures the crown and very few trunk points. The tool searches for trees differently in each case.

**Which sensor each point has.** It is deduced from its GPS time: more than 10⁸ s is adjusted standard GPS time, that of a drone; between 10³ and 10⁸ s is GPS week time, that of a SLAM or a terrestrial scanner; less, or no time, unknown sensor. A drone recorded with GPS week time is taken for terrestrial. That is why the automatic mode does not decide by GPS time, but by the data. Each point's sensor is used for the mixed mode, for the point count per sensor in the trees table and for the **without drone** flag.

* **Automatic (from the data)**: if the stems with slices are fewer than half of the density peaks of the stem band (2 to 6 m above the ground), the cloud is treated as drone only; otherwise, as terrestrial or fusion.
* **Terrestrial or fusion (stems)**: only stems with slices are trees.
* **Drone only**: besides the stems with slices, the density peaks of the stem band are trees. With the drone alone almost no stem gives circles, but its points cluster around each trunk. The crown tops help give each tree its crown. The DBH of all trees is estimated from the height and the crown diameter, except for those with a circle measured by a terrestrial sensor. See [Tops and drone mode](#tops-and-drone-mode) and [Estimated DBH](#estimated-dbh).
* **Mixed mode** (check box): in a fusion, where the terrestrial sensor barely passed (the edges of its route), trunks are only seen from afar and give no slices, but the drone gives them a density peak. With the mixed mode, the density peaks of the drone points that are not from a stem with slices and have few terrestrial points around them (30 points per m³ or fewer) are trees too. Their crown also grows from the tops, and their DBH is estimated. It applies only if there are two sensors, each with 5 % or more of the stem band points, and if the crown sensor (the most common more than 8 m above the ground) is the minority in that band, as with a drone over a SLAM. If the terrestrial sensor also dominates the crown (for example, a terrestrial scanner with many stations), there is no mixed mode.

The **Método** (method) section of the report states which mode was used.

## How it is calculated

### Ground

A DTM of 0.5 m cells with the lowest ground-class point of each cell. Cells that stand out from their neighbors (shrubs) are removed, and the gaps are filled by interpolation. It gives each point's height above the ground. The slices and the distribution of points among trees use the height above the ground, not the elevation: on a slope, the upper tree does not take the crown of the lower one.

### Stems and DBH

* **Slices**: at 0.7, 1, 1.3, 1.6, 2, 2.5, 3, 3.5, 4, 5 and 6 m above the ground, 10 cm thick. In each one, a robust circle is fitted to each group of points. It is valid if it has 10 points or more, a radius of 4 to 60 cm, a root mean square error of 3 cm or less, and covers an arc of 90° or more. A group larger than 1.2 m is not a stem (crown, shrubs, wall).
* **Stem**: circles of neighboring slices whose centers are 30 cm or less apart are linked into a stem. The same trunk split in two because it lacks slices is joined again.
* **DBH**: the diameter of ONE circle fitted to all the points of the 1.30 ± 0.10 m band, from all sensors together. If there is none, the median of the slices is used.
* **Axis**: the line through the slice centers, which gives the tree's lean. The axis is used only with 4 slices or more (with two or three, one false slice twists it) and between the DBH height and the last slice; above and below, the stem continues vertically.

### Trees: distributing the points

The vegetation points are grouped into voxels (of the **Voxel** side, in height above the ground). Each voxel goes to the nearest stem along the shortest path through the voxels with points, starting at each stem's voxels between 0.5 and 2.5 m above the ground. This way each tree keeps the crown that is connected to its trunk, even when it touches the neighbor's.

**Height**: that of the tree's fifth highest point above the ground (removes stray points). That point is the **top**.

### Tops and drone mode

With the drone alone there are few stem points between the trunk band and the crown, and a tree whose trunk does not reach its crown would be left without it. So, in drone-only and mixed modes, the tops of the vegetation height model also distribute: each top gives its highest meter to the nearest stem in plan, 3 m away or less (the top is not right above the base). If a stem is left without any top (its own falls closer to the neighbor's base), it takes the nearest one from a stem that has two or more.

### Components: stem, crown and understory

* **Crown base**: from 1.30 m, the first of three consecutive 0.5 m bands with a quarter or more of their points outside the stem. If none is found, 2 m is used.
* **Stem**: below the crown base, the points less than 10 cm from the trunk.
* **Understory**: below the crown base, the points far from the trunk (more than 1 m beyond its radius). They are not part of the tree.
* **Crown**: the rest.

**Stem followed inside the crown.** The trunk continues inside the crown above its base. From the highest slice, the tool climbs in 0.5 m steps looking for the trunk's circle among the tree's points, in the direction of the axis and without exceeding the DBH thickness. Following stops after three consecutive heights without a circle. With it, the stem component rises to the last circle found, also inside the crown. The followed stem does not change the axis or the DBH; in the stem profile it is used only up to 60 % of the height.

### Crown

* **In plan**: the convex hull of the crown points. It gives the area, the diameter of the circle with the same area, and the north-south and east-west extents.
* **In 3D**: a mesh made of 1 m bands from the crown base to the top, with the reach of the points in 16 sectors. It gives the crown volume. It is the volume of what is seen: with few points it falls short, and with fewer than 10 crown points it is not calculated.

### Stem profile and geometric volume

The **stem profile** is the stem diameter at each height: that of the slices, the DBH at 1.30 m and, above, that of the followed stem's circles up to 60 % of the height (higher up they are not reliable: following stops at a branch whorl or in the crown noise). Above 1.30 m the diameter is never larger than the DBH and never grows with height: this removes whorls and branches.

The stem's **geometric volume**, over bark, is that of a cylinder from the ground to the first slice, truncated cones between the measured diameters and, from the last measured diameter to the top, the form

d = d<sub>u</sub>·((H − h)/(H − h<sub>u</sub>))<sup>0.75</sup>

with d<sub>u</sub> and h<sub>u</sub> the last measured diameter and its height, and H the tree height. With exponent 1 it would be a cone; with 0.75, the volume matches that of the volume tables.

### Species volume

Each tree's volume over bark by its species' equation (two-entry volume table):

V (m³) = factor·(a + b·d<sup>c</sup>·h<sup>e</sup>)

with d the DBH (in mm or cm) and h the total height in m.

**Built in**, the IFN IV volume tables over bark for Lugo (Vcc in dm³ = a + b·Dn²·Ht, with Dn in mm) for *Pinus sylvestris*, *Pinus pinaster*, *Pinus radiata* and *Eucalyptus nitens*. For *Pinus nigra*, which has no published table in Galicia, that of *P. sylvestris* is used, flagged as **approximate** (as the IFN does: that of a related species in the same province).

**Each tree's species** is that of the matched field tree or, if it has none, that of the dialog. It matches an equation if one of the two names contains the other, case-insensitive ("Sylvestris" matches "Pinus sylvestris"), and the tree then takes the equation's name. If it matches none, the tree has no species volume (**no table** flag). Check the spelling of the field species: a typo leaves the tree without a volume table.

**Custom equations**: a .csv separated by `;` (or `,`) with this header:

```
especie;a;b;c;e;unidad_d;factor;aproximada;fuente
```

`especie` (species), `a` and `b` are required. If missing, `c` is 2, `e` is 1, `unidad_d` (DBH unit) is `mm` (or `cm`), `factor` is 0.001 (dm³ to m³) and `aproximada` (approximate) is 0 (1 flags the volume as approximate). `fuente` (source) is a text shown in the report. The first equation that matches the species is used.

### Estimated DBH

When there is no reliable DBH circle (trees from a density peak and, in drone-only mode, those whose circle comes from the drone, which noise enlarges), the DBH is estimated from the total height H and the crown diameter Dc, in m:

DBH (cm) = a + b·H + c·Dc

or, without a crown, a1 + b1·H. The built-in relation is a generic one, fitted on the Riomao marteloscope (Lugo; *P. sylvestris* and *P. nigra*). With an estimated DBH, the stem profile is a cylinder up to 1.30 m and the 0.75 form up to the top. These trees carry the **estimated DBH** flag, and in the report their DBH is shown with `~`.

### Stand parameters

Per zone and in total, only with the trees that count (not the doubtful ones):

* **Trees/ha**, **basal area** (m²/ha), **mean DBH** and **quadratic mean diameter** (Dg).
* **Mean height**, **Lorey's height** (the mean weighted by basal area) and **Assmann dominant height** (H0: the mean height of the 100 thickest trees per hectare).
* **Geometric volume** and **species volume** per hectare (the latter, with the trees that have an equation).
* **Canopy cover** (FCC): the part of the area covered by the crowns in plan, in 25 cm cells.
* **Hart-Becking index** for square spacing: 100·√(10000/N)/H0, with N the trees per hectare.
* **Mean crown area**, the trees and basal area of each **species**, and the 5 cm **diameter classes**, centered on their value (the 10 class goes from 7.5 to 12.5 cm).

**Area**: that of the zones or, without zones, that of the 1 m cells with points.

## Output in detail

### Point classification

Each tree's points take the class of their component (stem, crown or understory). All other points keep their class: the ground, those less than 0.3 m above it, and vegetation that reaches no tree.

### One object per tree

The points of each tree (stem and crown) form a point cloud object, in the same order as the tree numbers. This links each point to its tree. The objects are viewed and edited with the [Edit objects](../editar-objetos/README.md) tools and are saved with the cloud.

### Vector

A new drawing with, for each tree:

| Element | Default code | What it is |
|---|---|---|
| Tree base | TRONCO | A point on the stem axis at ground level. |
| DBH section | SECTRO | The DBH circle, 1.30 m above the ground. |
| Tree axis | EJEARB | A line from the base to the top. |
| Crown footprint | COPA | The crown's convex hull, at the crown base elevation (without a base, at ground elevation). |
| Tree top | CIMA | A point at the top. |
| Tree number | ETQARB | A 0.5 m text next to the base. |
| Doubtful tree | ARBDUD | For doubtful trees, only the base (with this code) and the number. |
| Zone outline | ZONAIF | The polygon of each zone, on the ground (with a vertex every 0.5 m along each side, so that it follows the terrain). |

The codes are changed in **Vector codes...**.

All of a tree's elements are linked to its row in the **trees attribute table**, which goes with the drawing. Its fields are the same as those of the trees CSV:

| Field | Content |
|---|---|
| NUMERO | Tree number, from 1. |
| ESPECIE | Species (that of the field tree, the default one, or the name of the matching equation). |
| X, Y, Z | Tree base. |
| DAP_CM | DBH in cm. |
| DAP_MEDIDO | 1 if the DBH is that of the 1.30 m band circle. |
| DAP_ESTIM | 1 if the DBH is estimated. With both at 0, the DBH is the median of the slices. |
| ALTURA | Height in m. |
| BASE_COPA | Crown base height in m (empty if not found). |
| DCOPA_NS, DCOPA_EO | North-south and east-west crown extent, in m. |
| DCOPA | Diameter of the circle with the same area as the crown, in m. |
| AREA_COPA | Crown area in plan, in m². |
| VOL_COPA | Crown volume, in m³. |
| AB_M2 | Basal area, in m². |
| ESBELTEZ | Slenderness: height / DBH (both in m). |
| INCLIN | Stem lean from the vertical, in degrees. |
| VOL_GEO | Stem geometric volume, in m³. |
| VOL_ESP | Species volume, in m³. |
| ZONA | Zone containing the base. |
| PIE_CAMPO | Identifier of the matched field tree. |
| X_CIMA, Y_CIMA, Z_CIMA | Tree top. |
| PTS_DRON, PTS_TERR, PTS_OTROS | Tree points from each sensor (drone, terrestrial, other). |
| DUDOSO | 1 if the tree is doubtful. |
| BORDE | 1 if the tree reaches the edge of the data. |
| SIN_DRON | 1 if the tree has no drone points. |
| TARIFA | `ok`, `aprox` (approximate equation) or `sin` (no equation). |

### DTM with objects

A new digital model with:

* **The ground**: the triangulation of the tool's 0.5 m DTM, where there are data.
* **One object per tree** with two meshes: the stem (a 12-sided trunk following the stem profile, from 0.3 m below the ground to the top) and the crown (the band mesh). Each object is linked to its row of the trees table, which goes with the model, and carries the crown area as its area and the sum of the crown volume and the stem geometric volume as its volume.

### Report

In the chosen folder or, if empty, in the `inventario_forestal` folder next to the cloud or the project (created if it does not exist). The files are named after the cloud or the project, with these endings:

| File | Content |
|---|---|
| `_inventario.html` | The report page. It opens in the browser at the end. |
| `_inventario_arboles.csv` | One tree per line, with the attribute table fields. |
| `_inventario_masa.csv` | The stand parameters, per zone and in total. |
| `_inventario_especies.csv` | Trees and basal area per species, per zone. |
| `_inventario_clases.csv` | The diameter classes, per zone. |
| `_inventario_campo.csv` | With a field inventory: each field tree with its tree (`acierto` match, `omision` omission, or `fuera` if outside the zones) and the trees without a field tree (`comision` commission). |

The CSV files use a semicolon separator, a decimal point and UTF-8.

The page has: a summary (trees, area, trees/ha, basal area, Dg, H0, geometric volume and canopy cover), the stand parameters per zone, the species, the diameter distribution, a height-diameter diagram, a map with the crowns and the bases (hover for each tree's data), the field inventory comparison, the trees table with their flags, and the method, with the equations used.

If the cloud is not saved to disk and no folder has been chosen, the report is not written and a warning is shown.

### Field inventory

**A .shp** (or any point file MDTopX reads): each point is a field tree. The species comes from the **Species field** of its .dbf table; the field tree's identifier is its record number.

**A .csv** with a header and a `;` (or `,`) separator: the columns are recognized by name, case-insensitive. `x` and `y` are required; `especie` (species), `dap` (DBH, in cm), `altura` (height, in m) and `id` are optional. For example:

```
x;y;especie;dap;altura;id
612345,20;4765432,10;Pinus sylvestris;32,5;19,4;101
```

**Matching.** A field tree and a tree are matched if they are 1.5 m or less apart, from nearest to farthest and one to one. Before that, the field-to-cloud offset of each zone (the median of the matched pairs, over several passes) is calculated and removed: field positions often have a different offset in each plot. Matched trees take the species of the field tree.

The report gives, per zone and in total:

* **Matches**: field trees with a tree. **Omissions**: field trees without a tree.
* **Commissions**: trees that count, inside the zones (without zones, inside the hull of the field trees), without a field tree.
* **Detection**: matches / field trees. **Precision**: matches / (matches + commissions).
* The field-to-cloud offset of each zone and the median distance between field tree and tree.
* If the field data include DBH or height, the cloud − field difference (median and root mean square error).

With zones, only the field trees inside some zone are evaluated.

## Quality flags of each tree

Each tree carries some flags, in the report's trees table and in the attribute table. The report shows them in Spanish (in brackets):

| Flag | Meaning |
|---|---|
| Measured DBH | The DBH is that of the 1.30 m band circle. This is the normal case; it is not shown in the report's flags column. |
| DBH from the slices (`DAP de las rodajas`) | There was no circle in the 1.30 m band: the DBH is the median of the slices. In the report, the DBH is shown with `*`. |
| Estimated DBH (`DAP estimado`) | The DBH comes from the height and the crown, not from a measurement. In the report, with `~`. |
| Doubtful (`dudoso`) | Lower than the minimum tree height. Does not count in the stand. |
| Edge (`borde`) | The base or the crown reaches the edge of the data (1 m or less from an area without points): the tree may be cut. |
| Without drone (`sin dron`) | With known sensors, the tree has no drone point: its height may fall short (a terrestrial sensor rarely sees the top). |
| Approximate table (`tarifa aproximada`) | The species volume comes from an approximate equation (from another species or region). |
| No table (`sin tarifa`) | There is no equation for its species, or it has no species. |

## Results in a real case

On the Riomao marteloscope (Lugo; *P. sylvestris* and *P. nigra*), with a drone and a SLAM:

* With the drone alone, the DBH circle comes out 7.7 cm larger (median) because of noise. That is why the DBH is estimated in drone-only mode. The built-in relation has a root mean square error of 4.9 cm (5.6 cm with the height only).
* The geometric volume is close to that of the volume tables: with the drone alone, 358 m³/ha against 356; with the fusion, 398 m³/ha against 367.
* The stem followed inside the crown reaches 12 m (median); without it, the crown base cut the stem at 8.7 m.
* In the fusion, the mixed mode recovers 47 of the 58 trees the drone saw outside the area well covered by the SLAM.

## Limitations

* The ground must be classified.
* Everything that is not ground counts as vegetation (see [Before you start](#before-you-start)).
* Processes the whole cloud. In a project, the points of all the chosen files must fit in memory at the same time.
* The species comes only from the field inventory or the default species; it is not deduced from the cloud.
* The estimated DBH relation is a generic one, fitted on a pine stand. In other stands or species it may be biased, and it cannot be changed from the dialog.
* The followed stem stops if the trunk deviates more than about 11° from the axis direction. With a trunk with few points inside a dense crown, it may follow a few false circles. It only affects the point classes and the stem profile.
* The assignment of tops to stems without a top depends on the order of the stems. A low false tree (a shrub with a density peak) can receive a top and take part of the crown of a neighbor with two bulges.
* Field matching pairs the nearest first; it does not search for the best global matching. A field tree next to a zone boundary gets the offset of its own zone even if its tree is in the neighboring one.
* The crown volume is that of what is seen: with few points it falls short.
* The per-sensor point columns and the **without drone** flag depend on GPS time: a drone with GPS week time counts as terrestrial.
* The report and the CSV files are written in Spanish.
